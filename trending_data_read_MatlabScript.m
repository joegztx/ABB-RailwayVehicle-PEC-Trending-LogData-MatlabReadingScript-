%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%% this m file is used to read the log data from ABB PEC trending
clc
clear
close all

% file path
fpn='C:\Users\lirui\Desktop\10.0.1.16 @ 8-4-2020 9-54-29 PM';

% data read
D=dir(fpn);
fD=D(~([D.isdir]));
% time shift, used to change the zero point of time window
t1=0;

% examples
F_w=0.001*logdata_extract_to_timeseries([fpn,'\',fD(filesearch(fD,'APP_EM1_EMC1_w')).name],t1);%kN
F_r=0.001*logdata_extract_to_timeseries([fpn,'\',fD(filesearch(fD,'BW_MC1_E')).name],t1);%kN
m=0.001*logdata_extract_to_timeseries([fpn,'\',fD(filesearch(fD,'APP_SYS_M_Ve')).name],t1);%ton


