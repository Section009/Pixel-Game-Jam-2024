class_name PlayerManager 

extends Node2D

#class vars
var SPEED = 2;

#startup
func _ready():
	pass 

#frame-based update
func _process(delta):

	pass

#constant delta update
func _physics_process(delta):
	get_input()
	pass

#input
func get_input():
	var input_direction = Input.get_vector("Left", "Right", "Up", "Down")
	position += input_direction * SPEED
	pass
