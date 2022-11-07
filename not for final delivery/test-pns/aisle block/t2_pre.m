function [fire, transition] = t2_pre (transition)

global global_info
 
if eq(global_info.CASE, 1), 
    % Case = 1: t1 is preffered,
    % In this case, block t2, if t1 is enabled and same for t3
    fire = not(is_enabled('t1'));
elseif eq(global_info.CASE, 3), 
    fire = not(is_enabled('t3'));
else
    % Case-2: t2 is preferred,
    % thus, fire t2, if it is enabled
    fire = 1;
    %global_info.CASE = 3;
    global_info.countT1 = global_info.countT1 + 1;
    if global_info.countT1 > 12
       global_info.countT1 = 0;
       global_info.CASE = 3;  
    end
end
