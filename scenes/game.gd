extends Node2D

var pointer = load("res://sprites/pointer.png")
var clicker = load("res://sprites/Clicker.png")


func _ready():
	Input.set_custom_mouse_cursor(pointer)
