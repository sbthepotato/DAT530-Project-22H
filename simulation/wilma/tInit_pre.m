function [fire, transition] = tInit_pre(transition)

global global_info

if global_info.init == 1
    % give colours to tokens passing through tinit
    index = mod(global_info.cr_index, 72)+1;
    global_info.cr_index = global_info.cr_index + 1;
    transition.new_color = global_info.cr(index);
    fire = 1;
 else
    fire = 0;
end