extends KinematicBody2D

var limite
var direccion = Vector2(0,0)
var arriba = Vector2(0,-1)
var timer = Timer.new()
var duracion: int
var aparece: bool = false
onready var Barra: ProgressBar = $ProgressBar
var presionar: bool = false
var Valor_histeresis: int = 80

func _ready():
	limite=get_viewport_rect().size
	add_child(timer)
	timer.set_one_shot(false)
	timer.set_wait_time(duracion)
	timer.connect("timeout", self, "cooldown_finalizo")
	timer.start()

func _physics_process(_delta):
	bar_animation(_delta)
	#mover()
	#move_and_slide(direccion,arriba)
	#animar()

func mover():
	if Input.is_action_pressed("ui_left"):
		direccion.x=-Gamehandler.Velocidad
	elif Input.is_action_pressed("ui_right"):
		direccion.x=+Gamehandler.Velocidad
	else:
		direccion.x=0

func animar():
	if direccion.x<0:
		$AnimatedSprite.flip_h=true
		$AnimatedSprite.play("caminar")
		$AnimatedSprite.playing = true

	if direccion.x>0:
		$AnimatedSprite.flip_h=false
		$AnimatedSprite.play("caminar")
		$AnimatedSprite.playing = true

	if direccion.x==0:
		$AnimatedSprite.play("caminar")
		$AnimatedSprite.playing = false

func bar_animation(delta):
	var derecho: bool = true
	if derecho:
		Barra.value = Barra.value + 1
		if Barra.value == 100:
			derecho = false
		elif Barra.value == Valor_histeresis:
			presionar = true
	else:
		Barra.value = Barra.value - 1
		if Barra.value == 0:
			derecho = true
