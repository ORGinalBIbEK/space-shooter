extends CharacterBody2D 

@export var speed: int=500

signal laser(position)

func _ready():
	position=Vector2(100,500)

func _process(delta):
	var direction=Input.get_vector("left","right","up","down")
	velocity=direction *speed 
	move_and_slide() 
	
	#shoot input
	if Input.is_action_just_pressed("shoot"):
		laser.emit($LaserStartPosition.position)
