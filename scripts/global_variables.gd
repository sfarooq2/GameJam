extends Node

var SPEED = 300.0
var JUMP_VELOCITY = -400.0 # More negative = jump higher

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func set_speed(speed: int):
	SPEED = speed

func set_jump(jump: int):
	JUMP_VELOCITY = jump
	
func get_speed():
	return SPEED
	
func get_jump():
	return JUMP_VELOCITY
