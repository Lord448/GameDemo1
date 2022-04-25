extends Node2D


func _ready():
	pass


func _on_Aceptar_pressed():
	get_tree().change_scene("res://Escenas/Menus/Stage_menu.tscn")


func _on_Regresar_pressed():
	get_tree().change_scene("res://Escenas/Menus/Arcade_menu.tscn")
