# Acts as a controller for the game
extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	# Init the signal connection between the Laser and Player
	$Laser.laser_hit.connect($Player.take_damage)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
