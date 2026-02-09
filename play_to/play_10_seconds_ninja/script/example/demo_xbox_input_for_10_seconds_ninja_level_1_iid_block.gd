extends Node



signal on_integer_block_to_relay(block: IndexIntegerDateBlockBuilder)

@export var input: IntXboxInputFor10SecondsNinja

func release_all_keys( block_ref :IndexIntegerDateBlockBuilder) -> void:
	block_ref.append_value_with_delay_seconds(input.release_all_but_menu,0.0)
	block_ref.append_value_with_delay_seconds(input.move_left_arrow+1000,0.0)
	block_ref.append_value_with_delay_seconds(input.move_right_arrow+1000,0.0)
	block_ref.append_value_with_delay_seconds(input.jump_a+1000,0.0)
	block_ref.append_value_with_delay_seconds(input.sword_x+1000,0.0)
	block_ref.append_value_with_delay_seconds(input.restart_rb+1000,0.0)
	block_ref.append_value_with_delay_seconds(input.shuriken_b+1000,0.0)


func build_and_send_level1_macro() -> void:
	var level1 := IndexIntegerDateBlockBuilder.new()
	release_all_keys(level1)
	

	var time_offset_seconds := 0.0    
	time_offset_seconds += 1.0
	level1.append_value_with_delay_seconds(input.restart_rb, time_offset_seconds)
	time_offset_seconds += 1.0
	level1.append_value_with_delay_seconds(input.restart_rb+1000, time_offset_seconds)
	time_offset_seconds += 1.0
	level1.append_value_with_delay_seconds(input.move_right_arrow, time_offset_seconds)
	time_offset_seconds += 0.4
	level1.append_value_with_delay_seconds(input.move_right_arrow+1000, time_offset_seconds)
	time_offset_seconds += 0.18
	level1.append_value_with_delay_seconds(input.shuriken_b, time_offset_seconds)
	time_offset_seconds += 0.1
	level1.append_value_with_delay_seconds(input.shuriken_b+1000, time_offset_seconds)
	time_offset_seconds += 0.3
	level1.append_value_with_delay_seconds(input.jump_a, time_offset_seconds)
	time_offset_seconds += 0.3
	level1.append_value_with_delay_seconds(input.jump_a+1000, time_offset_seconds)
	time_offset_seconds += 0.1

	level1.append_value_with_delay_seconds(input.move_left_arrow, time_offset_seconds)
	time_offset_seconds += 0.1
	level1.append_value_with_delay_seconds(input.jump_a, time_offset_seconds)
	time_offset_seconds += 0.3
	level1.append_value_with_delay_seconds(input.jump_a+1000, time_offset_seconds)
	time_offset_seconds += 0.05
	level1.append_value_with_delay_seconds(input.move_left_arrow+1000, time_offset_seconds)
	time_offset_seconds += 0.05
	level1.append_value_with_delay_seconds(input.move_right_arrow, time_offset_seconds)
	time_offset_seconds += 0.05
	level1.append_value_with_delay_seconds(input.sword_x, time_offset_seconds)
	time_offset_seconds += 0.05
	level1.append_value_with_delay_seconds(input.sword_x+1000, time_offset_seconds)
	time_offset_seconds += 0.05
	level1.append_value_with_delay_seconds(input.jump_a, time_offset_seconds)
	time_offset_seconds += 0.3
	level1.append_value_with_delay_seconds(input.jump_a+1000, time_offset_seconds)
	time_offset_seconds += 0.05
	level1.append_value_with_delay_seconds(input.jump_a, time_offset_seconds)
	time_offset_seconds += 0.3
	level1.append_value_with_delay_seconds(input.jump_a+1000, time_offset_seconds)
	time_offset_seconds += 0.05
	level1.append_value_with_delay_seconds(input.shuriken_b, time_offset_seconds)
	time_offset_seconds += 0.1
	level1.append_value_with_delay_seconds(input.shuriken_b+1000, time_offset_seconds )
	time_offset_seconds += 0.02
	level1.append_value_with_delay_seconds(input.move_right_arrow+1000, time_offset_seconds)
	time_offset_seconds += 2.0    
	on_integer_block_to_relay.emit(level1)
