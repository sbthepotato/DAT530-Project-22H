clear all; clc;
global global_info;

global_info.STOP_AT = 60;

pns = pnstruct('seatshuffle_pn_pdf');

times = [5, 10];

dyn.m0 = {'p1', 4};
%dyn.ft = {'tIn', 10, 'allothers', 1};
dyn.ft = {'tIn', '20 + 10*randn(1)', 'allothers', 1};

pni = initialdynamics(pns, dyn); 

sim = gpensim(pni);
 
plotp(sim, {'p1','pRepeat', 'p2'});
prnss(sim);
