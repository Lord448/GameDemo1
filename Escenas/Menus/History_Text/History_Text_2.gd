extends Node2D

func _on_Saltar_pressed():
	get_tree().change_scene("res://Escenas/Menus/Instrucciones.tscn")


func _on_Atras_pressed():
	get_tree().change_scene("res://Escenas/Menus/History_Text/History_Text_1.tscn")


func _on_Siguiente_pressed():
	get_tree().change_scene("res://Escenas/Menus/History_Text/History_Text_3.tscn")
