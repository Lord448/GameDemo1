extends Node2D


func _on_Siguiente_pressed():
	get_tree().change_scene("res://Escenas/Menus/Instrucciones.tscn")


func _on_Atras_pressed():
	get_tree().change_scene("res://Escenas/Menus/History_Text/History_Text_4.tscn")
