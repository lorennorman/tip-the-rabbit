extends RigidBody2D

var thrust = Vector2(0, 250)
var torque = 20000

func _integrate_forces(state):
    if Input.is_action_pressed("ui_up"):
        set_applied_force(thrust.rotated(rotation))
    else:
        set_applied_force(Vector2())
    var rotation_dir = 0
    if Input.is_action_pressed("ui_right"):
        set_applied_force(Vector2(250,0))
    if Input.is_action_pressed("ui_left"):
        set_applied_force(Vector2(-250,0))
    set_applied_torque(rotation_dir * torque)