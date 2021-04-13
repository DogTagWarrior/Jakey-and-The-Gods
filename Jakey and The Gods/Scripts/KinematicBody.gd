extends KinematicBody

export var walk_speed : float = 12.0
export var running_speed : float = 15.0
export var fall_speed : float = 7.5
export var gravity : float = 0.98
export var max_fall_speed : float = 30
export var jump_speed : float = 30

const H_LOOK_SENS = 1.0
const V_LOOK_SENS = 1.0

var velocity = Vector3.ZERO

onready var cam = $CamBase

func _physics_process(delta) -> void:
	pass

func _input(event):
	if event is InputEventMouseMotion:
		cam.rotation_degrees.x -= event.relative.y * V_LOOK_SENS
		cam.rotation_degrees.x = clamp(cam.rotation_degrees.x, -90, 90)
		rotation_degrees.y -= event.relative.x * H_LOOK_SENS

