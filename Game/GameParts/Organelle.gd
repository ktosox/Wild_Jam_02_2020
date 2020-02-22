extends StaticBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_BallRange_body_entered(body):
	var dir = body.global_position-global_position
	body.apply_impulse(Vector2(),-dir)
	constant_linear_velocity = dir*12
	$Bump.pitch_scale = 1 + 0.07*(randf()-0.5)
	$Bump.play()
	GM.update_points(60)
	#$Crash.play()
	pass # Replace with function body.
