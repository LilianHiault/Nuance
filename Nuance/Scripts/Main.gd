extends Node2D


var levels : Dictionary = {"1" : preload("res://Scenes/Level/Level1.tscn")}
var current_level_index : int = 0
var node_level = null

func nextLevel():
	$StateMachine.current_state.next()

func respawn():
	var player = get_node("Player")
	if player:
		player.position = node_level.spawn_point

func set_spawn_point(pos):
	$Player.position = pos
