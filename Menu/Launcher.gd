extends Node

@export var ui: Control
@export var scene_container: Node

@export var balloon_popper_scene: PackedScene
@export var physics_scene: PackedScene
@export var loops_scene: PackedScene
@export var collision_scene: PackedScene

func hide_menu():
	ui.hide()

func change_scene(scene: PackedScene):
	for child in scene_container.get_children():
		scene_container.remove_child(child)
		child.queue_free()
	scene_container.add_child(scene.instantiate())

func _on_balloon_popper_pressed() -> void:
	hide_menu()
	change_scene(balloon_popper_scene)

func _on_physics_pressed() -> void:
	hide_menu()
	change_scene(physics_scene)

func _on_loops_pressed() -> void:
	hide_menu()
	change_scene(loops_scene)

func _on_collision_pressed() -> void:
	hide_menu()
	change_scene(collision_scene)
