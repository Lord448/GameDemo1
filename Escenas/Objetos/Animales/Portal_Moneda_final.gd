extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Portal_Moneda_final_body_entered(body):
	if body.name == "Player":
		if get_tree().change_scene("res://Escenas/Niveles/Congrats.tscn") != OK:
			print("Ha ocurrido un error inesperado al cargar la escena")
	if body.name == "Girl_Player":
		if get_tree().change_scene("res://Escenas/Niveles/Congrats.tscn") != OK:
			print("Ha ocurrido un error inesperado al cargar la escena")
