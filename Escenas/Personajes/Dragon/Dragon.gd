extends KinematicBody2D

var direccion = Vector2(0,0)
var avanzar = true

func _physics_process(delta):
	
	if avanzar == true:
		direccion.x = 100
		$AnimatedSprite.flip_h = false
		$AnimatedSprite.play("volar")
	else:
		direccion.x = -150
		$AnimatedSprite.flip_h = true
		$AnimatedSprite.play("volar")
		
	direccion = move_and_slide(direccion, Vector2.UP)


func _on_Area2D_area_entered(area):
	if area.is_in_group("Player"):
		$AnimatedSprite.flip_h = true
		$AnimatedSprite.play("volar")
