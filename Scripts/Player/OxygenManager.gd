class_name OxygenManager

extends Label


#class vars



#startup
func _ready():
	pass

func _process(delta):
	PlayerManager.Oxygen -= delta
	text =  str(int(PlayerManager.Oxygen)/60) + ":" + str(int(PlayerManager.Oxygen)%60)
	pass