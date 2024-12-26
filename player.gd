extends RigidBody2D

@export var acceleration: float= 100.0


func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("ui_up"):
		apply_central_force(acceleration * global_transform.x)


func _integrate_forces(state: PhysicsDirectBodyState2D) -> void:
	state.transform= state.transform.looking_at(get_global_mouse_position())
