extends CharacterBody2D

# Get input from player to move
func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * GameState.PlayerSpeed

# Run every frame
func _physics_process(_delta):
	get_input()
	move_and_slide()
