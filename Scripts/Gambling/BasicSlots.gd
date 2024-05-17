class_name BasicSlots

extends "res://Scripts/Gambling/GamblingManager.gd"


#class vars
var gambleButton : Button
var slotValue : Vector3 = Vector3(0, 0, 0)	



#startup
func _ready():
	gambleButton = get_node("SlotLever")
	pass

#frame-based update
func _process(delta):
	pass

#constant delta update
func _physics_process(delta):
	pass


func _on_button_pressed():
	print("holy moly")
	for i in 3:
		slotValue[i] = randi()%3
		
	gambleButton.text = str(slotValue[0])
	pass
