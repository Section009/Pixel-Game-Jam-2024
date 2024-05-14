class_name SceneManager

extends Node2D


#class vars
static var Levels : Dictionary = {
	"main" : preload("res://Scenes/Levels/Main.tscn")
}
static var Gambling : Dictionary = {
	"main" : preload("res://Scenes/GamblingGames/SlotMachine.tscn")
}


#scene advancer - im unsure if this works, we dont have any scenes to switch too, and im too lazy
func SwitchToLevel(level):
	get_tree().change_scene_to_file(Levels[level])
	pass

#gambling mini games
func SwitchToGambling(game):
	get_tree().change_scene_to_file(Gambling[game])
	pass
