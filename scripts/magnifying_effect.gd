extends Sprite2D

var magnification := 2.0

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("focus") and Global.is_magnifier_pick_up:
		visible = true
		position = get_global_mouse_position()
		z_index = 100
		
	elif event is InputEventMouseMotion:
		position = get_global_mouse_position()
		
	elif Input.is_mouse_button_pressed(MOUSE_BUTTON_RIGHT):
		if magnification == 2.0:
			magnification = 4.0
			material.set_shader_parameter("magnification", 4.0)
		else:
			magnification = 2.0
			material.set_shader_parameter("magnification", 2.0)
	
