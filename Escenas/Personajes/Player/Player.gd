extends KinematicBody2D

#Others
var contador: int = 0 
#Onready nodes
onready var lblCont: Label = $Contador
onready var lblpresion: Label = $Presion
onready var Barra: ProgressBar = $ProgressBar
onready var camara: Camera2D = $Camera2D
onready var victoria: Label = $Victoria
onready var salir: Label = $Salir
onready var personaje: String = Gamehandler.personaje
#Physics
var limite
var direccion = Vector2(0,0)
var arriba = Vector2(0,-1)
var Velocidad = Gamehandler.Velocidad
#Timers
var timer = Timer.new()
var timer_restore = Timer.new()
var final_timer = Timer.new()
var duracion
var delay_time = 5
#Booleans
var aparece: bool = false
var presionar: bool = false
var giro: bool = true

func _ready():
	salir.visible = false
	victoria.visible = false
	limite=get_viewport_rect().size
	Calculo_tiempos()
	#First timer
	add_child(timer)
	timer.set_one_shot(false)
	timer.set_wait_time(duracion)
	timer.connect("timeout", self, "bar_animation")
	timer.start()
	#Second timer
	add_child(timer_restore)
	timer_restore.set_one_shot(true)
	timer_restore.set_wait_time(delay_time)
	timer_restore.connect("timeout", self, "restore_vel")
	#Third timer
	add_child(final_timer)
	final_timer.set_one_shot(false)
	final_timer.set_wait_time(0.005)
	final_timer.connect("timeout", self, "final_anim")

func _physics_process(_delta):
	direccion.x = Velocidad
	move_and_slide(direccion, arriba)
	if presionar:
		pedir_presion()
	elif Gamehandler.Presiones == contador:
		final_anim()
	else:
		lblpresion.visible = false
	animar()

func pedir_presion():
	lblpresion.visible = true
	if Input.is_action_pressed("ui_accept"):
		contador = contador + 1
		giro = false
		presionar = false
		lblCont.text = "Presiones: " + String(contador)
	else:
		if Barra.value == 100:
			Velocidad -= 100
			if Velocidad <= 0:
				Velocidad = 0
			presionar = false
			timer_restore.start()
		else:
			pass

func animar():
	
		if direccion.x<0:
			$AnimatedSprite.flip_h=true
			$AnimatedSprite.play(Gamehandler.personaje)
			$AnimatedSprite.playing = true

		if direccion.x>0:
			$AnimatedSprite.flip_h=false
			$AnimatedSprite.play(Gamehandler.personaje)
			$AnimatedSprite.playing = true

		if direccion.x==0:
			$AnimatedSprite.play(Gamehandler.personaje)
			$AnimatedSprite.playing = false

func bar_animation():
	if giro:
		Barra.value = Barra.value + 1
		if Gamehandler.Dificultad == "Dificil":
			Barra.value = Barra.value + 1
		if Gamehandler.Dificultad == "Imposible":
			Barra.value = Barra.value + 4
		if Barra.value == 100:
			giro = false
		elif Barra.value == Gamehandler.Histeresis:
			presionar = true
	else:
		Barra.value = Barra.value - 1
		if Barra.value == 0:
			giro = true

func restore_vel():
	if Velocidad <= Gamehandler.Velocidad / 2:
		Velocidad = Gamehandler.Velocidad
	else:
		Velocidad += 100
		if Velocidad >= Gamehandler.Velocidad:
			Velocidad = Gamehandler.Velocidad

func final_anim():
	lblCont.visible = false
	lblpresion.visible = false
	Barra.visible = false
	victoria.visible = true
	camara.current = false
	victoria.margin_left -= 5 #384
	if victoria.margin_left <= 140:
		victoria.margin_left = 140
	Velocidad -= 8
	if Velocidad <= 0:
		Velocidad = 0
		salir.visible = true
		if Input.is_action_pressed("ui_accept"):
			if get_tree().change_scene("res://Escenas/Menus/Modals_Menu.tscn") != OK:
				print("Ha ocurrido un error inesperado al cargar la escena")
	timer.stop()
	timer_restore.stop()

func Calculo_tiempos():
	if Gamehandler.Dificultad == "Facil" or Gamehandler.Dificultad == "Dificil":
		duracion = 0.025
	else:
		duracion = 0.005
	

