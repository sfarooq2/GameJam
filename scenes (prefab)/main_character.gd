extends CharacterBody2D


#var SPEED = 300.0
#var JUMP_VELOCITY = -400.0 # More negative = jump higher
@onready var sprite_2d = $Sprite2D

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("Jump") and is_on_floor():
		velocity.y = GlobalVariables.get_jump()

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("Left", "Right")
	if direction:
		velocity.x = direction * GlobalVariables.get_speed()	
	else:
		velocity.x = move_toward(velocity.x, 0, 200)

	move_and_slide()
		
	
	var isLeft = velocity.x < 0
	
	sprite_2d.flip_h = isLeft
