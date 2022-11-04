function [fire, transition] = t3_pre(transition)

global global_info

index = mod(global_info.cr_index, 4)+1;
global_info.cr_index = global_info.cr_index + 1;
transition.new_color = global_info.cr(index);
fire = 1;