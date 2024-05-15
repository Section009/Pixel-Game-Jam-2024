class_name PlayerManager

extends CharacterBody2D


#class vars
static var Pos : Vector2 = Vector2(0.0, 0.0)
static var Oxygen : float = 120.0

@export var SPEED : float = 300.0

var direction_vector = Vector2.DOWN



#startup
func _ready():
	position = Pos
	pass 

#frame-based update
func _process(delta):
	Pos = position
	pass

#constant delta update
func _physics_process(delta):
	get_input()
	pass


#functions that specifically regard animation on the player:
func _get_direction_string(angle:float) -> String:
	var angle_deg = round(rad_to_deg(angle))
	if(angle_deg > -90.0 and angle_deg < 90.0):
		return "Right"
	return "Left"
func _play_animation(animation_type:String) -> void:
	var animation_player = $AnimationPlayer
	var animation_name = animation_type + "_" + _get_direction_string(direction_vector.angle())
	animation_player.play(animation_name)
	


#input
func get_input():
	var input_direction = Input.get_vector("Left", "Right", "Up", "Down")

	if(Input.is_action_pressed("Sprint")):
		input_direction *= 2 

	velocity = input_direction * SPEED
	move_and_slide()
	pass
