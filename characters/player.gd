extends CharacterBody2D  

@export var speed : float = 300

func _physics_process(delta):  
	var input_dir = Input.get_vector("left", "right", "up", "down")  
	
	# Apply movement  
	velocity = input_dir.normalized() * speed  
	move_and_slide()  # Handles collisions automatically  
