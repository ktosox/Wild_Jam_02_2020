extends Node

var pointDisplay

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func update_points(value):
	if(pointDisplay == null):
		print("point display undefinded, skipping point Update")
	else:
		pointDisplay.add_points(value)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
