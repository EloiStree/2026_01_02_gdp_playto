# When you code your scene you dont know to who you need to relay the integers that request actions.
# This relay class just emit signals that is given to it to pass through the scene.
class_name PlayTo_IntRelay

extends Node

signal on_integer_relayed(int_value:int)
signal on_integer_relayed_with_milliseconds_delay(int_value:int, delay_in_milliseconds:int)
signal on_integer_block_relayed(int_block:IndexIntegerDateBlockBuilder)
# Emits the signal to relay an integer value to any connected listener.
func relay_integer(int_value:int):
	on_integer_relayed.emit(int_value)

# Emits the signal to relay an integer value with a specified delay in milliseconds to any connected listener.
func relay_integer_with_milliseconds_delay(int_value:int, delay_in_milliseconds:int):
	on_integer_relayed_with_milliseconds_delay.emit(int_value, delay_in_milliseconds)


func relay_integer_block(iid_block:IndexIntegerDateBlockBuilder):
	on_integer_block_relayed.emit(iid_block)
