extends Area2D

func _ready():
	var rng:= RandomNumberGenerator.new()
	#start position
	var width=get_viewport().get_visible_rect().size[0]
	var random_x=rng.randi_range(0,width)
	print(random_x)
	
func _on_body_entered(body) :
	print('body entered')
	
