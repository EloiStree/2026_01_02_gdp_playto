class_name IntInputForKeyboard
extends IntInputFor


@export_group("Key that all game use")
@export var key_space = S2W_Enum_Keyboard.EnumIntegerKeyboard.Space
@export var key_escape = S2W_Enum_Keyboard.EnumIntegerKeyboard.Escape
@export var key_tab = S2W_Enum_Keyboard.EnumIntegerKeyboard.Tab
@export var key_enter = S2W_Enum_Keyboard.EnumIntegerKeyboard.Enter
@export var key_backspace = S2W_Enum_Keyboard.EnumIntegerKeyboard.Backspace
@export var key_control = S2W_Enum_Keyboard.EnumIntegerKeyboard.LeftControl
@export var key_shift = S2W_Enum_Keyboard.EnumIntegerKeyboard.LeftShift
@export var key_alt = S2W_Enum_Keyboard.EnumIntegerKeyboard.LeftAlt

func press_key_space():
	press_key(key_space)

func release_key_space():
	release_key(key_space)

func stroke_key_space_200_milliseconds():
	stroke_key_200_milliseconds(key_space)


func press_key_tab():
	press_key(key_tab)

func release_key_tab():
	release_key(key_tab)

func stroke_key_tab_200_milliseconds():
	stroke_key_200_milliseconds(key_tab)


func press_key_enter():
	press_key(key_enter)

func release_key_enter():
	release_key(key_enter)

func stroke_key_enter_200_milliseconds():
	stroke_key_200_milliseconds(key_enter)


func press_key_backspace():
	press_key(key_backspace)

func release_key_backspace():
	release_key(key_backspace)

func stroke_key_backspace_200_milliseconds():
	stroke_key_200_milliseconds(key_backspace)


func press_key_control():
	press_key(key_control)

func release_key_control():
	release_key(key_control)

func stroke_key_control_200_milliseconds():
	stroke_key_200_milliseconds(key_control)


func press_key_shift():
	press_key(key_shift)

func release_key_shift():
	release_key(key_shift)

func stroke_key_shift_200_milliseconds():
	stroke_key_200_milliseconds(key_shift)


func press_key_alt():
	press_key(key_alt)

func release_key_alt():
	release_key(key_alt)

func stroke_key_alt_200_milliseconds():
	stroke_key_200_milliseconds(key_alt)


func press_key_escape():
	press_key(key_escape)
func release_key_escape():
	release_key(key_escape)
func stroke_key_escape_200_milliseconds():
	stroke_key_200_milliseconds(key_escape)
