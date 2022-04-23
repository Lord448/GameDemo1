extends KinematicBody2D

var limite
var velocidad = 500
var direccion = Vector2(0,0)
var arriba=Vector2(0,-1)

func _ready():
	limite=get_viewport_rect().size

func _physics_process(delta):
	mover()
	move_and_slide(direccion,arriba)
	animar()

func mover():
	if Input.is_action_pressed("ui_left"):
		direccion.x=-velocidad
	elif Input.is_action_pressed("ui_right"):
		direccion.x=+velocidad
	else:
		direccion.x=0


func animar():
	if direccion.x>0:
		$AnimatedSprite.flip_h=false
		$AnimatedSprite.play("caminar")
		$AnimatedSprite.playing = true

	if direccion.x<0:
		$AnimatedSprite.flip_h=true
		$AnimatedSprite.play("caminar")
		$AnimatedSprite.playing = true

	if direccion.x==0:
		$AnimatedSprite.play("caminar")
		$AnimatedSprite.playing = false
