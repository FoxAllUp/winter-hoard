# Winter Hoard

A pass-and-play social deduction and negotiation party game built with Godot 4.x. 
No network required – just gather around, pass the phone, lie, and survive the winter!

## 🎮 The Core Loop
1. **Loot Generation:** Resources are drawn for the day.
2. **Planning (Pass-and-Play):** Players pass the phone to privately view their secret roles (Fox, Owl, Magpie, etc.), multipliers, and activate special abilities.
3. **Discussion:** A 60-90 second chaotic table-talk phase. Negotiate, lie, form alliances.
4. **Resolution:** Vote for a consensus. If the timer runs out without agreement, everyone suffers a penalty.

## 🛠️ Development & Tech Stack
- **Engine:** Godot Engine 4.x
- **Language:** GDScript
- **Platform:** Mobile (Portrait mode)
- **Architecture:** Strictly decoupled UI and Logic using State Machines and Signals.

## 📂 Project Structure
- `/assets` - Graphics, audio, and UI elements.
- `/scenes` - Godot scenes (`.tscn`).
- `/scripts` - Game logic and GDScript files (`.gd`).
- `/resources` - Custom Godot resources for character stats and data.
