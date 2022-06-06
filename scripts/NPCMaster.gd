extends Area2D

func _input(event):
	if event.is_action_pressed("move_up") and len(get_overlapping_bodies()) > 0:
		find_and_use_dialogues()
		
func find_and_use_dialogues():
	var dialogue_player = get_node_or_null("Dialog")
	
	if dialogue_player:
		dialogue_player.play()

