extends Area2D

func _ready():
	var rng:= RandomNumberGenerator.new()
	#start position
	var width=get_viewport().get_visible_rect().size
	
func _on_body_entered(body) :
	print('body entered')
	
