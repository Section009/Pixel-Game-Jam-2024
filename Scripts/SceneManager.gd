class_name SceneManager

extends Node2D


#class vars
static var Levels : Dictionary = {
	1: "res://Scenes/Levels/Main.tscn",
	2 : "res://Scenes/Levels/Level_2.tscn"
}
static var Gambling : Dictionary = {
	"slots" : "res://Scenes/GamblingGames/SlotMachine.tscn",
	"wheel" : "res://Scenes/GamblingGames/WheelSpin.tscn"
}

static var currentLevel : int = 1
