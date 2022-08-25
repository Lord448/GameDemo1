extends Node2D

var Escenario: String

func _ready():
	$Advertencia.visible = false
	Gamehandler.Stage = ""

func _on_Aceptar_pressed():
	if Gamehandler.Stage == "":
		$Advertencia.visible = true
	else:
		if get_tree().change_scene(Gamehandler.Stage) != OK:
			print("Ha ocurrido un error inesperado al cargar la escena")

func _on_Regresar_pressed():
	if get_tree().change_scene("res://Escenas/Menus/Characters_Menu_Arcade.tscn") != OK:
		print("Ha ocurrido un error inesperado al cargar la escena")

func _on_Stage_1_pressed():
	$Advertencia.visible = false
	for i in range(1,20):
		Escenario = "Stage_" + String(i)
		if Escenario == "Stage_1":
			pass
		else:
			get_node(Escenario).pressed = false
	Gamehandler.Stage = "res://Escenas/Niveles/Niveles_Arcade/Stage_01.tscn"

func _on_Stage_2_pressed():
	$Advertencia.visible = false
	for i in range(1,20):
		Escenario = "Stage_" + String(i)
		if Escenario == "Stage_2":
			pass
		else:
			get_node(Escenario).pressed = false
	Gamehandler.Stage = "res://Escenas/Niveles/Niveles_Arcade/Stage_02.tscn"

func _on_Stage_3_pressed():
	$Advertencia.visible = false
	for i in range(1,20):
		Escenario = "Stage_" + String(i)
		if Escenario == "Stage_3":
			pass
		else:
			get_node(Escenario).pressed = false
	Gamehandler.Stage = "res://Escenas/Niveles/Niveles_Arcade/Stage_03.tscn"

func _on_Stage_4_pressed():
	$Advertencia.visible = false
	for i in range(1,20):
		Escenario = "Stage_" + String(i)
		if Escenario == "Stage_4":
			pass
		else:
			get_node(Escenario).pressed = false
	Gamehandler.Stage = "res://Escenas/Niveles/Niveles_Arcade/Stage_04.tscn"

func _on_Stage_5_pressed():
	$Advertencia.visible = false
	for i in range(1,20):
		Escenario = "Stage_" + String(i)
		if Escenario == "Stage_5":
			pass
		else:
			get_node(Escenario).pressed = false
	Gamehandler.Stage = "res://Escenas/Niveles/Niveles_Arcade/Stage_05.tscn"

func _on_Stage_6_pressed():
	$Advertencia.visible = false
	for i in range(1,20):
		Escenario = "Stage_" + String(i)
		if Escenario == "Stage_6":
			pass
		else:
			get_node(Escenario).pressed = false
	Gamehandler.Stage = "res://Escenas/Niveles/Niveles_Arcade/Stage_06.tscn"

func _on_Stage_7_pressed():
	$Advertencia.visible = false
	for i in range(1,20):
		Escenario = "Stage_" + String(i)
		if Escenario == "Stage_7":
			pass
		else:
			get_node(Escenario).pressed = false
	Gamehandler.Stage = "res://Escenas/Niveles/Niveles_Arcade/Stage_07.tscn"

func _on_Stage_8_pressed():
	$Advertencia.visible = false
	for i in range(1,20):
		Escenario = "Stage_" + String(i)
		if Escenario == "Stage_8":
			pass
		else:
			get_node(Escenario).pressed = false
	Gamehandler.Stage = "res://Escenas/Niveles/Niveles_Arcade/Stage_08.tscn"

func _on_Stage_9_pressed():
	$Advertencia.visible = false
	for i in range(1,20):
		Escenario = "Stage_" + String(i)
		if Escenario == "Stage_9":
			pass
		else:
			get_node(Escenario).pressed = false
	Gamehandler.Stage = "res://Escenas/Niveles/Niveles_Arcade/Stage_09.tscn"

func _on_Stage_10_pressed():
	$Advertencia.visible = false
	for i in range(1,20):
		Escenario = "Stage_" + String(i)
		if Escenario == "Stage_10":
			pass
		else:
			get_node(Escenario).pressed = false
	Gamehandler.Stage = "res://Escenas/Niveles/Niveles_Arcade/Stage_10.tscn"
	
func _on_Stage_11_pressed():
	$Advertencia.visible = false
	for i in range(1,20):
		Escenario = "Stage_" + String(i)
		if Escenario == "Stage_11":
			pass
		else:
			get_node(Escenario).pressed = false
	Gamehandler.Stage = "res://Escenas/Niveles/Niveles_Arcade/Stage_11.tscn"

func _on_Stage_12_pressed():
	$Advertencia.visible = false
	for i in range(1,20):
		Escenario = "Stage_" + String(i)
		if Escenario == "Stage_12":
			pass
		else:
			get_node(Escenario).pressed = false
	Gamehandler.Stage = "res://Escenas/Niveles/Niveles_Arcade/Stage_12.tscn"

func _on_Stage_13_pressed():
	$Advertencia.visible = false
	for i in range(1,20):
		Escenario = "Stage_" + String(i)
		if Escenario == "Stage_13":
			pass
		else:
			get_node(Escenario).pressed = false
	Gamehandler.Stage = "res://Escenas/Niveles/Niveles_Arcade/Stage_13.tscn"

func _on_Stage_14_pressed():
	$Advertencia.visible = false
	for i in range(1,20):
		Escenario = "Stage_" + String(i)
		if Escenario == "Stage_14":
			pass
		else:
			get_node(Escenario).pressed = false
	Gamehandler.Stage = "res://Escenas/Niveles/Niveles_Arcade/Stage_14.tscn"

func _on_Stage_15_pressed():
	$Advertencia.visible = false
	for i in range(1,20):
		Escenario = "Stage_" + String(i)
		if Escenario == "Stage_15":
			pass
		else:
			get_node(Escenario).pressed = false
	Gamehandler.Stage = "res://Escenas/Niveles/Niveles_Arcade/Stage_15.tscn"

func _on_Stage_16_pressed():
	$Advertencia.visible = false
	for i in range(1,20):
		Escenario = "Stage_" + String(i)
		if Escenario == "Stage_16":
			pass
		else:
			get_node(Escenario).pressed = false
	Gamehandler.Stage = "res://Escenas/Niveles/Niveles_Arcade/Stage_16.tscn"

func _on_Stage_17_pressed():
	$Advertencia.visible = false
	for i in range(1,20):
		Escenario = "Stage_" + String(i)
		if Escenario == "Stage_17":
			pass
		else:
			get_node(Escenario).pressed = false
	Gamehandler.Stage = "res://Escenas/Niveles/Niveles_Arcade/Stage_17.tscn"

func _on_Stage_18_pressed():
	$Advertencia.visible = false
	for i in range(1,20):
		Escenario = "Stage_" + String(i)
		if Escenario == "Stage_18":
			pass
		else:
			get_node(Escenario).pressed = false
	Gamehandler.Stage = "res://Escenas/Niveles/Niveles_Arcade/Stage_18.tscn"

func _on_Stage_19_pressed():
	$Advertencia.visible = false
	for i in range(1,20):
		Escenario = "Stage_" + String(i)
		if Escenario == "Stage_19":
			pass
		else:
			get_node(Escenario).pressed = false
	Gamehandler.Stage = "res://Escenas/Niveles/Niveles_Arcade/Stage_19.tscn"

func _on_Stage_20_pressed():
	$Advertencia.visible = false
	for i in range(1,20):
		Escenario = "Stage_" + String(i)
		if Escenario == "Stage_20":
			pass
		else:
			get_node(Escenario).pressed = false
	Gamehandler.Stage = "res://Escenas/Niveles/Niveles_Arcade/Stage_20.tscn"
