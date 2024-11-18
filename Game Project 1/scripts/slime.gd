extends Node2D

const SPEED = 30

var direction = 1

@onready var ray_cast_2d_right = $RayCast2DRight
@onready var ray_cast_2d_left = $RayCast2DLeft
@onready var animated_sprite = $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_2d_right.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
	if ray_cast_2d_left.is_colliding():
		direction = 1
		animated_sprite.flip_h = false
		
	position.x += (direction * SPEED * delta)