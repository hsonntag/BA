   %> @file curry_dip_read.m
   %> @brief reads CURRY reconstruction data files
   % ======================================================================
   %> @brief CURRY_DIP_READ extracts localisations, normals and magnitudes
   %>
   %> CURRY_DIP_READ(F,S) reads the reconstruction *.dip data and gives only the localisation, normals and magnitude segment.
   %>
   %> @param filename of saved reconstruction data
   %> @param size number of elements to read
   %>
   %> @retval loc vector of reconstructed locations
   %> @retval norm vector of reconstructed normals
   %> @retval mag vector of reconstructed magnitudes
   % ======================================================================
function [loc,norm,mag] = curry_dip_read(filename,size)
% this function reads the reconstruction *.dip data and gives only the localisation, normals and magnitude segment

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
