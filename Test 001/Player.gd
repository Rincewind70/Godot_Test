extends KinematicBody2D

export var player_name : String = "Astronaut"

export var MAX_SPEED : float = 100
export var ACCELERATION : float = 500
export var GRAVITY : float = 600
export var FRICTION : float = 450
export var MAX_JUMP : float = 350
export var DELTA_JUMP : float = 30

onready var c = get_node("AnimatedSprite")

var input_direction : int = 0
var direction : int = 0
var speed : float = 0
var jump : float = 0
var can_jump = true


const UP = Vector2(0,-1)
var motion : Vector2

func _process(delta):
	
	if input_direction:
		direction = input_direction
	
	# Input
	input_direction = 0
	if Input.is_action_pressed("ui_left"):
		input_direction = -1
	if Input.is_action_pressed("ui_right") :
		input_direction = 1
	
	if can_jump:
		if Input.is_action_pressed("ui_up") and (jump <= MAX_JUMP):
			jump += DELTA_JUMP
		elif Input.is_action_just_released("ui_up") or jump > MAX_JUMP:
			can_jump = false
			jump = min(jump, MAX_JUMP)

	# Movement 
	if input_direction:
		speed += ACCELERATION * delta
	else:
		speed -= FRICTION * delta
		
	speed = clamp(speed,0,MAX_SPEED)
	motion.x = speed * direction
	
	# Movement y
	if not can_jump and jump > 0:
		motion.y -= clamp(jump,0,MAX_JUMP)
		jump = 0
		
	# Only add gravity if player is not on the ground
	# Unfortunatly is_on_floor() is not giving always true if the player moves
	# (for whatever reason I did wrong, maybe because the animated sprite?)
	# Therefore I also test if input movement was applied to force is_on_floor()
	# will fire next frame
	if not is_on_floor() or input_direction != 0:
		motion.y += GRAVITY * delta


	# Update movement	
	motion = move_and_slide(motion,UP)
	
	can_jump = is_on_floor()

	# Animation
	play_animation(direction,speed,is_on_floor())	


func play_animation(direction,speed,on_ground):
	if speed != 0:
		c.speed_scale = 1
		if direction > 0:
			c.animation = "RightWalk"
		elif direction < 0:
			c.animation = "LeftWalk"
	else:
		motion.x = 0
		c.speed_scale = .25
		c.animation = "Idle"
		
	if  on_ground:
		c.playing = true
	else:
		c.frame = 0
		c.playing = false
