extends Node2D


var speed = 60
const direction = Vector2.RIGHT
var last_usec: int = 0

func _ready():
	var delta_fn: FuncRef = funcref(self, "get_delta")
	$PerfMonitor.add_funcref_monitor(delta_fn, [], "micros/frame")

func get_delta() -> int:
	var usec_delta = OS.get_ticks_usec() - last_usec
	last_usec += usec_delta
	return usec_delta

func _physics_process(delta):
	
	$Player.position += direction * speed * delta
	$GUI/Label.text = str(speed)


func _on_SlowBtn_pressed():
	
	speed -= 60


func _on_FastBtn_pressed():
	
	speed += 60


func _on_GlowBtn_pressed():
	
	$Ambiente.cambia_efecto()
