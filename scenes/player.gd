extends CharacterBody2D 

@export var speed: int=500
var can_shoot:bool=true

signal laser(position)

func _ready():
	position=Vector2(100,500)

func _process(_delta):
	var direction=Input.get_vector("left","right","up","down")
	velocity=direction *speed 
	move_and_slide() 
	
	#shoot input
	if Input.is_action_just_pressed("shoot") and can_shoot:
		laser.emit($LaserStartPosition.global_position)
		can_shoot=false
		$LaserTimer.start()


func _on_laser_timer_timeout() -> void:
	can_shoot=true
