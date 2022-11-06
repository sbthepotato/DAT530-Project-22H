function [] = COMMON_POST(trans)

global global_info

% re-enable the aisle transition after the side transition has finished
% firing. 
if strcmp(trans.name, 'tL01')
    global_info.A01 = 1;
elseif strcmp(trans.name, 'tR01')
    global_info.A01 = 1;
elseif strcmp(trans.name, 'tL02')
    global_info.A02 = 1;
elseif strcmp(trans.name, 'tR02')
    global_info.A02 = 1;
elseif strcmp(trans.name, 'tL03')
    global_info.A03 = 1;
elseif strcmp(trans.name, 'tR03')
    global_info.A03 = 1;
elseif strcmp(trans.name, 'tL04')
    global_info.A04 = 1;
elseif strcmp(trans.name, 'tR04')
    global_info.A04 = 1;
elseif strcmp(trans.name, 'tL05')
    global_info.A05 = 1;
elseif strcmp(trans.name, 'tR05')
    global_info.A05 = 1;
elseif strcmp(trans.name, 'tL06')
    global_info.A06 = 1;
elseif strcmp(trans.name, 'tR06')
    global_info.A06 = 1;
elseif strcmp(trans.name, 'tL07')
    global_info.A07 = 1;
elseif strcmp(trans.name, 'tR07')
    global_info.A07 = 1;
elseif strcmp(trans.name, 'tL08')
    global_info.A08 = 1;
elseif strcmp(trans.name, 'tR08')
    global_info.A08 = 1;
elseif strcmp(trans.name, 'tL09')
    global_info.A09 = 1;
elseif strcmp(trans.name, 'tR09')
    global_info.A09 = 1;
elseif strcmp(trans.name, 'tL10')
    global_info.A10 = 1;
elseif strcmp(trans.name, 'tR10')
    global_info.A10 = 1;
elseif strcmp(trans.name, 'tL11')
    global_info.A11 = 1;
elseif strcmp(trans.name, 'tR11')
    global_info.A11 = 1;
elseif strcmp(trans.name, 'tL12')
    global_info.A12 = 1;
elseif strcmp(trans.name, 'tR12')
    global_info.A12 = 1;
% when the aisle transitions fire they should disable themselves to prevent
% a single aisle place from having more than 2 tokens at once. a aisle
% transition can then re-enable the previous aisle transition to avoid it
% being blocked forever.
elseif strcmp(trans.name, 'tA01')
    global_info.A01 = 0;
    global_info.init = 1;
elseif strcmp(trans.name, 'tA02')
    global_info.A02 = 0;
    global_info.A01 = 1;
elseif strcmp(trans.name, 'tA03')
    global_info.A03 = 0;
    global_info.A02 = 1;
elseif strcmp(trans.name, 'tA04')
    global_info.A04 = 0;
    global_info.A03 = 1;
elseif strcmp(trans.name, 'tA05')
    global_info.A05 = 0;
    global_info.A04 = 1;
elseif strcmp(trans.name, 'tA06')
    global_info.A06 = 0;
    global_info.A05 = 1;
elseif strcmp(trans.name, 'tA07')
    global_info.A07 = 0;
    global_info.A06 = 1;
elseif strcmp(trans.name, 'tA08')
    global_info.A08 = 0;
    global_info.A07 = 1;
elseif strcmp(trans.name, 'tA09')
    global_info.A09 = 0;
    global_info.A08 = 1;
elseif strcmp(trans.name, 'tA10')
    global_info.A10 = 0;
    global_info.A09 = 1;
elseif strcmp(trans.name, 'tA11')
    global_info.A11 = 0;
    global_info.A10 = 1;
elseif strcmp(trans.name, 'tA12')
    global_info.A12 = 0;
    global_info.A11 = 1;
elseif strcmp(trans.name, 'tInit')
    global_info.init = 0;
else
    % nothing
end
