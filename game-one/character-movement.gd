extends CharacterBody2D

@export var speed = 4000

func get_input():
	var input_direction = Input.get_vector("move left", "move right", "move up", "move down")
	velocity = input_direction * speed

func _physics_process(delta):
	print(Vector2.ZERO)
	get_input()
	move_and_slide()
