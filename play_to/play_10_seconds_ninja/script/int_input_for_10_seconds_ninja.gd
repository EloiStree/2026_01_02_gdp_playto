class_name IntInputFor10SecondsNinja extends IntInputForKeyboard


@export_group("10 Seconds Ninja Controls")
@export var move_left = S2W_Enum_Keyboard.EnumIntegerKeyboard.Left
@export var move_right = S2W_Enum_Keyboard.EnumIntegerKeyboard.Right
@export var jump = S2W_Enum_Keyboard.EnumIntegerKeyboard.Up
@export var sword = S2W_Enum_Keyboard.EnumIntegerKeyboard.X
@export var shuriken = S2W_Enum_Keyboard.EnumIntegerKeyboard.Z
@export var restart = S2W_Enum_Keyboard.EnumIntegerKeyboard.R

@export_group("Usable keys in game")
@export var key_x = S2W_Enum_Keyboard.EnumIntegerKeyboard.X
@export var key_z = S2W_Enum_Keyboard.EnumIntegerKeyboard.Z
@export var key_c = S2W_Enum_Keyboard.EnumIntegerKeyboard.C
@export var key_r = S2W_Enum_Keyboard.EnumIntegerKeyboard.R
@export var arrow_left = S2W_Enum_Keyboard.EnumIntegerKeyboard.Left
@export var arrow_right = S2W_Enum_Keyboard.EnumIntegerKeyboard.Right
@export var arrow_up = S2W_Enum_Keyboard.EnumIntegerKeyboard.Up


func release_all_keys():
	release_key(arrow_left)
	release_key(arrow_right)
	release_key(jump)
	release_key(sword)
	release_key(shuriken)
	release_key(key_x)
	release_key(key_z)
	release_key(key_c)
	release_key(key_r)

func attack_with_sword():
	stroke_key_200_milliseconds(sword)

func attack_with_shuriken():
	stroke_key_200_milliseconds(shuriken)

func jump_action():
	stroke_key_200_milliseconds(jump)

func start_move_left():
	press_key(arrow_left)

func stop_move_left():
	release_key(arrow_left)

func start_move_right():
	press_key(arrow_right)

func stop_move_right():
	release_key(arrow_right)

func start_jumping():
	press_key(jump)

func stop_jumping():
	release_key(jump)

func restart_game():
	stroke_key_1_seconds(restart)


func start_pressing_key_x():
	press_key(key_x)
func stop_pressing_key_x():
	release_key(key_x)
func stroke_key_x():
	stroke_key_200_milliseconds(key_x)

func start_pressing_key_z():
	press_key(key_z)
func stop_pressing_key_z():
	release_key(key_z)
func stroke_key_z():
	stroke_key_200_milliseconds(key_z)


func start_pressing_key_c():
	press_key(key_c)
func stop_pressing_key_c():
	release_key(key_c)
func stroke_key_c():
	stroke_key_200_milliseconds(key_c)
