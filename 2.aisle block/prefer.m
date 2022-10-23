% Prevent Isle blocking pre-processor files
% MSF:prefer.m

clear all; clc;

global global_info

global_info.STOP_AT = 90;   % Stop after 110 time units

% CASE = 1: t1 is preferred; 
% CASE = 2: t2 is preferred
% CASE = 3: t3 is preferred
global_info.CASE = 1; % t1 is preferred
 
pns = pnstruct('prefer_pdf');
 
dyn.ft = {'allothers',10};  % firing times for all the transition is 10 TU
dyn.m0 = {'pS',4};
pni = initialdynamics(pns, dyn); 

sim_results = gpensim(pni);
prnss(sim_results);
plotp(sim_results, {'pE1', 'pE2','pE3'}); 
