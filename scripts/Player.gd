extends KinematicBody2D

var speed = Vector2(0, 0)
var gravity = Vector2(0, 200)

func _ready():
	pass
	
	
func _physics_process(delta):
	
	speed = speed + gravity * delta
	
	move_and_slide(speed)
