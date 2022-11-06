function [fire, transition] = tInit3_pre(transition)

global global_info

% if we're in the correct group and we can fire
if global_info.currentGroup == 3 && global_info.init == 1
    index = mod(global_info.cr_index, 24)+1;
    global_info.cr_index = global_info.cr_index + 1;
    transition.new_color = global_info.cr3(index);
    fire = 1;
    global_info.boarded = global_info.boarded + 1;
    if global_info.boarded == 24
       global_info.cr_index = 0;
       global_info.boarded = 0;
       global_info.currentGroup = 1;  
    end
else
    fire = 0;
end