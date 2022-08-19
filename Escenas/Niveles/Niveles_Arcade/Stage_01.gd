extends Node2D

#Duracion de animacion = 1.6

export (float) var duracion = 1.6

var timer = Timer.new()
var aparece = false

func _ready():
	add_child(timer)
	timer.set_one_shot(false)
	timer.set_wait_time(duracion)
	timer.connect("timeout", self, "cooldown_finalizo")
	timer.start()
	
func _process(delta):
	if aparece:
		pedir_presion()
		aparece = false
	else:
		pass

func cooldown_finalizo():
	aparece = true

func pedir_presion():
	if Input.is_action_pressed("ui_accept"):
		pass
		#$Player_Arcade.direccion.x += 100
	else:
		pass
		#$Player_Arcade.direccion.x -= 100
