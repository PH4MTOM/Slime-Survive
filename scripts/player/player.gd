extends Node2D

signal player_dead

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

# Player taking damage. If health is lower than 0, emit signal player_dead
func take_damage(amount) -> void:
	GameState.PlayerHealth -= amount
	print(GameState.PlayerHealth)
	if GameState.PlayerHealth >= 0:
		player_dead.emit()
