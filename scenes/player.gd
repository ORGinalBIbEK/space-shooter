extends Node2D

func _ready():
	position=Vector2(100,500)

func _process(delta):
	if Input.is_action_pressed("ui_down"):
		position += Vector2(1,0) * 50 * delta
		$PlayerImage.rotation +=0.1*delta
	
