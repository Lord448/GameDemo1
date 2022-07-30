extends Node2D

onready var player_pos: Position2D = $position_player
var player: Node2D = null

func _ready():
	player = load(global_var.player_dir).instance()
	#player.global_position = player_pos.global_position
	add_child(player)
