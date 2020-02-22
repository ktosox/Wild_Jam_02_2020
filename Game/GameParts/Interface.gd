extends CanvasLayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	GM.pointDisplay = self
	pass # Replace with function body.

func add_points(points):
	$TopBox/Label.text = String(int($TopBox/Label.text)+points)
	$Points.stop()
	$Points.play("Add")
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
