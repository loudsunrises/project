extends Sprite2D
@onready var zoom_in_1: Sprite2D = $"."

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ESC"):
		zoom_in_1.visible=false
