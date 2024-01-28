extends Node

@onready var player = $Player
@onready var inventory_interface = $UI/InventoryInterface


func _ready() -> void:
	Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
	player.toggle_inventory.connect(togggle_inventory_interface)
	inventory_interface.set_player_inventory_data(player.inventory_data)


func togggle_inventory_interface() -> void:
	inventory_interface.visible = not inventory_interface.visible
