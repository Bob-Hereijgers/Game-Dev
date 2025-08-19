extends CharacterBody2D


@export var speed = 500

func get_input():
	var input_direction = Input.get_vector("move left", "move right", "move up", "move down")
	velocity = input_direction * speed

func _physics_process(_delta):
	get_input()
	move_and_slide()
	var viewport_rect = get_viewport_rect()
	global_position.x = clamp(global_position.x, 0, viewport_rect.size.x)
	global_position.y = clamp(global_position.y, 0, viewport_rect.size.y)
