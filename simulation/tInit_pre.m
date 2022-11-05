function [fire, transition] = tInit_pre(transition)

global global_info

index = mod(global_info.cr_index, 24)+1;
global_info.cr_index = global_info.cr_index + 1;
transition.new_color = global_info.cr(index);
fire = 1;