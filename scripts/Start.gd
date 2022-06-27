extends TextureButton

func _on_Sair_pressed():
	get_tree().quit()
	pass


func _on_Iniciar_pressed():
	get_tree().change_scene("res://scenes/Levels.tscn")
	pass
