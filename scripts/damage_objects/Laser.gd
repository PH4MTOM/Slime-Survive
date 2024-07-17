extends Node2D

signal laser_hit

@export var laser_damage: int = 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_area_2d_body_entered(body):
	laser_hit.emit(laser_damage)
