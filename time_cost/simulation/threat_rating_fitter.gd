class_name ThreatRatingFitter
extends RefCounted

const DEFAULT_REGULARIZATION := 1.0
const DEFAULT_MAX_ITERATIONS := 100
const DEFAULT_TOLERANCE := 0.000001
const ELO_POINTS_PER_LOG10 := 400.0
const PROVISIONAL_CENTER := 1000.0


# Fits a regularized Bradley-Terry model from pairwise decisive win counts.
# Each matchup dictionary must contain:
#   a: StringName/String, b: StringName/String, a_wins: int, b_wins: int
# The Gaussian L2 prior makes complete-separation matchups finite.
func fit(matchups: Array, regularization: float = DEFAULT_REGULARIZATION) -> Dictionary:
	if regularization <= 0.0:
		return {"configuration_error": "regularization must be positive"}

	var ids: Array[StringName] = []
	var seen := {}
	for matchup in matchups:
		var a := StringName(matchup.get("a", &""))
		var b := StringName(matchup.get("b", &""))
		var a_wins := int(matchup.get("a_wins", -1))
		var b_wins := int(matchup.get("b_wins", -1))
		if a.is_empty() or b.is_empty() or a == b or a_wins < 0 or b_wins < 0 or a_wins + b_wins <= 0:
			return {"configuration_error": "invalid Bradley-Terry matchup"}
		for id in [a, b]:
			if not seen.has(id):
				seen[id] = true
				ids.append(id)
	if ids.size() < 2:
		return {"configuration_error": "at least two combatants are required"}

	ids.sort_custom(func(left: StringName, right: StringName) -> bool: return String(left) < String(right))
	var index := {}
	for i in range(ids.size()):
		index[ids[i]] = i

	var theta: Array[float] = []
	theta.resize(ids.size())
	theta.fill(0.0)
	var converged := false
	var iterations := 0

	for iteration in range(DEFAULT_MAX_ITERATIONS):
		iterations = iteration + 1
		var gradient: Array[float] = []
		gradient.resize(ids.size())
		gradient.fill(0.0)
		var information := _zero_matrix(ids.size())

		for matchup in matchups:
			var a := StringName(matchup.a)
			var b := StringName(matchup.b)
			var i: int = index[a]
			var j: int = index[b]
			var a_wins := int(matchup.a_wins)
			var b_wins := int(matchup.b_wins)
			var total := a_wins + b_wins
			var p := _logistic(theta[i] - theta[j])
			var score := float(a_wins) - float(total) * p
			var weight := float(total) * p * (1.0 - p)

			gradient[i] += score
			gradient[j] -= score
			information[i][i] += weight
			information[j][j] += weight
			information[i][j] -= weight
			information[j][i] -= weight

		for i in range(ids.size()):
			gradient[i] -= regularization * theta[i]
			information[i][i] += regularization

		var step := _solve_linear_system(information, gradient)
		if step.is_empty():
			return {"configuration_error": "Bradley-Terry information matrix could not be solved"}

		var max_change := 0.0
		for i in range(ids.size()):
			theta[i] += step[i]
			max_change = maxf(max_change, absf(step[i]))
		if max_change < DEFAULT_TOLERANCE:
			converged = true
			break

	var mean_theta := 0.0
	for value in theta:
		mean_theta += value
	mean_theta /= theta.size()

	# Centering changes only the arbitrary additive origin, never pairwise predictions.
	for i in range(theta.size()):
		theta[i] -= mean_theta

	var elo_scale := ELO_POINTS_PER_LOG10 / log(10.0)
	var ratings := {}
	var strengths := {}
	for i in range(ids.size()):
		var id := ids[i]
		strengths[String(id)] = theta[i]
		ratings[String(id)] = PROVISIONAL_CENTER + theta[i] * elo_scale

	var diagnostics := _diagnostics(matchups, index, theta)
	return {
		"model": "regularized_bradley_terry_v1",
		"regularization": regularization,
		"converged": converged,
		"iterations": iterations,
		"provisional_center": PROVISIONAL_CENTER,
		"elo_points_per_decade": ELO_POINTS_PER_LOG10,
		"strengths": strengths,
		"ratings": ratings,
		"diagnostics": diagnostics,
	}


func _diagnostics(matchups: Array, index: Dictionary, theta: Array[float]) -> Dictionary:
	var weighted_log_loss := 0.0
	var total_games := 0
	var max_abs_residual := 0.0
	var pair_rows := []
	for matchup in matchups:
		var a := StringName(matchup.a)
		var b := StringName(matchup.b)
		var a_wins := int(matchup.a_wins)
		var b_wins := int(matchup.b_wins)
		var total := a_wins + b_wins
		var observed := float(a_wins) / total
		var predicted := _logistic(theta[index[a]] - theta[index[b]])
		var clipped := clampf(predicted, 0.000000001, 0.999999999)
		weighted_log_loss += -(
			float(a_wins) * log(clipped)
			+ float(b_wins) * log(1.0 - clipped)
		)
		total_games += total
		var residual := observed - predicted
		max_abs_residual = maxf(max_abs_residual, absf(residual))
		pair_rows.append({
			"a": String(a),
			"b": String(b),
			"observed_a_win_rate": observed,
			"predicted_a_win_rate": predicted,
			"residual": residual,
		})
	return {
		"games": total_games,
		"log_loss": weighted_log_loss / total_games if total_games > 0 else 0.0,
		"max_abs_pair_residual": max_abs_residual,
		"pairs": pair_rows,
	}


func _logistic(value: float) -> float:
	if value >= 0.0:
		var z := exp(-value)
		return 1.0 / (1.0 + z)
	var z := exp(value)
	return z / (1.0 + z)


func _zero_matrix(size: int) -> Array:
	var matrix := []
	for _row in range(size):
		var values: Array[float] = []
		values.resize(size)
		values.fill(0.0)
		matrix.append(values)
	return matrix


func _solve_linear_system(matrix: Array, vector: Array[float]) -> Array[float]:
	var size := vector.size()
	var augmented := []
	for row_index in range(size):
		var row: Array[float] = []
		row.resize(size + 1)
		for column_index in range(size):
			row[column_index] = float(matrix[row_index][column_index])
		row[size] = vector[row_index]
		augmented.append(row)

	for pivot_index in range(size):
		var best_row := pivot_index
		var best_value := absf(augmented[pivot_index][pivot_index])
		for candidate in range(pivot_index + 1, size):
			var candidate_value := absf(augmented[candidate][pivot_index])
			if candidate_value > best_value:
				best_value = candidate_value
				best_row = candidate
		if best_value < 0.000000000001:
			return []
		if best_row != pivot_index:
			var swap_row = augmented[pivot_index]
			augmented[pivot_index] = augmented[best_row]
			augmented[best_row] = swap_row

		var pivot: float = float(augmented[pivot_index][pivot_index])
		for column_index in range(pivot_index, size + 1):
			augmented[pivot_index][column_index] /= pivot

		for row_index in range(size):
			if row_index == pivot_index:
				continue
			var factor: float = float(augmented[row_index][pivot_index])
			if absf(factor) < 0.000000000001:
				continue
			for column_index in range(pivot_index, size + 1):
				augmented[row_index][column_index] -= factor * augmented[pivot_index][column_index]

	var solution: Array[float] = []
	solution.resize(size)
	for i in range(size):
		solution[i] = augmented[i][size]
	return solution
