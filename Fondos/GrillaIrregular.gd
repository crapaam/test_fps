extends Node2D


var p
var l 
export (Color) var color_lineas
const DESP = 30


func _ready():
	
	for y in range(0, 1200, 100):
		l = Line2D.new()
		l.width = 2
		l.default_color = color_lineas
		p = PoolVector2Array()
		for x in range(0, 4200, 100):
			p.append(Vector2(x + (randi() % DESP - (DESP / 2)), y + (randi() % DESP - (DESP / 2))))
		l.points = p
		add_child(l)
	
	for x in range(0, 4200, 100):
		l = Line2D.new()
		l.width = 2
		l.default_color = color_lineas
		p = PoolVector2Array()
		for y in range(0, 1200, 100):
			p.append(Vector2(x + (randi() % DESP - (DESP / 2)), y + (randi() % DESP - (DESP / 2))))
		l.points = p
		add_child(l)
