function [fire, transition] = tInit3_pre(transition)

global global_info

% if we're in the correct group and we can fire
if global_info.currentGroup == 3 && global_info.init == 1
    % get the colour rotation index
    index = mod(global_info.cr_index, 24)+1;
    % increment the index
    global_info.cr_index = global_info.cr_index + 1;
    % set the new colour
    transition.new_color = global_info.cr3(index);
    fire = 1;
    global_info.boarded = global_info.boarded + 1;
    % when group has finished boarding reset and do next group
    if global_info.boarded == 24
       global_info.cr_index = 0;
       global_info.boarded = 0;
       global_info.currentGroup = 1;  
    end
else
    fire = 0;
end