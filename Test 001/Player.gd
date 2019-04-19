extends KinematicBody2D

export var player_name : String = "Astronaut"

export var MAX_SPEED : float = 100
export var ACCELERATION : float = 500
export var GRAVITY : float = 500
export var FRICTION : float = 450
export var MAX_JUMP : float = 325
export var DELTA_JUMP : float = 30

onready var c = get_node("AnimatedSprite")

var input_direction : int = 0
var direction : int = 0
var speed : float = 0
var velocity : float  = 0
var jump : float = 0
var can_jump = true

const UP = Vector2(0,-1)
var motion : Vector2

func _physics_process(delta):
	
	if is_on_floor():
		can_jump = true

	if input_direction:
		direction = input_direction
	# Input
	input_direction = 0
	if Input.is_action_pressed("ui_left"):
		input_direction = -1
	if Input.is_action_pressed("ui_right") :
		input_direction = 1
		
	# Movement
	if input_direction:
		speed += ACCELERATION * delta
	else:
		speed -= FRICTION * delta

	speed = clamp(speed,0,MAX_SPEED)
	velocity = speed * direction
	motion.x = velocity
	
	if Input.is_action_pressed("ui_up") and can_jump:
		jump += DELTA_JUMP	
		can_jump = (jump < MAX_JUMP)
	else:
		can_jump = false
		
	if !can_jump:
		can_jump = false	
		motion.y -= clamp(jump,0,MAX_JUMP)
		jump = 0	


	motion.y += GRAVITY * delta
	motion = move_and_slide(motion,UP)
	# Animation
	play_animation(direction,speed)

func calculate_movement(input_direction):
	pass

func play_animation(direction,speed):
	var play_animation = false
	
	if speed > 0:
		c.speed_scale = 1
		play_animation = is_on_floor()
		if direction > 0:
			c.animation = "RightWalk"
		elif direction < 0:
			c.animation = "LeftWalk"
		if !is_on_floor():
			c.frame = 0

	else:
		c.speed_scale = .25
		play_animation = is_on_floor()
		c.animation = "Idle"
		
	c.playing = play_animation
