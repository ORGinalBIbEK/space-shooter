extends Node2D

#1. load the scene
var meteor_scene:PackedScene=load("res://scenes/meteor.tscn")
var laser_scene: PackedScene=load("res://laser.tscn")

var health :int =3

func _ready():
	get_tree().call_group('ui','set_health',health)


func _on_meteor_timer_timeout() -> void:
	#2. create an instance
	var meteor = meteor_scene.instantiate()
	#3. attach the node to the scene tree
	$Meteros.add_child(meteor)
	
	#connect the signal
	meteor.connect('collision',on_meteor_collision)
	
func on_meteor_collision():
	health-=1
	get_tree().call_group('ui','set_health',health)

	if health<=0:
		get_tree().change_scene_to_file("res://scenes/game_over.tscn")
func _on_player_laser(pos) -> void:
	var laser=laser_scene.instantiate()
	$Lasers.add_child(laser)
	laser.position=pos
	print(pos)
	
	
