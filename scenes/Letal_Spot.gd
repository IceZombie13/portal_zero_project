extends Area2D


func _ready():
	pass


func _on_Area2D_area_entered(body):
	var player = get_tree().get_root().find_node("Player", true, false)
	if player:
		player.hit()
