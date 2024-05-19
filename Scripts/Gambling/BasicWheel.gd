class_name BasicWheel

extends "res://Scripts/Gambling/GamblingManager.gd"

#class vars
var gambleButton : Button
var wheelVal : int = 0
var wheelConversion : int = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	gambleButton = get_node("WheelButton")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	



func _on_wheel_button_pressed():
	print("spins cutely")
	wheelVal = randi() % 9 + 1
	wheelConversion = wheelVal * 100
	gambleButton.text = str(wheelConversion)
	pass # Replace with function body.
