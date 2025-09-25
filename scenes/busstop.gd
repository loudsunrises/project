extends Node2D
@onready var player: Player = $player
@onready var scene_transition_animation= $SceneTransitionAnimation/AnimationPlayer

func _ready():
	scene_transition_animation.get_parent().get_node("ColorRect").color.a = 255
	scene_transition_animation.play("fade_out")	

func _on_inside_detect_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		scene_transition_animation.play("fadein")
		await get_tree().create_timer(0.5).timeout
		get_tree().change_scene_to_file("res://scenes/game.tscn")

var pointer = load("res://sprites/pointer.png")
var clicker = load("res://sprites/Clicker.png")
