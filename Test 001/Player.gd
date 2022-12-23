extends KinematicBody2D

# Contants
const UP = Vector2(0,-1)

# Public properties
export var player_name : String = "Astronaut"
export var MAX_SPEED : float = 100
export var ACCELERATION : float = 500
export var GRAVITY : float = 600
export var FRICTION : float = 450
export var MAX_JUMP : float = 350
export var DELTA_JUMP : float = 30


# Variable to hold current user input
var input_direction : int = 0

# Class to orginize all variables
# using class just to organize and enabling all vars 
# to be sent to funcitons by reference
# (Just a test)
class Movement: 
	var motion = Vector2()
	var direction : int = 0
	var can_jump : bool = true
	var jump : float = 0
	var speed : float = 0
	var animationsprite : AnimatedSprite
	
# The instance variable for the class
var movement : Movement = Movement.new()

func _ready():
	# Settin up
	movement.animationsprite = get_node("AnimatedSprite")
	
func _process(delta):	
	
	movement.can_jump = is_on_floor()
	
	# Input
	get_input(movement)
	
	# Movement 
	calc_movement(delta,movement)
	
	# Animation
	play_animation(movement,is_on_floor())	

func get_input(m:Movement):
	var last_direction : int = 0
	if input_direction:
		m.direction = input_direction
	
	input_direction = 0
	if Input.is_action_pressed("ui_left"):
		input_direction = -1
		
	if Input.is_action_pressed("ui_right") :
		input_direction = 1
	
	if m.can_jump:
		if Input.is_action_pressed("ui_up") and (m.jump <= MAX_JUMP):
			m.jump += DELTA_JUMP
		elif Input.is_action_just_released("ui_up") or m.jump > MAX_JUMP:
			m.can_jump = false
			m.jump = min(m.jump, MAX_JUMP)

func calc_movement(delta,m:Movement):

	if input_direction:
		m.speed += ACCELERATION * delta
	else:
		m.speed -= FRICTION * delta
		
	m.speed = clamp(m.speed,0,MAX_SPEED)
	m.motion.x = m.speed * m.direction
	
	# Movement y
	if not m.can_jump and m.jump > 0:
		m.motion.y -= clamp(m.jump,0,MAX_JUMP)
		m.jump = 0.0
		
	# Only add gravity if player is not on the ground
	# Unfortunatly is_on_floor() is not giving always true if the player moves
	# (for whatever reason I did wrong, maybe because the animated sprite?)
	# Therefore I also test if input movement was applied to force is_on_floor()
	# will fire next frame
	if not is_on_floor() or input_direction != 0:
		m.motion.y += GRAVITY * delta

	# Update movement	
	m.motion = move_and_slide(m.motion,UP)

func play_animation(m:Movement,on_ground:bool):
	if m.speed != 0:
		m.animationsprite.speed_scale = 1
		if m.direction > 0:
			m.animationsprite.animation = "RightWalk"
		elif m.direction < 0:
			m.animationsprite.animation = "LeftWalk"
	else:
		m.motion.x = 0
		m.animationsprite.speed_scale = .25
		m.animationsprite.animation = "Idle"
		
	if  on_ground:
		m.animationsprite.playing = true
	else:
		m.animationsprite.frame = 0
		m.animationsprite.playing = false
