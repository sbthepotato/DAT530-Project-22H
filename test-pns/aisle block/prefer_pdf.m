% Sample application of pre-processor files
% PDF: prefer_pdf.m

function [pns] = prefer_pdf() 

pns.PN_name = 'Preference example';
pns.set_of_Ps = {'pS', 'pE1', 'pE2','pE3'};
pns.set_of_Ts = {'t1','t2','t3'}; 
pns.set_of_As = {'pS','t1',1, 't1','pE1',1,...
    'pS','t2',1, 't2','pE2',1,...
    'pS','t3',1, 't3','pE3',1};
