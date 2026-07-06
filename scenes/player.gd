extends Node2D

func _ready():
	position=Vector2(100,500)

func _process(delta):
	var direction=Input.get_vector("left","right","up","down")
	position+= direction *500 * delta
