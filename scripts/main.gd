extends Node

@onready var game_manager: GameManager = $GameManager
@onready var ui_manager: CanvasLayer = $UIManager

func _ready() -> void:
	game_manager.state_changed.connect(ui_manager._on_game_state_changed)
	ui_manager.next_phase_requested.connect(game_manager.advance_state)
	
	game_manager.change_state(GameManager.GameState.SETUP)
