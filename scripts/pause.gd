extends Node
@onready var pause_panel: Panel = %PausePanel

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var esc_pressed: bool = Input.is_action_just_pressed("pause")
	if esc_pressed == true:
		get_tree().paused = true
		pause_panel.show()


func _on_resume_pressed() -> void:
	pause_panel.hide()
	get_tree().paused = false

func _on_main_menu_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
