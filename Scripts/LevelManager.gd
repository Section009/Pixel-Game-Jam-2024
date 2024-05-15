class_name LevelManager

extends "res://Scripts/Gambling/InteractionManager.gd"

#input
func get_input():
	if(canActivate and Input.is_action_just_released("Interact")):
		print("succesfully interacted")
		SceneManager.currentLevel += 1
		get_tree().change_scene_to_file(SceneManager.Levels[SceneManager.currentLevel])
		
	pass


