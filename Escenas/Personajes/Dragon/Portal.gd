extends Area2D

export (String) var escena

func _on_Area2D_body_entered(body):
	
	if body.name == "Player":
		if get_tree().change_scene("res://Escenas/Niveles/"+escena+".tscn") != OK:
			print("Ha ocurrido un error inesperado al cargar la escena")
	if body.name == "Girl_Player":
		if get_tree().change_scene("res://Escenas/Niveles/"+escena+".tscn") != OK:
			print("Ha ocurrido un error inesperado al cargar la escena")
