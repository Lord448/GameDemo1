extends KinematicBody2D

export (Vector2) var direccion= Vector2(0,0)
var limite
var arriba=Vector2(0,-1)

func _ready():
	limite=get_viewport_rect().size
	direccion.x = Gamehandler.Velocidad

func _physics_process(delta):
	mover()
	move_and_slide(direccion,arriba)
	animar()

func mover():
	if Input.is_action_just_pressed("ui_left"):
		direccion.x -= 100
	elif Input.is_action_just_pressed("ui_right"):
		direccion.x += 100
		
	if direccion.x > 500:
		direccion.x = 500
	elif direccion.x <0:
		direccion.x = 0


func animar():
	if direccion.x>0:
		$AnimatedSprite.flip_h=true
		$AnimatedSprite.play("caminar")

	if direccion.x<0:
		$AnimatedSprite.flip_h=false
		$AnimatedSprite.play("caminar")

	if direccion.x==0:
		$AnimatedSprite.playing = false
		
func cooldown_finalizo():
	pass

