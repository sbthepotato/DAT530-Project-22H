function [fire, transition] = t1_pre (transition)

global global_info
 
if eq(global_info.CASE, 2), 
    % Case = 2: t2 is preferred
    % if t2 is also enabled,
    fire = not(is_enabled('t2'));
elseif eq(global_info.CASE, 3), 
    % Case = 3: t3 is preferred
    % if t3 is also enabled,
    fire = not(is_enabled('t3'));
else
    % Case-1: t1 is preffered 
    % thus, fire t1, whenever it is enabled 
    fire = 1;
end
