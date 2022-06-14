extends Area2D

var PORTAL_SCENE = preload("res://scenes/Portal.tscn") 
var portal = PORTAL_SCENE.instance()
var OTHER_PORTAL = preload("res://scenes/OtherPortal.tscn")
var portal2 = OTHER_PORTAL.instance()
var is_first_portal = true

func _on_Area2D_input_event(viewport, event, shape_idx):
	var BUTTON_RIGHT = 1
	if event is InputEventMouseButton:        
		if event.button_index == BUTTON_RIGHT and event.pressed:    
			if is_first_portal:
				portal.position = get_global_mouse_position()
				get_tree().get_root().add_child(portal)
				portal2.get_node("Entrada").teleportPosition = portal.position
				portal2.get_node("Entrada").otherPortal = portal.get_node("Entrada")
				is_first_portal = false
			else:
				portal2.position = get_global_mouse_position()
				get_tree().get_root().add_child(portal2)
				portal.get_node("Entrada").teleportPosition = portal2.position
				portal.get_node("Entrada").otherPortal = portal2.get_node("Entrada")
				is_first_portal = true
