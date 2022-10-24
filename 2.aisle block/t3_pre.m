function [fire, transition] = t3_pre (transition)

global global_info
 
if eq(global_info.CASE, 1), 
    % Case = 2: t2 is preferred,
    % In this case, block t2, and t3 if t2 is enabled
    fire = not(is_enabled('t1'));
elseif eq(global_info.CASE, 2), 
    fire = not(is_enabled('t2'));
else
    % Case = 3: t3 is preferred
    % fire t3 if it is enabled,
    fire = 1;
    %global_info.CASE = 1;
    global_info.countT1 = global_info.countT1 + 1;
    if global_info.countT1 > 12
       global_info.countT1 = 0;
       global_info.CASE = 1;  
    end
end
