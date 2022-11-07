function [png] = seatshuffle_pn_pdf()

png.PN_name = 'Simulating the seat shuffle delay';

png.set_of_Ps = {'p1', 'pRepeat', 'p2'};
png.set_of_Ts = {'tIn', 'tRepeat', 'tExit'};
%png.set_of_As = {'p1','tIn',1, 'tIn','pRepeat',1, 'pRepeat','tRepeat',1, 'tRepeat','pRepeat',1, ...
%    'pRepeat','tExit',1 ,'tExit','p2',1};

png.set_of_As = {'p1','tIn',1,'tIn','p2',1};
