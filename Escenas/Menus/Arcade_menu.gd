extends Node2D

var Presiones : int
var Velocidad : int

func _ready():
	$Presiones/LineEditPre.text = "10"
	$Velocidad/LineEditVel.text = "1"
	Presiones = int($Presiones/LineEditPre.text)
	Velocidad = int($Velocidad/LineEditVel.text)
	Velocidad = 100
	

func _on_Aceptar_pressed():
	if Velocidad >= 100 && Presiones >= 10:
		Velocidad = int($Velocidad/LineEditVel.text)
		Presiones = int($Presiones/LineEditPre.text)
		get_tree().change_scene("res://Escenas/Niveles/Level.tscn")

func _on_SubirVel_pressed():
	Velocidad = int($Velocidad/LineEditVel.text)*100
	Velocidad += 100
	if Velocidad > 700:
		Velocidad = 700
		$MasVel.text = "Alto ahí velocista"
	else:
		$MasVel.text = ""
	$Velocidad/LineEditVel.text = String(Velocidad/100)
	

func _on_BajarVel_pressed():
	Velocidad = int($Velocidad/LineEditVel.text)*100
	Velocidad -= 100
	if Velocidad < 100:
		Velocidad = 100
	if Velocidad < 700:
		$MasVel.text = ""
	$Velocidad/LineEditVel.text = String(Velocidad/100)

func _on_SubirPre_pressed():
	Presiones = int($Presiones/LineEditPre.text)
	Presiones += 1
	$Presiones/LineEditPre.text = String(Presiones)

func _on_BajarPre_pressed():
	Presiones = int($Presiones/LineEditPre.text)
	Presiones -= 1
	if Presiones < 10:
		Presiones = 10
	$Presiones/LineEditPre.text = String(Presiones)

func _on_LineEditVel_text_changed(new_text):
	Velocidad = int($Velocidad/LineEditVel.text)*100
	if Velocidad > 700:
		Velocidad = 700
		$MasVel.text = "Alto ahí velocista"
	else:
		$MasVel.text = ""
	$Velocidad/LineEditVel.text = String(Velocidad/100)

func _on_LineEditPre_text_changed(new_text):
	pass # Replace with function body.
