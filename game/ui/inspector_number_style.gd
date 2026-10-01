class_name InspectorNumberStyle
extends RefCounted

# Presentation roles only. Ordinary positive values never pass through modifier_tone.
enum Tone { NEUTRAL, POSITIVE, NEGATIVE, RESULT }
const NEUTRAL := Color("#d7e7f5")
const POSITIVE := Color("#7fd38a")
const NEGATIVE := Color("#e07a7a")
const RESULT := Color("#eef3f7")

static func modifier_tone(value: float) -> Tone:
	if value > 0.0:
		return Tone.POSITIVE
	if value < 0.0:
		return Tone.NEGATIVE
	return Tone.NEUTRAL

static func span(text: String, tone: Tone = Tone.NEUTRAL) -> Dictionary:
	return {"text": text, "tone": tone}

static func color_for(tone: Tone) -> Color:
	match tone:
		Tone.POSITIVE: return POSITIVE
		Tone.NEGATIVE: return NEGATIVE
		Tone.RESULT: return RESULT
	return NEUTRAL

static func plain_text(spans: Array) -> String:
	var result := ""
	for part: Dictionary in spans:
		result += part.text
	return result
