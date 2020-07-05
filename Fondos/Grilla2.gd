extends Node2D


var p
var l 


func _ready():
	
	for y in range(0, 1200, 100):
		l = Line2D.new()
		l.width = 2
		p = PoolVector2Array()
		for x in range(0, 2100, 100):
			p.append(Vector2(x, y))
		l.points = p
		add_child(l)
	
	for x in range(0, 2100, 100):
		l = Line2D.new()
		l.width = 2
		p = PoolVector2Array()
		for y in range(0, 1200, 100):
			p.append(Vector2(x, y))
		l.points = p
		add_child(l)
