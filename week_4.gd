extends Node2D
# Hello from Bryan!!!
var radius = 100

func _ready() -> void:
	pass

func _process(delta: float) -> void:	
	pass
	
func _draw() -> void:
	draw_circle(Vector2.ZERO, radius, Color.LIGHT_PINK)
	pass

var speed = 100

func  _physics_process(delta: float) -> void:
	position.x += delta * speed
	var s = get_viewport_rect().size
	if position.x + radius > s.x:
		speed = - speed
	if position.x - radius < 0:
		speed = - speed
	pass
