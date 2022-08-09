extends Node2D

#Duracion de animacion = 1.6

export (float) var duracion = 1.6

var timer = Timer.new()
var aparece = false

func _ready():
	$Player_Arcade/Camera2D/Explosion/AnimatedSprite.playing = true
	$Player_Arcade/Camera2D/Explosion.visible = false
	add_child(timer)
	timer.set_one_shot(false)
	timer.set_wait_time(duracion)
	timer.connect("timeout", self, "cooldown_finalizo")
	timer.start()
	
func _process(delta):
	if aparece:
		$Player_Arcade/Camera2D/Explosion.visible = true
		pedir_presion()
		aparece = false
	else:
		pass

func cooldown_finalizo():
	aparece = true

func pedir_presion():
	if Input.is_action_pressed("ui_accept"):
		$Player_Arcade.direccion.x += 100
	else:
		$Player_Arcade.direccion.x -= 100
