extends KinematicBody2D
#SUMMARY:
	##I WANT MY CHARACTER TO WALK
	##I DO NOT NEED TO ACCELERATE. 
	##
#SUMMARY END

#OPEN:
	
#OPEN END

#
var velocity = Vector2()
const gravity = 1200
const UP = Vector2(0, - 1)
const speed = 300


	
func _physics_process(delta: float) -> void:	
	_get_input()
	move_and_slide(velocity, UP)

#THIS TAKES THE PLAYER INPUT
func _get_input():
	var direction = -int(Input.is_action_pressed("Walk_Left")) + int(Input.is_action_pressed("Walk_Right"))
	print(direction)
	velocity.y += gravity * delta
	velocity.x = speed * direction
	

#HERE WE HANDLE SIDE PLAYER MOVEMENT.
#NOT IN USE RIGHT NOW
func Handle_Movement() -> void:
	pass
	
	
	
	
	
	
	
	
	
	
	
