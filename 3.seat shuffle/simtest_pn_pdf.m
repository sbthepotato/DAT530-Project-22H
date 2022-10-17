function [png] = simtest_pn_pdf()

png.PN_name = 'simulation test petri net definition';

png.set_of_Ps = {'p0', 'pl1', 'pr1','pr1a','pr1b','pr1c'};
png.set_of_Ts = {'tl0', 'tr0',};
png.set_of_As = {'p0','tl0',1,'p0','tr0',1,'tl0','pl1',1,'tl0','pr1',1};
