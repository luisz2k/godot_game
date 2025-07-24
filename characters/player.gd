extends CharacterBody2D  

@export var speed : float = 100

func _physics_process(delta):  
	var input_dir = Input.get_vector("left", "right", "up", "down")  
	
	# Apply movement  
	velocity = input_dir.normalized() * speed  
	move_and_slide()  # Handles collisions automatically  
	
	player_animate(input_dir)
	
func player_animate(move_input):
	# Walking and setting idle direction
	if move_input.y < 0:
		$AnimationPlayer.play("idle_up")
	elif move_input.y > 0:
		$AnimationPlayer.play("idle_down")
	elif move_input.x < 0:
		$AnimationPlayer.play("idle_left")
	elif move_input.x > 0:
		$AnimationPlayer.play("idle_right")
