extends Area2D
@onready var hovering_object : bool = false
@onready var alarmclock: AnimatedSprite2D = $Alarm/alarmclock

var pointer = load("res://sprites/pointer.png")
var clicker = load("res://sprites/Clicker.png")
func _on_mouse_entered() -> void:
	Input.set_custom_mouse_cursor(clicker)
	hovering_object=true
func _on_mouse_exited() -> void:
	Input.set_custom_mouse_cursor(pointer)
	hovering_object=false
