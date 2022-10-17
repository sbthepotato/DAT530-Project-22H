clear all; clc;
global global_info;

global_info.STOP_AT = 45;

pns = pnstruct('simtest_pn_pdf');

dynamic.m0 = {'p0',6};
dynamic.ft = {'tl0',1,'tr0',1};

pni = initialdynamics(pns, dynamic); 

sim = gpensim(pni);
 
plotp(sim, {'p0','pl1','pr1'});
prnss(sim);
