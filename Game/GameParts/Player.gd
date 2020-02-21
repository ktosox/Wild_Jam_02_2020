extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var direction
export var launchReady = true
export var fireStrenght = 0.0
export var stoped = true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	if(event.is_action_pressed("ui_left")):
		$Turn.play("Left")
	if(event.is_action_released("ui_left") and $Turn.current_animation == "Left"):
		$Turn.stop()
	if(event.is_action_pressed("ui_right")):
		$Turn.play("Right")
	if(event.is_action_released("ui_right") and $Turn.current_animation == "Right"):
		$Turn.stop()
	if(event.is_action_pressed("ui_accept") and launchReady):
		$Launcher.play("Pull")
	if(event.is_action_released("ui_accept") and fireStrenght > 0.0):
		$Launcher.play("Fire")
		pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	pass


func fire_player():
	var back = Vector2(sin(deg2rad(global_rotation_degrees)),cos(deg2rad(global_rotation_degrees+180)))
	apply_impulse(Vector2(0,0),back*fireStrenght)
	pass





