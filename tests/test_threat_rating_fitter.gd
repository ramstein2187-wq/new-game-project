extends SceneTree

func _init() -> void:
	var failures := []

	var equal := ThreatRatingFitter.new().fit([
		{"a": &"a", "b": &"b", "a_wins": 50, "b_wins": 50},
	])
	_expect(not equal.has("configuration_error"), "Equal fit succeeds", failures)
	_expect(equal.converged, "Equal fit converges", failures)
	_expect(absf(float(equal.ratings.a) - float(equal.ratings.b)) < 0.001, "Equal results produce equal ratings", failures)

	var directional := ThreatRatingFitter.new().fit([
		{"a": &"a", "b": &"b", "a_wins": 75, "b_wins": 25},
		{"a": &"a", "b": &"c", "a_wins": 90, "b_wins": 10},
		{"a": &"b", "b": &"c", "a_wins": 75, "b_wins": 25},
	])
	_expect(directional.converged, "Directional fit converges", failures)
	_expect(float(directional.ratings.a) > float(directional.ratings.b), "A ranks above B", failures)
	_expect(float(directional.ratings.b) > float(directional.ratings.c), "B ranks above C", failures)

	var separated := ThreatRatingFitter.new().fit([
		{"a": &"winner", "b": &"loser", "a_wins": 400, "b_wins": 0},
	])
	_expect(separated.converged, "Regularized complete separation converges", failures)
	_expect(is_finite(float(separated.ratings.winner)), "Separated winner rating is finite", failures)
	_expect(is_finite(float(separated.ratings.loser)), "Separated loser rating is finite", failures)
	_expect(float(separated.ratings.winner) > float(separated.ratings.loser), "Separated result preserves order", failures)

	if failures.is_empty():
		print("PASS: regularized Bradley-Terry threat rating fitter")
		quit(0)
	else:
		for failure in failures:
			push_error(failure)
		quit(1)


func _expect(condition: bool, message: String, failures: Array) -> void:
	if not condition:
		failures.append(message)
