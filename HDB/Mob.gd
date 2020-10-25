extends RigidBody2D

export var min_speed = 150  # Minimum speed range.
export var max_speed = 250  # Minimum speed range.


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var mob_types = $AnimatedSprite.frames.get_animation_names()
	$AnimatedSprite.animation = mob_types[randi() % mob_types.size()]


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass
func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
