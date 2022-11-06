% COMMON_PRE.m
function [fire, trans] = COMMON_PRE(trans)
global global_info

tokID1 = [];

% first we handle the aisle, the logic here is that the aisle can only fire
% when its been enabled. The aisle will get disabled while the side
% transitions are firing to simulate people blocking the aisle while they
% stow their baggage and move into their seat.
if strcmp(trans.name, 'tA01')
    fire = eq(global_info.A01, 1);
elseif strcmp(trans.name, 'tA02')
    fire = eq(global_info.A02, 1);
elseif strcmp(trans.name, 'tA03')
    fire = eq(global_info.A03, 1);
elseif strcmp(trans.name, 'tA04')
    fire = eq(global_info.A04, 1);
elseif strcmp(trans.name, 'tA05')
    fire = eq(global_info.A05, 1);
elseif strcmp(trans.name, 'tA06')
    fire = eq(global_info.A06, 1);
elseif strcmp(trans.name, 'tA07')
    fire = eq(global_info.A07, 1);
elseif strcmp(trans.name, 'tA08')
    fire = eq(global_info.A08, 1);
elseif strcmp(trans.name, 'tA09')
    fire = eq(global_info.A09, 1);
elseif strcmp(trans.name, 'tA10')
    fire = eq(global_info.A10, 1);
elseif strcmp(trans.name, 'tA1')
    fire = eq(global_info.A11, 1);
elseif strcmp(trans.name, 'tA12')
    fire = eq(global_info.A12, 1);
% all the left side transitions, They dont need to disable the aisle
% because it disables it self to be re-enabled for the next token either by
% the left-right transition or by the next aisle transition
elseif strcmp(trans.name, 'tL01')
    tokID1 = tokenEXColor('pA01',1,'A');
    fire = tokID1;
elseif strcmp(trans.name, 'tL02')
    tokID1 = tokenEXColor('pA02',1,'B');
    fire = tokID1;
elseif strcmp(trans.name, 'tL03')
    tokID1 = tokenEXColor('pA03',1,'C');
    fire = tokID1;
elseif strcmp(trans.name, 'tL04')
    tokID1 = tokenEXColor('pA04',1,'D');
    fire = tokID1;
elseif strcmp(trans.name, 'tL05')
    tokID1 = tokenEXColor('pA05',1,'E');
    fire = tokID1;
elseif strcmp(trans.name, 'tL06')
    tokID1 = tokenEXColor('pA06',1,'F');
    fire = tokID1;
elseif strcmp(trans.name, 'tL07')
    tokID1 = tokenEXColor('pA07',1,'G');
    fire = tokID1;
elseif strcmp(trans.name, 'tL08')
    tokID1 = tokenEXColor('pA08',1,'H');
    fire = tokID1;
elseif strcmp(trans.name, 'tL09')
    tokID1 = tokenEXColor('pA09',1,'I');
    fire = tokID1;
elseif strcmp(trans.name, 'tL10')
    tokID1 = tokenEXColor('pA10',1,'J');
    fire = tokID1;
elseif strcmp(trans.name, 'tL11')
    tokID1 = tokenEXColor('pA11',1,'K');
    fire = tokID1;
elseif strcmp(trans.name, 'tL12')
    tokID1 = tokenEXColor('pA12',1,'L');
    fire = tokID1;
elseif strcmp(trans.name, 'tR01')
    tokID1 = tokenEXColor('pA01',1,'Z');
    fire = tokID1;
elseif strcmp(trans.name, 'tR02')
    tokID1 = tokenEXColor('pA02',1,'Y');
    fire = tokID1;
elseif strcmp(trans.name, 'tR03')
    tokID1 = tokenEXColor('pA03',1,'X');
    fire = tokID1;
elseif strcmp(trans.name, 'tR04')
    tokID1 = tokenEXColor('pA04',1,'W');
    fire = tokID1;
elseif strcmp(trans.name, 'tR05')
    tokID1 = tokenEXColor('pA05',1,'V');
    fire = tokID1;
elseif strcmp(trans.name, 'tR06')
    tokID1 = tokenEXColor('pA06',1,'U');
    fire = tokID1;
elseif strcmp(trans.name, 'tR07')
    tokID1 = tokenEXColor('pA07',1,'T');
    fire = tokID1;
elseif strcmp(trans.name, 'tR08')
    tokID1 = tokenEXColor('pA08',1,'S');
    fire = tokID1;
elseif strcmp(trans.name, 'tR09')
    tokID1 = tokenEXColor('pA09',1,'R');
    fire = tokID1;
elseif strcmp(trans.name, 'tR10')
    tokID1 = tokenEXColor('pA10',1,'Q');
    fire = tokID1;
elseif strcmp(trans.name, 'tR11')
    tokID1 = tokenEXColor('pA11',1,'P');
    fire = tokID1;
elseif strcmp(trans.name, 'tR12')
    tokID1 = tokenEXColor('pA12',1,'O');
    fire = tokID1;
else
    fire = 1;
    % nothing special
end
