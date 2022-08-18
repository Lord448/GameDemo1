extends Node2D

var Escenario: String

func _ready():
	pass


func _on_Aceptar_pressed():
		get_tree().change_scene("res://Escenas/Menus/Characters_Menu_Arcade.tscn")
#NO BORRAR------------------------------------
#func _on_Aceptar_pressed():
#	if Gamehandler.Stage != null:
#		get_tree().change_scene(Gamehandler.Stage)
#	else:
#		pass
#---------------------------------------------
func _on_Regresar_pressed():
	get_tree().change_scene("res://Escenas/Menus/Arcade_menu.tscn")

func _on_Stage_1_pressed():
	for i in range(1,20):
		get_node("Stage_" + String(i)).pressed = false
	Gamehandler.Stage = "res://Escenas/Niveles/Niveles_Arcade/Stage_01.tscn"

func _on_Stage_2_pressed():
	for i in range(1,20):
		Escenario = "Stage_" + String(i)
		if Escenario == "Stage_2":
			pass
		else:
			get_node(Escenario).pressed = false
	Gamehandler.Stage = "res://Escenas/Niveles/Niveles_Arcade/Stage_02.tscn"

func _on_Stage_3_pressed():
	for i in range(1,20):
		Escenario = "Stage_" + String(i)
		if Escenario == "Stage_3":
			pass
		else:
			get_node(Escenario).pressed = false
	Gamehandler.Stage = "res://Escenas/Niveles/Niveles_Arcade/Stage_03.tscn"

func _on_Stage_4_pressed():
	for i in range(1,20):
		Escenario = "Stage_" + String(i)
		if Escenario == "Stage_4":
			pass
		else:
			get_node(Escenario).pressed = false
	Gamehandler.Stage = "res://Escenas/Niveles/Niveles_Arcade/Stage_04.tscn"

func _on_Stage_5_pressed():
	for i in range(1,20):
		Escenario = "Stage_" + String(i)
		if Escenario == "Stage_5":
			pass
		else:
			get_node(Escenario).pressed = false
	Gamehandler.Stage = "res://Escenas/Niveles/Niveles_Arcade/Stage_05.tscn"

func _on_Stage_6_pressed():
	for i in range(1,20):
		Escenario = "Stage_" + String(i)
		if Escenario == "Stage_6":
			pass
		else:
			get_node(Escenario).pressed = false
	Gamehandler.Stage = "res://Escenas/Niveles/Niveles_Arcade/Stage_06.tscn"

func _on_Stage_7_pressed():
	for i in range(1,20):
		Escenario = "Stage_" + String(i)
		if Escenario == "Stage_7":
			pass
		else:
			get_node(Escenario).pressed = false
	Gamehandler.Stage = "res://Escenas/Niveles/Niveles_Arcade/Stage_07.tscn"

func _on_Stage_8_pressed():
	for i in range(1,20):
		Escenario = "Stage_" + String(i)
		if Escenario == "Stage_8":
			pass
		else:
			get_node(Escenario).pressed = false
	Gamehandler.Stage = "res://Escenas/Niveles/Niveles_Arcade/Stage_08.tscn"

func _on_Stage_9_pressed():
	for i in range(1,20):
		Escenario = "Stage_" + String(i)
		if Escenario == "Stage_9":
			pass
		else:
			get_node(Escenario).pressed = false
	Gamehandler.Stage = "res://Escenas/Niveles/Niveles_Arcade/Stage_09.tscn"

func _on_Stage_10_pressed():
	for i in range(1,20):
		Escenario = "Stage_" + String(i)
		if Escenario == "Stage_10":
			pass
		else:
			get_node(Escenario).pressed = false
	Gamehandler.Stage = "res://Escenas/Niveles/Niveles_Arcade/Stage_10.tscn"
	
func _on_Stage_11_pressed():
	for i in range(1,20):
		Escenario = "Stage_" + String(i)
		if Escenario == "Stage_11":
			pass
		else:
			get_node(Escenario).pressed = false
	Gamehandler.Stage = "res://Escenas/Niveles/Niveles_Arcade/Stage_11.tscn"

func _on_Stage_12_pressed():
	for i in range(1,20):
		Escenario = "Stage_" + String(i)
		if Escenario == "Stage_12":
			pass
		else:
			get_node(Escenario).pressed = false
	Gamehandler.Stage = "res://Escenas/Niveles/Niveles_Arcade/Stage_12.tscn"

func _on_Stage_13_pressed():
	for i in range(1,20):
		Escenario = "Stage_" + String(i)
		if Escenario == "Stage_13":
			pass
		else:
			get_node(Escenario).pressed = false
	Gamehandler.Stage = "res://Escenas/Niveles/Niveles_Arcade/Stage_13.tscn"

func _on_Stage_14_pressed():
	for i in range(1,20):
		Escenario = "Stage_" + String(i)
		if Escenario == "Stage_14":
			pass
		else:
			get_node(Escenario).pressed = false
	Gamehandler.Stage = "res://Escenas/Niveles/Niveles_Arcade/Stage_14.tscn"

func _on_Stage_15_pressed():
	for i in range(1,20):
		Escenario = "Stage_" + String(i)
		if Escenario == "Stage_15":
			pass
		else:
			get_node(Escenario).pressed = false
	Gamehandler.Stage = "res://Escenas/Niveles/Niveles_Arcade/Stage_15.tscn"

func _on_Stage_16_pressed():
	for i in range(1,20):
		Escenario = "Stage_" + String(i)
		if Escenario == "Stage_16":
			pass
		else:
			get_node(Escenario).pressed = false
	Gamehandler.Stage = "res://Escenas/Niveles/Niveles_Arcade/Stage_16.tscn"

func _on_Stage_17_pressed():
	for i in range(1,20):
		Escenario = "Stage_" + String(i)
		if Escenario == "Stage_17":
			pass
		else:
			get_node(Escenario).pressed = false
	Gamehandler.Stage = "res://Escenas/Niveles/Niveles_Arcade/Stage_17.tscn"

func _on_Stage_18_pressed():
	for i in range(1,20):
		Escenario = "Stage_" + String(i)
		if Escenario == "Stage_18":
			pass
		else:
			get_node(Escenario).pressed = false
	Gamehandler.Stage = "res://Escenas/Niveles/Niveles_Arcade/Stage_18.tscn"

func _on_Stage_19_pressed():
	for i in range(1,20):
		Escenario = "Stage_" + String(i)
		if Escenario == "Stage_19":
			pass
		else:
			get_node(Escenario).pressed = false
	Gamehandler.Stage = "res://Escenas/Niveles/Niveles_Arcade/Stage_19.tscn"

func _on_Stage_20_pressed():
	for i in range(1,20):
		Escenario = "Stage_" + String(i)
		if Escenario == "Stage_20":
			pass
		else:
			get_node(Escenario).pressed = false
	Gamehandler.Stage = "res://Escenas/Niveles/Niveles_Arcade/Stage_20.tscn"
