extends Node2D


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


func _on_Stage_01_toggled(button_pressed):
	Gamehandler.Stage = "res://Escenas/Niveles/Niveles_Arcade/Stage_01.tscn"


func _on_Stage_02_toggled(button_pressed):
	Gamehandler.Stage = "res://Escenas/Niveles/Niveles_Arcade/Stage_02.tscn"


func _on_Stage_03_toggled(button_pressed):
	pass # Replace with function body.


func _on_Stage_04_toggled(button_pressed):
	pass # Replace with function body.


func _on_Stage_05_toggled(button_pressed):
	pass # Replace with function body.


func _on_Stage_06_toggled(button_pressed):
	pass # Replace with function body.


func _on_Stage_07_toggled(button_pressed):
	pass # Replace with function body.


func _on_Stage_08_toggled(button_pressed):
	pass # Replace with function body.


func _on_Stage_09_toggled(button_pressed):
	pass # Replace with function body.


func _on_Stage_10_toggled(button_pressed):
	pass # Replace with function body.


func _on_Stage_11_toggled(button_pressed):
	pass # Replace with function body.


func _on_Stage_12_toggled(button_pressed):
	pass # Replace with function body.


func _on_Stage_13_toggled(button_pressed):
	pass # Replace with function body.


func _on_Stage_14_toggled(button_pressed):
	pass # Replace with function body.


func _on_Stage_15_toggled(button_pressed):
	pass # Replace with function body.


func _on_Stage_16_toggled(button_pressed):
	pass # Replace with function body.


func _on_Stage_17_toggled(button_pressed):
	pass # Replace with function body.


func _on_Stage_18_toggled(button_pressed):
	pass # Replace with function body.


func _on_Stage_19_toggled(button_pressed):
	pass # Replace with function body.


func _on_Stage_20_toggled(button_pressed):
	pass # Replace with function body.
