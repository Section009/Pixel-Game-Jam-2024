class_name GamblingExit

extends Button

func _pressed():
	get_tree().change_scene_to_file(SceneManager.Levels[SceneManager.currentLevel])
	pass
