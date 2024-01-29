extends Area2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func something(delta):
	pass

# Will need to make the light radius expand
# Currently a bug that when the game starts, it will think the character has entered the radius of the light

func _on_body_entered(body):
	print("Entered Radius")
	GlobalVariables.set_speed(200)
	

func _on_body_exited(body):
	print("Exited Radius")
	GlobalVariables.set_speed(300)
