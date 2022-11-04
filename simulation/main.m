clear all; clc;
global global_info;

global_info.STOP_AT = 100;

pns = pnstruct('main_pn_pdf');

global_info.A01 = 1;
global_info.A02 = 1;
global_info.A03 = 1;
global_info.A04 = 1;
global_info.A05 = 1;
global_info.A06 = 1;
global_info.A07 = 1;
global_info.A08 = 1;
global_info.A09 = 1;
global_info.A10 = 1;
global_info.A11 = 1;
global_info.A12 = 1;

% token count
dyn.m0 = {'pStart',3};
% firing times
dyn.ft = {'allothers', 2};
% transition priority
dyn.ip = {'tL01',1,'tR01',1};

pni = initialdynamics(pns, dyn);

sim = gpensim(pni);

plotp(sim, {'pA00', ...
    'pL01','pA01','pR01', ...
    'pL02','pA02','pR02', ...
    'pL03','pA03','pR03', ...
    'pL04','pA04','pR04', ...
    'pL05','pA05','pR05', ...
    'pL06','pA06','pR06', ...
    'pL07','pA07','pR07', ...
    'pL08','pA08','pR08', ...
    'pL09','pA09','pR09', ...
    'pL10','pA10','pR10', ...
    'pL11','pA11','pR11', ...
    'pL12','pA12','pR12'
    });

prnss(sim);