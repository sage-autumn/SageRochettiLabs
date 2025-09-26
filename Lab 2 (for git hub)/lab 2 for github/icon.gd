extends Sprite2D

@export var speed =5
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print('im ready')
	print(position)
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if position.x > 800:
		print('i win')
	else:
		print ('still racing')
	
	if Input.is_action_pressed("ui_up"):
		position.y -= speed
	if Input.is_action_pressed("ui_down"):
		position.y += speed
	if Input.is_action_pressed("ui_left"):
		position.x -= speed
	if Input.is_action_pressed("ui_right"):
		position.x += speed
