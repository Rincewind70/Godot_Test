extends KinematicBody2D

export var player_name : String = "Astronaut"

export var MAX_SPEED : float = 100
export var ACCELERATION : float = 500
export var GRAVITY : float = 600
export var FRICTION : float = 450
export var MAX_JUMP : float = 350
export var DELTA_JUMP : float = 30


var input_direction : int = 0
var direction : int = 0
var speed : float = 0
var jump : float = 0
var can_jump = true

class Movement : 
	var motion = Vector2()
	var direction : int = 0
	var can_jump : bool = true
	var jump : float = 0
	var speed : float = 0
	var animationsprite = Node2D
	
	func _init():
		return self
	func Movement(c : Node2D):
		animationsprite = c
		return self

var movement : Movement

const UP = Vector2(0,-1)
var motion : Vector2



func _ready():
	movement = Movement(get_node("AnimatedSprite"))
	movement.animationsprite = get_node("AnimatedSprite")

func _process(delta):	

	movement.can_jump = is_on_floor()
	
	# Input
	movement.direction = get_input()

	# Movement 
	calc_movement(delta)
	
	# Animation
	play_animation(movement.direction,movement.speed,is_on_floor())	


func get_input():
	var last_direction : int = 0
	if input_direction:
		last_direction = input_direction
	
	input_direction = 0
	if Input.is_action_pressed("ui_left"):
		input_direction = -1
		
	if Input.is_action_pressed("ui_right") :
		input_direction = 1
	
	if movement.can_jump:
		if Input.is_action_pressed("ui_up") and (movement.jump <= MAX_JUMP):
			movement.jump += DELTA_JUMP
		elif Input.is_action_just_released("ui_up") or movement.jump > MAX_JUMP:
			movement.can_jump = false
			movement.jump = min(movement.jump, MAX_JUMP)
	return last_direction

func calc_movement(delta):

	if input_direction:
		movement.speed += ACCELERATION * delta
	else:
		movement.speed -= FRICTION * delta
		
	movement.speed = clamp(movement.speed,0,MAX_SPEED)
	movement.motion.x = movement.speed * movement.direction
	
	# Movement y
	if not movement.can_jump and movement.jump > 0:
		movement.motion.y -= clamp(movement.jump,0,MAX_JUMP)
		movement.jump = 0
		
	# Only add gravity if player is not on the ground
	# Unfortunatly is_on_floor() is not giving always true if the player moves
	# (for whatever reason I did wrong, maybe because the animated sprite?)
	# Therefore I also test if input movement was applied to force is_on_floor()
	# will fire next frame
	if not is_on_floor() or input_direction != 0:
		movement.motion.y += GRAVITY * delta

	# Update movement	
	movement.motion = move_and_slide(movement.motion,UP)


func play_animation(direction,speed,on_ground):
	if speed != 0:
		movement.animationsprite.speed_scale = 1
		if direction > 0:
			movement.animationsprite.animation = "RightWalk"
		elif direction < 0:
			movement.animationsprite.animation = "LeftWalk"
	else:
		movement.motion.x = 0
		movement.animationsprite.speed_scale = .25
		movement.animationsprite.animation = "Idle"
		
	if  on_ground:
		movement.animationsprite.playing = true
	else:
		movement.animationsprite.frame = 0
		movement.animationsprite.playing = false
