extends RigidBody

export var rolling_force = 40
export var jump_impulse = 1000

func _ready():
	$CameraRig.set_as_toplevel(true)
	$FloorCheck.set_as_toplevel(true)
	
func _physics_process(delta):
	var old_camera_pos = $CameraRig.global_transform.origin
	var ball_pos = global_transform.origin
	var new_camera_pos = lerp(old_camera_pos,ball_pos,0.1)
	$CameraRig.global_transform.origin=new_camera_pos
	
	$FloorCheck.global_transform.origin = global_transform.origin
	
	if Input.is_action_pressed("forwarde"):
		angular_velocity.x -= rolling_force*delta
	elif Input.is_action_pressed("back"):
		angular_velocity.x += rolling_force*delta	
	if Input.is_action_pressed("left"):
		angular_velocity.z += rolling_force*delta
	elif Input.is_action_pressed("right"):
		angular_velocity.z -= rolling_force*delta
	
	if Input.is_action_pressed("leftRotation"):
		$CameraRig.rotation_degrees.y += 2 
	if Input.is_action_pressed("rightRotation"):
		$CameraRig.rotation_degrees.y -= 2 	
		
	var is_on_floor = $FloorCheck.is_colliding()
	if Input.is_action_just_pressed("jump") and is_on_floor:
		$jump.play()
		$Timer.start()
		apply_central_impulse(Vector3.UP*jump_impulse)
		
	


func _on_Timer_timeout():
	$jump.stop()



