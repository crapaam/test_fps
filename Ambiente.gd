extends WorldEnvironment


var GlowEnc = preload("res://Ambiente_con_glow.tres")
var GlowApa = preload("res://Ambiente_sin_glow.tres")
var efecto_glow_encendido = true


func _ready():

	actualiza_efecto()


func actualiza_efecto():
	
	if efecto_glow_encendido:
		self.environment = GlowEnc
	else:
		self.environment = GlowApa


func cambia_efecto():
	
	efecto_glow_encendido = !efecto_glow_encendido
	actualiza_efecto()
