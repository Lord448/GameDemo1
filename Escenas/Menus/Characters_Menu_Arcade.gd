extends Node2D

func _on_Characters_Menu_Arcade_ready():
	$Advertencia.visible = false
	Gamehandler.personaje = ""

func _on_Boy_Player_pressed():
	Gamehandler.personaje = "boy"
	$"Control/Girl Player".pressed = false
	$Advertencia.visible = false

func _on_Girl_Player_pressed():
	Gamehandler.personaje = "girl"
	$"Control/Boy Player".pressed = false
	$Advertencia.visible = false

func _on_Aceptar_pressed():
	if Gamehandler.personaje == "":
		$Advertencia.visible = true
	else:
		if Gamehandler.modo == "Arcade":
			get_tree().change_scene("res://Escenas/Menus/Stage_menu.tscn")
		elif Gamehandler.modo == "Historia":
			get_tree().change_scene("res://Escenas/Niveles/Level.tscn")
		else:
			pass
		

func _on_Regresar_pressed():
	if Gamehandler.modo == "Arcade":
		get_tree().change_scene("res://Escenas/Menus/Arcade_menu.tscn")
	elif Gamehandler.modo == "Historia":
		get_tree().change_scene("res://Escenas/Menus/Modals_Menu.tscn")
	else:
		pass
	
