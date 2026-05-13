class_name E3RaycastToScreenDisplay

extends Node3D

@export var ray_lenght : float = 100
@export var cam : Camera3D
@export var raycast : RayCast3D

func _physics_process(delta: float) -> void:
	var mousepos = get_viewport().get_mouse_position()
	var origin = cam.project_ray_origin(mousepos)
	raycast.global_position = origin
	var end = cam.project_ray_normal(mousepos)
	raycast.target_position = end * ray_lenght
	
	if raycast.is_colliding():
		var pos = raycast.get_collision_point()
		print (pos)
	else:
		print ("no hit")
	
func _use_code_raycast():
	var space_state = get_world_3d().direct_space_state
	var mousepos = get_viewport().get_mouse_position()
	var origin = cam.project_ray_origin(mousepos)
	var end = origin + cam.project_ray_normal(mousepos) * ray_lenght
	
	var query = PhysicsRayQueryParameters3D.create(origin, end)
	query.collide_with_areas = true

	var result = space_state.intersect_ray(query)
	
	if result:
		print("Hit ", result.position)
	else:
		print("No hit")
