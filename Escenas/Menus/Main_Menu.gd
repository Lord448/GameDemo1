extends Node2D

func _on_Button_pressed():
	get_tree().change_scene("res://Escenas/Menus/Modals_Menu.tscn")

func _on_Button2_pressed():
	get_tree().quit()

func _on_Button4_pressed():
	get_tree().change_scene("res://Escenas/Menus/Modals_Menu.tscn")
