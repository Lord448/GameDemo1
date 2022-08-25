extends Node2D

func _ready():
	$Presiones/LineEditPre.text = "10"
	$Velocidad/LineEditVel.text = "5"
	$MasVel.text = ""
	$Dificultad/LineEditDif.text = "Facil"
	Gamehandler.Presiones = int($Presiones/LineEditPre.text)
	Gamehandler.Velocidad = int($Velocidad/LineEditVel.text)
	Gamehandler.Velocidad = 100

func _on_SubirVel_pressed():
	Gamehandler.Velocidad = int($Velocidad/LineEditVel.text)*100
	Gamehandler.Velocidad += 100
	if Gamehandler.Velocidad > 700:
		Gamehandler.Velocidad = 700
		$MasVel.text = "¡Más despacio velocista!"
	else:
		$MasVel.text = ""
	$Velocidad/LineEditVel.text = String(Gamehandler.Velocidad/100)
	
func _on_BajarVel_pressed():
	Gamehandler.Velocidad = int($Velocidad/LineEditVel.text)*100
	Gamehandler.Velocidad -= 100
	if Gamehandler.Velocidad < 100:
		Gamehandler.Velocidad = 100
	if Gamehandler.Velocidad < 700:
		$MasVel.text = ""
	$Velocidad/LineEditVel.text = String(Gamehandler.Velocidad/100)

func _on_SubirPre_pressed():
	Gamehandler.Presiones = int($Presiones/LineEditPre.text)
	Gamehandler.Presiones += 1
	$Presiones/LineEditPre.text = String(Gamehandler.Presiones)

func _on_BajarPre_pressed():
	Gamehandler.Presiones = int($Presiones/LineEditPre.text)
	Gamehandler.Presiones -= 1
	if Gamehandler.Presiones < 10:
		Gamehandler.Presiones = 10
	$Presiones/LineEditPre.text = String(Gamehandler.Presiones)

func _on_Subirdif_pressed():
	if $Dificultad/LineEditDif.text == "Facil":
		$Dificultad/LineEditDif.text = "Normal"
	elif $Dificultad/LineEditDif.text == "Normal":
		$Dificultad/LineEditDif.text = "Dificil"
	elif $Dificultad/LineEditDif.text == "Dificil":
		$Dificultad/LineEditDif.text = "Imposible"
	elif $Dificultad/LineEditDif.text == "Imposible":
		pass

func _on_Bajardif_pressed():
	if $Dificultad/LineEditDif.text == "Imposible":
		$Dificultad/LineEditDif.text = "Dificil"
	elif $Dificultad/LineEditDif.text == "Dificil":
		$Dificultad/LineEditDif.text = "Normal"
	elif $Dificultad/LineEditDif.text == "Normal":
		$Dificultad/LineEditDif.text = "Facil"
	elif $Dificultad/LineEditDif.text == "Facil":
		pass

func _on_LineEditVel_text_changed(new_text):
	Gamehandler.Velocidad = int($Velocidad/LineEditVel.text)*100
	if Gamehandler.Velocidad > 700:
		Gamehandler.Velocidad = 700
		$MasVel.text = "¡Más despacio velocista!"
	else:
		$MasVel.text = ""
	$Velocidad/LineEditVel.text = String(Gamehandler.Velocidad/100)

func _on_LineEditPre_text_changed(new_text):
	pass # Replace with function body.

func _on_Aceptar_pressed():
	if Gamehandler.Velocidad >= 100 && Gamehandler.Presiones >= 10:
		Gamehandler.Velocidad = int($Velocidad/LineEditVel.text)*100
		Gamehandler.Presiones = int($Presiones/LineEditPre.text)
		Gamehandler.Dificultad = $Dificultad/LineEditDif.text
		get_tree().change_scene("res://Escenas/Menus/Characters_Menu.tscn")

func _on_Regresar_pressed():
	get_tree().change_scene("res://Escenas/Menus/Modals_Menu.tscn")




