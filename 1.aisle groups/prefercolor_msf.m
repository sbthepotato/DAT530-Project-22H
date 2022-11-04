function [fire, trans] = COMMON_PRE (trans)
tokID1 = [];
if strcmp(transition.name, 'tR'),
    tokID1 = tokenEXColor('pBUFF',1,'R');               
    fire = 1; % 'A' preferred
elseif strcmp(transition.name, 'tB'),
    tokID1 = tokenEXColor('pBUFF',1,'B');
    fire = tokID1; % 'B' required
elseif strcmp(transition.name, 'tG'), 
    tokID1 = tokenEXColor('pBUFF',1,'G');    
    fire = tokID1; % 'C' required
else  % tGEN
    fire = 1; % other transitions is tGEN, which has its own pre file 
end
transition.selected_tokens = tokID1;