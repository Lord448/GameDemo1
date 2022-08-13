extends KinematicBody2D

var direccion = Vector2(0,0)
var avanzar = true

func _physics_process(delta):
	
	if avanzar == true:
		direccion.x = 180
		$AnimatedSprite.flip_h = false
		$AnimatedSprite.play("girar")
	else:
		direccion.x = -180
		$AnimatedSprite.flip_h = true
		$AnimatedSprite.play("girar")
		
	direccion = move_and_slide(direccion, Vector2.UP)


func _on_Area2D_area_entered(area):
	if area.is_in_group("Player"||"Girl_Player"):
		$AnimatedSprite.flip_h = true
		$AnimatedSprite.play("girar")

