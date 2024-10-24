extends Node2D


@export var speed = 500

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#position = Vector2(0, 0);
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	position += direction * speed * delta
	if Input.is_action_pressed("ui_down"):
		position += Vector2(1280, 720) / 5 * delta
		get_node("PlayerImage").rotation += 0.1 * delta
		$PlayerImage2.rotation += 1 * delta
	
	pass
