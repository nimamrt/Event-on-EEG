
function [data]=open_files()
 % file name
   [fname, fdir] = uigetfile( ...
   {'*.csv', 'CSV Files (*.csv)'; ...
   '*.xlsx', 'Excel Files (*.xlsx)'; ...
   '*.txt*', 'Text Files (*.txt*)'}, ...
   'Pick a file');

 % string
   filename = fullfile(fdir, fname);

 % Check that file exists
   assert(exist(filename, 'file') == 2, '%s does not exist.', filename);

 % Read
   data = csvread(filename,5,2);

% open the BCI file & Import on eeglab & stick the EVENT

data=data' %transpose data for channel

data(end+1,:)=zeros %creat one zero row data length
a=input('please input your event type: (0=auto) (1=manual): ')
if a==0 

t=input('please input the event time (S) : ')

L=length(data)

eeg_time=L/256

event_number=eeg_time/t

FS=256

%et=event_number*t
b=t

for i=1:event_number;
    
   c=['event',num2str(i)];
   c=b.*FS;
   b=b+t ;
   data(end,c)=ones
   
end

else
    
   t=input('please input the event time (S) : ')
   L=length(data)
   eeg_time=L/256
    
   %event_number=eeg_time/t
   FS=256
    
for i=1:eeg_time;
 
  c=['event',num2str(i)];
  t=input('please input the event time (S) : ')
  
  if t==0 
  break
  
  else
      
  c=t.*FS;
  data(end,c)=ones;
      
  end
  
end

end

end