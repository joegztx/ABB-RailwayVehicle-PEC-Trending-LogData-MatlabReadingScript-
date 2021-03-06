function data=logdata_extract_to_timeseries(fp,t_shift)
% Arguments 
%fp:file path 
%t_shift: shift the zero point,s 
%x: data,x
%y: data,y
%ts: start time
%data: data
A = importdata(fp); %Import from the log file
%LogInfo=A.textdata;

timestamp=(A(:,2)-621355968000000000)/10000000;% time unit: seconds
%ts=(timestamp(1)+8*3600)/(24*3600)+70*365+18;% time unit: days
x=timestamp-timestamp(1)+t_shift;
%x=timestamp;
y=A(:,1);
data=timeseries(y,x);
