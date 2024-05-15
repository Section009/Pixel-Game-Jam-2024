class_name GamblingManager

extends Node2D


#class vars
@export var initialPity : int = 0
var machinePity : int = 0
var amountUsed : int = 0
var lostStreak : int = 0



#inital use of machine
func useMachine(amountBase : int):
	machinePity += randi() % 10 + 1
	amountUsed += 1
	pass