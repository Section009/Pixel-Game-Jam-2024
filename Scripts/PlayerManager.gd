class_name PlayerManager

extends CharacterBody2D


#class vars
static var Pos : Vector2 = Vector2(0.0, 0.0)
static var Oxygen : float = 120.0

@export var SPEED : float = 300.0

var OxygenTimeUI : Label


#startup
func _ready():
	position = Pos
	OxygenTimeUI = get_node("UI/OxygenTime")
	pass 

#frame-based update
func _process(delta):
	Pos = position
	Oxygen -= delta
	OxygenTimeUI.text =  str(int(Oxygen)/60) + ":" + str(int(Oxygen)%60)
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
