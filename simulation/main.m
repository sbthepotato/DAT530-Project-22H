clear all; clc;
global global_info;

global_info.STOP_AT = 60;

global_info.cr = {'A','B','C','D','E','F','G','H','I','J','K','L' ...
    'Z','Y','X','W','V','U','T','S','R','Q','P','O'};
global_info.cr_index = 0;

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
dyn.m0 = {'pStart', 24};
% firing times
dyn.ft = {'allothers', 1};
% transition priority, prioritise side ones to make sure colours go down
% their pathway
dyn.ip = {'tL01',1,'tL02',1,'tL03',1,'tL04',1,'tL05',1,'tL06',1, ...
    'tL07',1,'tL08',1,'tL09',1,'tL10',1,'tL11',1,'tL12',1, ...
    'tR01',1,'tR02',1,'tR03',1,'tR04',1,'tR05',1,'tR06',1, ...
    'tR07',1,'tR08',1,'tR09',1,'tR10',1,'tR11',1,'tR12',1
};

pni = initialdynamics(pns, dyn);

sim = gpensim(pni);

% the whole model
plotp(sim, { ...
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

%{
% only the aisle
plotp(sim, { 'pA00', ...
    'pA01','pA02','pA03', 'pA04','pA05','pA06', ...
    'pA07','pA08','pA09','pA10','pA11','pA12'
});

% only the right side
plotp(sim, {...
    'pR01','pR02','pR03', 'pR04','pR05','pR06', ...
    'pR07','pR08','pR09','pR10','pR11','pR12'
});

% only the left side
plotp(sim, {...
    'pL01','pL02','pL03', 'pL04','pL05','pL06', ...
    'pL07','pL08','pL09','pL10','pL11','pL12'
});
%}

prnss(sim);
%prncolormap(sim);
%prnfinalcolors(sim);