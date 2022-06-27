extends Node


func _on_Door_area_entered(area):
	if area.get_name() == "Trigger":
		get_tree().get_root().get_node("Portal").free()
		get_tree().get_root().get_node("OtherPortal").free()
		get_tree().change_scene("res://scenes/Menu.tscn")
	pass
