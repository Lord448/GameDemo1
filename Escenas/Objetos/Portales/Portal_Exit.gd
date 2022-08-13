extends KinematicBody2D

func _ready():
	$AnimatedSprite.playing = true


func _on_Area2D_body_entered(body):
	if body.name == "Player":
		get_tree().quit()
	if body.name == "Girl_Player":
		get_tree().quit()
