extends Node2D

onready var timer := $Timer as Timer
var time = 90

func _ready():
	pass


func _on_Timer_timeout():
	time -= 1
	$Player/HUD/Timer/Label.text = time as String
	if time <=0:
		get_tree().get_root().get_node("Portal").free()
		get_tree().get_root().get_node("OtherPortal").free()
		get_tree().change_scene("res://scenes/Menu.tscn")
