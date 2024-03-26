extends Node2D

@export var spawn_count: int = 1000

var star_scene = preload("res://Loops/Star.tscn")

func _ready() -> void:
	for i in spawn_count:
		var star = star_scene.instantiate()
		star.position.x = randi_range(-750, 750)
		star.position.y = randi_range(-500, 500)

		var star_size = randf_range(0.5, 1.0)
		star.scale.x = star_size
		star.scale.y = star_size

		add_child(star)
