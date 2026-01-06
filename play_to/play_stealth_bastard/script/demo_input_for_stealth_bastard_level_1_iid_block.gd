extends Node

signal on_integer_block_to_relay(block: IndexIntegerDateBlockBuilder)

@export var input: IntInputForStealthBastard

func release_all_keys( block_ref :IndexIntegerDateBlockBuilder) -> void:
	block_ref.append_value_with_delay_seconds(input.move_left+1000,0.0)
	block_ref.append_value_with_delay_seconds(input.move_right+1000,0.0)
	block_ref.append_value_with_delay_seconds(input.move_up+1000,0.0)
	block_ref.append_value_with_delay_seconds(input.move_down+1000,0.0)
	block_ref.append_value_with_delay_seconds(input.jump+1000,0.0)
	block_ref.append_value_with_delay_seconds(input.restart_level+1000,0.0)
	block_ref.append_value_with_delay_seconds(input.carry_throw+1000,0.0)
	block_ref.append_value_with_delay_seconds(input.gadget+1000,0.0)
	

func build_and_send_level1_macro() -> void:
	var level1 := IndexIntegerDateBlockBuilder.new()
	release_all_keys(level1)

	var time_offset_seconds := 0.0    
	time_offset_seconds += 1.0
	level1.append_value_with_delay_seconds(input.restart_level, time_offset_seconds)
	time_offset_seconds += 1.0
	level1.append_value_with_delay_seconds(input.restart_level+1000, time_offset_seconds)
	time_offset_seconds += 10.0
	level1.append_value_with_delay_seconds(input.move_left, time_offset_seconds)
	time_offset_seconds += 0.3
	level1.append_value_with_delay_seconds(input.move_left+1000, time_offset_seconds)
	time_offset_seconds += 0.18

	
	
	level1.append_value_with_delay_seconds(input.move_right, time_offset_seconds)
	time_offset_seconds += 0.3
	level1.append_value_with_delay_seconds(input.move_right+1000, time_offset_seconds)
	time_offset_seconds += 0.18


	level1.append_value_with_delay_seconds(input.move_down, time_offset_seconds)
	time_offset_seconds += 0.3
	level1.append_value_with_delay_seconds(input.move_down+1000, time_offset_seconds)
	time_offset_seconds += 0.18


	level1.append_value_with_delay_seconds(input.jump, time_offset_seconds)
	time_offset_seconds += 0.3
	level1.append_value_with_delay_seconds(input.jump+1000, time_offset_seconds)
	time_offset_seconds += 0.18



	time_offset_seconds += 2.0    
	on_integer_block_to_relay.emit(level1)
