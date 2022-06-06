extends Node2D

export(Resource) var interaction


# Called when the node enters the scene tree for the first time.
func _ready():
	DialogBox.add_message(interaction.msg_queue)
