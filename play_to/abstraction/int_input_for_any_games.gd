class_name IntInputFor extends Node

signal on_integer_action_requested(integer_value:int)
signal on_integer_delay_action_requested_in_milliseconds(integer_value:int, milliseconds_delay:int)



func push_integer_action(value:int):
	""" Send an integer as an action request with signals to any parser listener. """
	on_integer_action_requested.emit(value)

func push_integer_delay_action_seconds(value:int,seconds:float):
	""" Send an integer as an action request with delay in seconds with signals to any parser listener. """
	on_integer_delay_action_requested_in_milliseconds.emit(value,seconds*1000)
	
func push_integer_delay_action_milliseconds(value:int,milliseconds:int):
	""" Send an integer as an action request with delay in milliseconds with signals to any parser listener. """
	on_integer_delay_action_requested_in_milliseconds.emit(value,milliseconds)

func stroke_key_seconds(value:S2W_Enum_Keyboard.EnumIntegerKeyboard, delay_seconds:float):
	""" Simulate a key stroke with press and release with delay in seconds. """
	push_integer_action(int(value))
	push_integer_delay_action_seconds(int(value)+1000,delay_seconds)
	
func stroke_key_milliseconds(value:S2W_Enum_Keyboard.EnumIntegerKeyboard, delay_ms:int):
	""" Simulate a key stroke with press and release with delay in milliseconds. """
	push_integer_action(int(value))
	push_integer_delay_action_milliseconds(int(value)+1000,delay_ms)
	

func stroke_key_5_seconds(value:S2W_Enum_Keyboard.EnumIntegerKeyboard):
	""" Simulate a key stroke with press and release with 5 seconds delay. """
	stroke_key_seconds(value,5.0)

func stroke_key_3_seconds(value:S2W_Enum_Keyboard.EnumIntegerKeyboard):
	""" Simulate a key stroke with press and release with 3 seconds delay. """
	stroke_key_seconds(value,3.0)

func stroke_key_2_seconds(value:S2W_Enum_Keyboard.EnumIntegerKeyboard):
	""" Simulate a key stroke with press and release with 2 seconds delay. """
	stroke_key_seconds(value,2.0)
	
func stroke_key_1_seconds(value:S2W_Enum_Keyboard.EnumIntegerKeyboard):
	""" Simulate a key stroke with press and release with 1 second delay. """
	stroke_key_milliseconds(value,1000)


func stroke_key_200_milliseconds(value:S2W_Enum_Keyboard.EnumIntegerKeyboard):
	""" Simulate a key stroke with press and release with 200 milliseconds delay. """
	stroke_key_milliseconds(value,200)

func stroke_key_50_milliseconds(value:S2W_Enum_Keyboard.EnumIntegerKeyboard	):
	""" Simulate a key stroke with press and release with 50 milliseconds delay. """
	stroke_key_milliseconds(value,50)

func stroke_key_10_milliseconds(value:S2W_Enum_Keyboard.EnumIntegerKeyboard):
	""" Simulate a key stroke with press and release with 10 milliseconds delay. """
	stroke_key_milliseconds(value,10)
		
func press_key(value:S2W_Enum_Keyboard.EnumIntegerKeyboard):
	push_integer_action(int(value))	
	
func release_key(value:S2W_Enum_Keyboard.EnumIntegerKeyboard):
	push_integer_action(int(value)+1000)



func press_key_in_seconds(value:S2W_Enum_Keyboard.EnumIntegerKeyboard,local_delay_seconds:float):
	push_integer_delay_action_milliseconds(int(value), int(local_delay_seconds * 1000))	
	
func release_key_in_seconds(value:S2W_Enum_Keyboard.EnumIntegerKeyboard,local_delay_seconds:float):
	push_integer_delay_action_milliseconds(int(value)+1000, int(local_delay_seconds * 1000))

func press_key_in_milliseconds(value:S2W_Enum_Keyboard.EnumIntegerKeyboard,local_delay_milliseconds:int):
	push_integer_delay_action_milliseconds(int(value), local_delay_milliseconds)

func release_key_in_milliseconds(value:S2W_Enum_Keyboard.EnumIntegerKeyboard,local_delay_milliseconds:int):
	push_integer_delay_action_milliseconds(int(value)+1000, local_delay_milliseconds)
