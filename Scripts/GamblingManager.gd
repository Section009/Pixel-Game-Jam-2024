class_name GamblingManager

extends StaticBody2D

#class vars
@export var detectionRadius : int = 80

var distanceFromPlayer : float = 0
var canActivate : bool = false
var HIGHLIGHT : Sprite2D

#startup
func _ready():
	HIGHLIGHT = get_node("Highlight")
	pass 

#frame-based update
func _process(delta):
	distanceFromPlayer = position.distance_to(PlayerManager.Pos)
	
	if(distanceFromPlayer <= detectionRadius):
		canActivate = true
		HIGHLIGHT.visible = true
		get_input()
	else:
		canActivate = false
		HIGHLIGHT.visible = false

	pass

#constant delta update
func _physics_process(delta):
	pass

#input
func get_input():
	if(canActivate and Input.is_action_just_released("Interact")):
		print("succesfully interacted")

	pass
