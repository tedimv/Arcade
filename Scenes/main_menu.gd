extends Node2D

@onready var gallery_button: Button = $VBoxContainer/HBoxContainer2/VBoxContainer/GalleryButton
@onready var quit_button: Button = $VBoxContainer/HBoxContainer2/VBoxContainer/QuitButton

const GALLERY_MENU = preload("res://Scenes/gallery_menu.tscn")

func _ready() -> void:
	gallery_button.pressed.connect(navigate_to_gallery)
	quit_button.pressed.connect(exit_game)

func navigate_to_gallery():
	get_tree().change_scene_to_packed(GALLERY_MENU)

func exit_game():
	get_tree().quit()
