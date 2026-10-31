class_name MicrohistoryArt
extends RefCounted
## Tiny evidence marks on the existing 16px atlas, not a new asset pipeline.
const MARKS := {
	"tracks": ["   aa           ","   aa           ","     bb         ","     bb         ","        aa      ","        aa      ","          bb    ","          bb    "],
	"loop_tracks": ["    aa  bb      ","    aa  bb      ","  bb      aa    ","  bb      aa    ","    aa  bb      ","    aa  bb      "],
	"furrow": ["  a  a  a  a    ","  b  b  b  b    ","  a  a  a  a    ","  b  b  b  b    ","  a  a  a  a    ","  b  b  b  b    "],
	"bowl": ["     aaaaa      ","    abbcbba     ","    abbbbba     ","     abbba      ","      aaa       "],
	"rope": ["   aa           ","  a  aaaa       ","   a     a      ","    aaaa a      ","        a       ","    aaaa        "],
	"restraint": ["  aaa     aaa   "," a   abbba   a  "," a   a   a   a  ","  aaa     aaa   "],
	"scratch": ["    a  a a      ","   a  a a       ","  a  a a        ","    a a         ","   a a          "],
	"tally": ["   a a a a      ","   a a a a      ","  aaaaaaaa      ","   a a a a      "],
	"dig": ["    aaaaaa      ","  aabbbbbbaa    "," aabccccccbaa   ","  abcccccba     ","   aabbbba      ","     aaaa       "],
	"stain": ["     aa a       ","   aabbbaa      ","    abbcbaa     ","  a abbbbaa     ","      aa a      "],
	"tools": ["  aaa     aa    ","  aba    aaba   ","  aaa     aa    ","   c      c     ","   c      c     ","   c      c     ","   c      c     "],
	"beam": ["  aaaaaaaa      ","  bbbbbbbb      ","   c     c      ","   c     c      ","   c     c      ","  cc     cc     "],
	"snare": ["   aa    aa     ","  a  abba  a    ","  a   bb   a    ","   a abba a     ","    aaaaaa      ","      cc        "],
	"bones": ["  aa       aa   ","   aaaaaaaa     ","  aa       aa   ","      aa        ","     a  a       ","      aa        "],
	"grave": ["      aaa       ","      aba       ","      aaa       ","   aaaaaaaa     ","  abbbbbbbba    ","   abbbbbba     ","    aaaaaa      "]}

static func draw(canvas: CanvasItem,o: Dictionary,cell: Vector2i,tint: Color) -> void:
	var kind: String=o.evidence_kind
	if kind in ["remains","outside_remains"] and o.condition != "fresh": kind="bones"
	var palette: Array[Color]=[Color("a49b7a"),Color("665e49"),Color("393e38")]
	if kind in ["empty_bowl","broken_vessel","empty_vessel"]: kind="bowl"
	if kind in ["cut_rope"]: kind="rope"
	if kind in ["pry_marks"]: kind="scratch"
	if kind in ["scuff","soot","sample_stain"]: kind="stain"
	if kind in ["braced_beam"]: kind="beam"
	if kind in ["broken_tool"]: kind="tools"
	if kind in ["animal_bones"]: kind="bones"
	if not MARKS.has(kind): ExplorationArt.sprite(canvas,o.sprite,cell,tint); return
	if kind in ["tracks","loop_tracks","furrow","dig","stain"]: palette=[Color("847655"),Color("514936"),Color("34382e")]
	if kind in ["tools","restraint","snare"]: palette=[Color("b4c1c0"),Color("5c7477"),Color("aa8051")]
	if kind in ["bones"]: palette=[Color("d0c4a1"),Color("a69b7f"),Color("635e52")]
	var pattern: Array=MARKS[kind]
	for y in range(pattern.size()):
		for x in range(pattern[y].length()):
			var color_index: int="abc".find(pattern[y][x])
			if color_index>=0: canvas.draw_rect(Rect2(Vector2(cell*16+Vector2i(x,y+4)),Vector2.ONE),palette[color_index]*tint)
