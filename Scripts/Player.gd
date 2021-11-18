extends KinematicBody2D

const GRAVITY: float = 35.0
const SPEED: float = 250.0

var velocity: Vector2 = Vector2()
	
func _physics_process(delta: float) -> void:	
	get_input()
	move_and_slide(velocity, Vector2.UP)

func get_input() -> void:
	var horizontal_input = Input.get_action_strength("Walk_Right") - Input.get_action_strength("Walk_Left")
	
	velocity.y += GRAVITY
	velocity.x = horizontal_input * SPEED
	
	
	
	
	
	
	
	
	
	
