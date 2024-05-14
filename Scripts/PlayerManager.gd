class_name PlayerManager

extends CharacterBody2D

#class vars
static var Oxygen = 120.0
static var Pos = Vector2(0.0, 0.0)
@export var SPEED : float = 300.0

#startup
func _ready():
	position = Pos
	pass 

#frame-based update
func _process(delta):
	Oxygen -= delta
	Pos = position
	pass

#constant delta update
func _physics_process(delta):
	get_input()
	pass

#input
func get_input():
	var input_direction = Input.get_vector("Left", "Right", "Up", "Down")

	if(Input.is_action_pressed("Sprint")):
		input_direction *= 2 
		
	velocity = input_direction * SPEED
	move_and_slide()
	pass
