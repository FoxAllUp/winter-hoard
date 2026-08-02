extends CanvasLayer

signal next_phase_requested

@onready var state_label: Label = $UIRoot/StateLabel

func _on_game_state_changed(new_state: GameManager.GameState) -> void:
	var state_name = GameManager.GameState.keys()[new_state]
	state_label.text = "CURRENT PHASE: " + state_name

func _on_next_phase_button_pressed() -> void:
	next_phase_requested.emit()
