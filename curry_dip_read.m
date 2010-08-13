function [loc,norm,mag] = curry_dip_read(filename,size)
% this function reads the dipole data and gives only the localisation-, normals- and magnitude segment

dat=fopen(filename,'r','l');

format long

while feof(dat)==0
    TxtLine = fgets(dat);
    st = TxtLine(1:end-1);
        
    sl = strfind(st,'LOCATION_LIST START_LIST');
    if ~isempty(sl) 
        break; end;
end

    loc = textscan(dat,'%f %f %f');
    
while feof(dat)==0
    TxtLine = fgets(dat);
    st = TxtLine(1:end-1);
        
    sl = strfind(st,'NORMALS_LIST START_LIST');
    if ~isempty(sl) 
        break; end;
end

    norm = textscan(dat,'%f %f %f');

while feof(dat)==0
    TxtLine = fgets(dat);
    st = TxtLine(1:end-1);
        
    sl = strfind(st,'STRENGTH_LIST START_LIST');
    if ~isempty(sl) 
        break; end;
end

    mag = textscan(dat,'%f');