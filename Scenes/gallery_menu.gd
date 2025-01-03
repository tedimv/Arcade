extends Node2D

@onready var back_btn: Button = $BackBtn

const MAIN_MENU = preload("res://Scenes/main_menu.tscn")

func _ready() -> void:
	back_btn.pressed.connect(navigate_back_to_main_menu)
	
func _exit_tree() -> void:
	back_btn.pressed.disconnect(navigate_back_to_main_menu)

func navigate_back_to_main_menu() -> void:
	get_tree().change_scene_to_packed(MAIN_MENU)
