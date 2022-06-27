extends PathFollow2D

var speed = 150
var right = true

func _process(delta):
	get_child(0).scale.x = (1 if right else -1)
	if(right):
		set_offset(get_offset() + speed * delta)
		if(get_offset() >= 431):
			right = false
	else:
		set_offset(get_offset() - speed * delta)
		if(get_offset() == 0):
			right = true
	pass
