function [] = COMMON_POST(trans)

global global_info

if strcmp(trans.name, 'tL01'),
    global_info.A01 = 1;
elseif strcmp(trans.name, 'tR01'),
    global_info.A01 = 1;
end;