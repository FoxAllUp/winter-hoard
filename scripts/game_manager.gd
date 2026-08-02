extends Node
class_name GameManager

signal state_changed(new_state: GameState)

enum GameState {
	SETUP,
	LOOT_GEN,
	PLANNING,
	DISCUSSION,
	RESOLUTION
}

var current_state: GameState = GameState.SETUP

func change_state(new_state: GameState) -> void:
	current_state = new_state
	state_changed.emit(current_state)
	_handle_state_transition(new_state)

func _handle_state_transition(state: GameState) -> void:
	match state:
		GameState.SETUP:
			print("Setting up the game...")
		GameState.LOOT_GEN:
			print("Generating daily loot...")
		GameState.PLANNING:
			print("Planning phase started...")
		GameState.DISCUSSION:
			print("Discussion timer started...")
		GameState.RESOLUTION:
			print("Resolving votes...")

func advance_state() -> void:
	var next_index = (current_state + 1) % GameState.size()
	change_state(next_index as GameState)
