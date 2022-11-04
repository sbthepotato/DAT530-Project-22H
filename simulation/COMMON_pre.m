% COMMON_PRE.m
function [fire, trans] = common_pre(trans)

global global_info

tokID1 = [];

if strcmp(trans.name, 'tA01'),
    fire = eq(global_info.A01, 1);
elseif strcmp(trans.name, 'tL01'),
    tokID1 = tokenEXColor('pA01',1,1);
    fire = tokID1;
    global_info.A01 = 0;
elseif strcmp(trans.name, 'tR01'),
    tokID1 = tokenEXColor('pA01',1,2);
    fire = tokID1;
    global_info.A01 = 0;


end;