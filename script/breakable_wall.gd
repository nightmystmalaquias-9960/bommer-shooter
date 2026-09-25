extends Node3D

const BREAKABLE_WALL_PIECES = preload("uid://dii2ynb6tgqrv")

@onready var breakable_wall: Node3D = $BreakableWall2
@onready var collision_shape_3d: CollisionShape3D = $BreakSensor/CollisionShape3D

func take_damage(amount: float):
	print("ta chegando")
	breakable_wall.hide()
	
	collision_shape_3d.disabled = true
	
	var pieces: Node3D = BREAKABLE_WALL_PIECES.instantiate()
	add_child(pieces)
