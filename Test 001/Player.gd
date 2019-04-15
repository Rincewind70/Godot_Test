extends KinematicBody2D

export var player_name : String = "Astronaut"

export var MAX_SPEED : float = 100
export var ACCELERATION : float = 1000
export var FRICTION : float = 1500
export var JUMP: float = 175
export var GRAVITY : float = 225

onready var c = get_node("AnimatedSprite")

var input_direction : int = 0
var direction : int = 0
var speed : float = 0
var velocity : float  = 0

const UP = Vector2(0,-1)
var motion : Vector2

		
func _physics_process(delta):
	if input_direction:
		direction = input_direction
	
	# Input
	if Input.is_action_pressed("ui_left"):
		input_direction = -1
	elif Input.is_action_pressed("ui_right") :
		input_direction = 1
	else:
		input_direction = 0

	# Movement
	if input_direction:
		speed += ACCELERATION * delta
	else:
		speed -= FRICTION * delta

	speed = clamp(speed,0,MAX_SPEED)
	velocity = speed * direction
	motion.x = velocity
	if is_on_floor() and Input.is_action_pressed("ui_up"):
		motion.y -= JUMP 
	else:	
		motion.y += GRAVITY * delta

	motion = move_and_slide(motion,UP)
	# Animation
	play_animation(input_direction)
		
func calculate_movement(input_direction):
	pass

func play_animation(input_direction):

	if input_direction > 0:
		c.animation = "RightWalk"
		c.speed_scale = 1.5
		
	elif input_direction < 0:
		c.animation = "LeftWalk"
		c.speed_scale = 1.5
	else:
		c.animation = "Idle"
		c.speed_scale = .25
	# Only animate if the player is the ground
	c.playing = is_on_floor()
	if is_on_wall():
		print("ouch")