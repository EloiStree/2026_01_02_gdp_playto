class_name IntXboxInputFor10SecondsNinja extends IntInputFor


@export_group("10 Seconds Ninja Controls")
@export var move_left_arrow = 1317
@export var move_right_arrow = 1313
@export var move_menu_down_arrow =  1315
@export var move_menu_up_arrow = 1311
@export var jump_a = 1300
@export var sword_x = 1301
@export var shuriken_b = 1302
@export var restart_rb = 1305
@export var level_next_a = 1300
@export var select_a = 1300
@export var back_b = 1302
@export var option_y = 1303
@export var level_select_hold_mr = 1308
@export var release_all_but_menu = 1391




func release_all_keys():
	press_key(release_all_but_menu)

func attack_with_sword():
	stroke_key_200_milliseconds(sword_x)

func attack_with_shuriken():
	stroke_key_200_milliseconds(shuriken_b)

func jump_action():
	stroke_key_200_milliseconds(jump_a)

func start_move_left():
	press_key(move_left_arrow)

func stop_move_left():
	release_key(move_left_arrow)

func start_move_right():
	press_key(move_right_arrow)

func stop_move_right():
	release_key(move_right_arrow)

func start_jumping():
	press_key(jump_a)

func stop_jumping():
	release_key(jump_a)

func restart_game():
	stroke_key_1_seconds(restart_rb)
