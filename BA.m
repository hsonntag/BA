% von caudal nach cranial

clear all;
close all;
clc;

fetus_2099x = load('fetus_2099_1025_cran_x.dat');
fetus_2099y = load('fetus_2099_1025_cran_y.dat');
fetus_2099z = load('fetus_2099_1025_cran_z.dat');

fetus_2077x = load('fetus_2077_1025_cran_x.dat');
fetus_2077y = load('fetus_2077_1025_cran_y.dat');
fetus_2077z = load('fetus_2077_1025_cran_z.dat');

fetus_1655x = load('fetus_1655_1025_cran_x.dat');
fetus_1655y = load('fetus_1655_1025_cran_y.dat');
fetus_1655z = load('fetus_1655_1025_cran_z.dat');

fetus_1233x = load('fetus_1233_1025_cran_x.dat');
fetus_1233y = load('fetus_1233_1025_cran_y.dat');
fetus_1233z = load('fetus_1233_1025_cran_z.dat');

fetus_1233_D2x = load('fetus_1233_1025_D2_cran_x.dat');
fetus_1233_D2y = load('fetus_1233_1025_D2_cran_y.dat');
fetus_1233_D2z = load('fetus_1233_1025_D2_cran_z.dat');

fetus_1233_D3x = load('fetus_1233_1025_D3_cran_x.dat');
fetus_1233_D3y = load('fetus_1233_1025_D3_cran_y.dat');
fetus_1233_D3z = load('fetus_1233_1025_D3_cran_z.dat');

kopf_2099x = load('kopf_2099_1025_cran_x.dat');
kopf_2099y = load('kopf_2099_1025_cran_y.dat');
kopf_2099z = load('kopf_2099_1025_cran_z.dat');

kopf_2077x = load('kopf_2077_1025_cran_x.dat');
kopf_2077y = load('kopf_2077_1025_cran_y.dat');
kopf_2077z = load('kopf_2077_1025_cran_z.dat');

kopf_1655x = load('kopf_1655_1025_cran_x.dat');
kopf_1655y = load('kopf_1655_1025_cran_y.dat');
kopf_1655z = load('kopf_1655_1025_cran_z.dat');

kopf_1233x = load('kopf_1233_1025_cran_x.dat');
kopf_1233y = load('kopf_1233_1025_cran_y.dat');
kopf_1233z = load('kopf_1233_1025_cran_z.dat');

rdm_f1233_D2x=zeros(1025,1);
rdm_f1233_D2y=zeros(1025,1);
rdm_f1233_D2z=zeros(1025,1);

rdm_f1233_D3x=zeros(1025,1);
rdm_f1233_D3y=zeros(1025,1);
rdm_f1233_D3z=zeros(1025,1);

rdm_f1655x=zeros(1025,1);
rdm_f1655y=zeros(1025,1);
rdm_f1655z=zeros(1025,1);

rdm_f2077x=zeros(1025,1);
rdm_f2077y=zeros(1025,1);
rdm_f2077z=zeros(1025,1);

rdm_f2099x=zeros(1025,1);
rdm_f2099y=zeros(1025,1);
rdm_f2099z=zeros(1025,1);

rdm_k1233x=zeros(1025,1);
rdm_k1233y=zeros(1025,1);
rdm_k1233z=zeros(1025,1);

rdm_k1655x=zeros(1025,1);
rdm_k1655y=zeros(1025,1);
rdm_k1655z=zeros(1025,1);

rdm_k2077x=zeros(1025,1);
rdm_k2077y=zeros(1025,1);
rdm_k2077z=zeros(1025,1);

rdm_k2099x=zeros(1025,1);
rdm_k2099y=zeros(1025,1);
rdm_k2099z=zeros(1025,1);

rdm_kk1655x=zeros(1025,1);
rdm_kk1655y=zeros(1025,1);
rdm_kk1655z=zeros(1025,1);

rdm_kk2077x=zeros(1025,1);
rdm_kk2077y=zeros(1025,1);
rdm_kk2077z=zeros(1025,1);

rdm_kk2099x=zeros(1025,1);
rdm_kk2099y=zeros(1025,1);
rdm_kk2099z=zeros(1025,1);

mag_f1233_D2x=zeros(1025,1);
mag_f1233_D2y=zeros(1025,1);
mag_f1233_D2z=zeros(1025,1);

mag_f1233_D3x=zeros(1025,1);
mag_f1233_D3y=zeros(1025,1);
mag_f1233_D3z=zeros(1025,1);

mag_f1655x=zeros(1025,1);
mag_f1655y=zeros(1025,1);
mag_f1655z=zeros(1025,1);

mag_f2077x=zeros(1025,1);
mag_f2077y=zeros(1025,1);
mag_f2077z=zeros(1025,1);

mag_f2099x=zeros(1025,1);
mag_f2099y=zeros(1025,1);
mag_f2099z=zeros(1025,1);

mag_k1233x=zeros(1025,1);
mag_k1233y=zeros(1025,1);
mag_k1233z=zeros(1025,1);

mag_k1655x=zeros(1025,1);
mag_k1655y=zeros(1025,1);
mag_k1655z=zeros(1025,1);

mag_k2077x=zeros(1025,1);
mag_k2077y=zeros(1025,1);
mag_k2077z=zeros(1025,1);

mag_k2099x=zeros(1025,1);
mag_k2099y=zeros(1025,1);
mag_k2099z=zeros(1025,1);

mag_kk1655x=zeros(1025,1);
mag_kk1655y=zeros(1025,1);
mag_kk1655z=zeros(1025,1);

mag_kk2077x=zeros(1025,1);
mag_kk2077y=zeros(1025,1);
mag_kk2077z=zeros(1025,1);

mag_kk2099x=zeros(1025,1);
mag_kk2099y=zeros(1025,1);
mag_kk2099z=zeros(1025,1);


format long

for i=1:1025
    rdm_f1233_D2x(i)=rdm(fetus_1233_D2x(i,:),fetus_1233x(i,:));
    rdm_f1233_D2y(i)=rdm(fetus_1233_D2y(i,:),fetus_1233y(i,:));
    rdm_f1233_D2z(i)=rdm(fetus_1233_D2z(i,:),fetus_1233z(i,:));
    
    rdm_f1233_D3x(i)=rdm(fetus_1233_D3x(i,:),fetus_1233x(i,:));
    rdm_f1233_D3y(i)=rdm(fetus_1233_D3y(i,:),fetus_1233y(i,:));
    rdm_f1233_D3z(i)=rdm(fetus_1233_D3z(i,:),fetus_1233z(i,:));
    
    rdm_f1655x(i)=rdm(fetus_1655x(i,:),fetus_1233x(i,:));
    rdm_f1655y(i)=rdm(fetus_1655y(i,:),fetus_1233y(i,:));
    rdm_f1655z(i)=rdm(fetus_1655z(i,:),fetus_1233z(i,:));
    
    rdm_f2077x(i)=rdm(fetus_2077x(i,:),fetus_1233x(i,:));
    rdm_f2077y(i)=rdm(fetus_2077y(i,:),fetus_1233y(i,:));
    rdm_f2077z(i)=rdm(fetus_2077z(i,:),fetus_1233z(i,:));
    
    rdm_f2099x(i)=rdm(fetus_2099x(i,:),fetus_1233x(i,:));
    rdm_f2099y(i)=rdm(fetus_2099y(i,:),fetus_1233y(i,:));
    rdm_f2099z(i)=rdm(fetus_2099z(i,:),fetus_1233z(i,:));
    
    rdm_k1233x(i)=rdm(kopf_1233x(i,:),fetus_1233x(i,:));
    rdm_k1233y(i)=rdm(kopf_1233y(i,:),fetus_1233y(i,:));
    rdm_k1233z(i)=rdm(kopf_1233z(i,:),fetus_1233z(i,:));
    
    rdm_k1655x(i)=rdm(kopf_1655x(i,:),fetus_1233x(i,:));
    rdm_k1655y(i)=rdm(kopf_1655y(i,:),fetus_1233y(i,:));
    rdm_k1655z(i)=rdm(kopf_1655z(i,:),fetus_1233z(i,:));
    
    rdm_k2077x(i)=rdm(kopf_2077x(i,:),fetus_1233x(i,:));
    rdm_k2077y(i)=rdm(kopf_2077y(i,:),fetus_1233y(i,:));
    rdm_k2077z(i)=rdm(kopf_2077z(i,:),fetus_1233z(i,:));
    
    rdm_k2099x(i)=rdm(kopf_2099x(i,:),fetus_1233x(i,:));
    rdm_k2099y(i)=rdm(kopf_2099y(i,:),fetus_1233y(i,:));
    rdm_k2099z(i)=rdm(kopf_2099z(i,:),fetus_1233z(i,:));
    
    rdm_kk1655x(i)=rdm(kopf_1655x(i,:),kopf_1233x(i,:));
    rdm_kk1655y(i)=rdm(kopf_1655y(i,:),kopf_1233y(i,:));
    rdm_kk1655z(i)=rdm(kopf_1655z(i,:),kopf_1233z(i,:));
    
    rdm_kk2077x(i)=rdm(kopf_2077x(i,:),kopf_1233x(i,:));
    rdm_kk2077y(i)=rdm(kopf_2077y(i,:),kopf_1233y(i,:));
    rdm_kk2077z(i)=rdm(kopf_2077z(i,:),kopf_1233z(i,:));
    
    rdm_kk2099x(i)=rdm(kopf_2099x(i,:),kopf_1233x(i,:));
    rdm_kk2099y(i)=rdm(kopf_2099y(i,:),kopf_1233y(i,:));
    rdm_kk2099z(i)=rdm(kopf_2099z(i,:),kopf_1233z(i,:));
end;

rdm_f1233_D3x_cran_m = mean(rdm_f1233_D3x);
rdm_f1233_D3y_cran_m = mean(rdm_f1233_D3y);
rdm_f1233_D3z_cran_m = mean(rdm_f1233_D3z);
rdm_f1233_D2x_cran_m = mean(rdm_f1233_D2x);
rdm_f1233_D2y_cran_m = mean(rdm_f1233_D2y);
rdm_f1233_D2z_cran_m = mean(rdm_f1233_D2z);
rdm_f1655x_cran_m = mean(rdm_f1655x);
rdm_f1655y_cran_m = mean(rdm_f1655y);
rdm_f1655z_cran_m = mean(rdm_f1655z);
rdm_f2077x_cran_m = mean(rdm_f2077x);
rdm_f2077y_cran_m = mean(rdm_f2077y);
rdm_f2077z_cran_m = mean(rdm_f2077z);
rdm_f2099x_cran_m = mean(rdm_f2099x);
rdm_f2099y_cran_m = mean(rdm_f2099y);
rdm_f2099z_cran_m = mean(rdm_f2099z);
rdm_k1233x_cran_m = mean(rdm_k1233x);
rdm_k1233y_cran_m = mean(rdm_k1233y);
rdm_k1233z_cran_m = mean(rdm_k1233z);
rdm_k1655x_cran_m = mean(rdm_k1655x);
rdm_k1655y_cran_m = mean(rdm_k1655y);
rdm_k1655z_cran_m = mean(rdm_k1655z);
rdm_k2077x_cran_m = mean(rdm_k2077x);
rdm_k2077y_cran_m = mean(rdm_k2077y);
rdm_k2077z_cran_m = mean(rdm_k2077z);
rdm_k2099x_cran_m = mean(rdm_k2099x);
rdm_k2099y_cran_m = mean(rdm_k2099y);
rdm_k2099z_cran_m = mean(rdm_k2099z);
rdm_kk1655x_cran_m = mean(rdm_kk1655x);
rdm_kk1655y_cran_m = mean(rdm_kk1655y);
rdm_kk1655z_cran_m = mean(rdm_kk1655z);
rdm_kk2077x_cran_m = mean(rdm_kk2077x);
rdm_kk2077y_cran_m = mean(rdm_kk2077y);
rdm_kk2077z_cran_m = mean(rdm_kk2077z);
rdm_kk2099x_cran_m = mean(rdm_kk2099x);
rdm_kk2099y_cran_m = mean(rdm_kk2099y);
rdm_kk2099z_cran_m = mean(rdm_kk2099z);

rdm_f1233_D3x_cran_s = std(rdm_f1233_D3x);
rdm_f1233_D3y_cran_s = std(rdm_f1233_D3y);
rdm_f1233_D3z_cran_s = std(rdm_f1233_D3z);
rdm_f1233_D2x_cran_s = std(rdm_f1233_D2x);
rdm_f1233_D2y_cran_s = std(rdm_f1233_D2y);
rdm_f1233_D2z_cran_s = std(rdm_f1233_D2z);
rdm_f1655x_cran_s    = std(rdm_f1655x);
rdm_f1655y_cran_s    = std(rdm_f1655y);
rdm_f1655z_cran_s    = std(rdm_f1655z);
rdm_f2077x_cran_s    = std(rdm_f2077x);
rdm_f2077y_cran_s    = std(rdm_f2077y);
rdm_f2077z_cran_s    = std(rdm_f2077z);
rdm_f2099x_cran_s    = std(rdm_f2099x);
rdm_f2099y_cran_s    = std(rdm_f2099y);
rdm_f2099z_cran_s    = std(rdm_f2099z);
rdm_k1233x_cran_s    = std(rdm_k1233x);
rdm_k1233y_cran_s    = std(rdm_k1233y);
rdm_k1233z_cran_s    = std(rdm_k1233z);
rdm_k1655x_cran_s    = std(rdm_k1655x);
rdm_k1655y_cran_s    = std(rdm_k1655y);
rdm_k1655z_cran_s    = std(rdm_k1655z);
rdm_k2077x_cran_s    = std(rdm_k2077x);
rdm_k2077y_cran_s    = std(rdm_k2077y);
rdm_k2077z_cran_s    = std(rdm_k2077z);
rdm_k2099x_cran_s    = std(rdm_k2099x);
rdm_k2099y_cran_s    = std(rdm_k2099y);
rdm_k2099z_cran_s    = std(rdm_k2099z);
rdm_kk1655x_cran_s   = std(rdm_kk1655x);
rdm_kk1655y_cran_s   = std(rdm_kk1655y);
rdm_kk1655z_cran_s   = std(rdm_kk1655z);
rdm_kk2077x_cran_s   = std(rdm_kk2077x);
rdm_kk2077y_cran_s   = std(rdm_kk2077y);
rdm_kk2077z_cran_s   = std(rdm_kk2077z);
rdm_kk2099x_cran_s   = std(rdm_kk2099x);
rdm_kk2099y_cran_s   = std(rdm_kk2099y);
rdm_kk2099z_cran_s   = std(rdm_kk2099z);

rdm_f1233_D3_cran_m = mean(mean([rdm_f1233_D3x,rdm_f1233_D3y,rdm_f1233_D3z],2));
rdm_f1233_D3_cran_s = std(mean([rdm_f1233_D3x,rdm_f1233_D3y,rdm_f1233_D3z],2));

rdm_f1233_D2_cran_m = mean(mean([rdm_f1233_D2x,rdm_f1233_D2y,rdm_f1233_D2z],2));
rdm_f1233_D2_cran_s = std(mean([rdm_f1233_D2x,rdm_f1233_D2y,rdm_f1233_D2z],2));

% rdm_f1233_cran_m = mean(mean([rdm_f1233x,rdm_f1233y,rdm_f1233z],2));
% rdm_f1233_cran_s = std(mean([rdm_f1233x,rdm_f1233y,rdm_f1233z],2));

rdm_f1655_cran_m = mean(mean([rdm_f1655x,rdm_f1655y,rdm_f1655z],2));
rdm_f1655_cran_s = std(mean([rdm_f1655x,rdm_f1655y,rdm_f1655z],2));

rdm_f2077_cran_m = mean(mean([rdm_f2077x,rdm_f2077y,rdm_f2077z],2));
rdm_f2077_cran_s = std(mean([rdm_f2077x,rdm_f2077y,rdm_f2077z],2));

rdm_f2099_cran_m = mean(mean([rdm_f2099x,rdm_f2099y,rdm_f2099z],2));
rdm_f2099_cran_s = std(mean([rdm_f2099x,rdm_f2099y,rdm_f2099z],2));

rdm_k1233_cran_m = mean(mean([rdm_k1233x,rdm_k1233y,rdm_k1233z],2));
rdm_k1233_cran_s = std(mean([rdm_k1233x,rdm_k1233y,rdm_k1233z],2));

rdm_k1655_cran_m = mean(mean([rdm_k1655x,rdm_k1655y,rdm_k1655z],2));
rdm_k1655_cran_s = std(mean([rdm_k1655x,rdm_k1655y,rdm_k1655z],2));

rdm_k2077_cran_m = mean(mean([rdm_k2077x,rdm_k2077y,rdm_k2077z],2));
rdm_k2077_cran_s = std(mean([rdm_k2077x,rdm_k2077y,rdm_k2077z],2));

rdm_k2099_cran_m = mean(mean([rdm_k2099x,rdm_k2099y,rdm_k2099z],2));
rdm_k2099_cran_s = std(mean([rdm_k2099x,rdm_k2099y,rdm_k2099z],2));

rdm_kk1655_cran_m = mean(mean([rdm_kk1655x,rdm_kk1655y,rdm_kk1655z],2));
rdm_kk1655_cran_s = std(mean([rdm_kk1655x,rdm_kk1655y,rdm_kk1655z],2));

rdm_kk2077_cran_m = mean(mean([rdm_kk2077x,rdm_kk2077y,rdm_kk2077z],2));
rdm_kk2077_cran_s = std(mean([rdm_kk2077x,rdm_kk2077y,rdm_kk2077z],2));

rdm_kk2099_cran_m = mean(mean([rdm_kk2099x,rdm_kk2099y,rdm_kk2099z],2));
rdm_kk2099_cran_s = std(mean([rdm_kk2099x,rdm_kk2099y,rdm_kk2099z],2));


% rdm_fetus_vernix_cran_x = [rdm_f1233_D3x_cran_m rdm_f1233_D2x_cran_m];
% rdm_fetus_vernix_cran_x_std = [rdm_f1233_D3x_cran_s rdm_f1233_D2x_cran_s];
% 
% rdm_fetus_cran_x = [rdm_f1655x_cran_m
%     rdm_f2077x_cran_m
%     rdm_f2099x_cran_m
%     rdm_k1233x_cran_m
%     rdm_k1655x_cran_m
%     rdm_k2077x_cran_m
%     rdm_k2099x_cran_m];
% 
% rdm_fetus_cran_x_std = [rdm_f1655x_cran_s
%     rdm_f2077x_cran_s
%     rdm_f2099x_cran_s
%     rdm_k1233x_cran_s
%     rdm_k1655x_cran_s
%     rdm_k2077x_cran_s
%     rdm_k2099x_cran_s];
% 
% rdm_kopf_cran_x = [
%     rdm_kk1655x_cran_m
%     rdm_kk2077x_cran_m
%     rdm_kk2099x_cran_m];
% 
% rdm_kopf_cran_x_std = [
%     rdm_kk1655x_cran_s
%     rdm_kk2077x_cran_s
%     rdm_kk2099x_cran_s];
% 
% rdm_fetus_vernix_cran_y = [rdm_f1233_D3y_cran_m rdm_f1233_D2y_cran_m];
% rdm_fetus_vernix_cran_y_std = [rdm_f1233_D3y_cran_s rdm_f1233_D2y_cran_s];
% 
% rdm_fetus_cran_y = [rdm_f1655y_cran_m
%     rdm_f2077y_cran_m
%     rdm_f2099y_cran_m
%     rdm_k1233y_cran_m
%     rdm_k1655y_cran_m
%     rdm_k2077y_cran_m
%     rdm_k2099y_cran_m];
% 
% rdm_fetus_cran_y_std = [rdm_f1655y_cran_s
%     rdm_f2077y_cran_s
%     rdm_f2099y_cran_s
%     rdm_k1233y_cran_s
%     rdm_k1655y_cran_s
%     rdm_k2077y_cran_s
%     rdm_k2099y_cran_s];
% 
% rdm_kopf_cran_y = [
%     rdm_kk1655y_cran_m
%     rdm_kk2077y_cran_m
%     rdm_kk2099y_cran_m];
% 
% rdm_kopf_cran_y_std = [
%     rdm_kk1655y_cran_s
%     rdm_kk2077y_cran_s
%     rdm_kk2099y_cran_s];
% 
% rdm_fetus_vernix_cran_z = [rdm_f1233_D3z_cran_m rdm_f1233_D2z_cran_m];
% rdm_fetus_vernix_cran_z_std = [rdm_f1233_D3z_cran_s rdm_f1233_D2z_cran_s];
% 
% rdm_fetus_cran_z = [rdm_f1655z_cran_m
%     rdm_f2077z_cran_m
%     rdm_f2099z_cran_m
%     rdm_k1233z_cran_m
%     rdm_k1655z_cran_m
%     rdm_k2077z_cran_m
%     rdm_k2099z_cran_m];
% 
% rdm_fetus_cran_z_std = [rdm_f1655z_cran_s
%     rdm_f2077z_cran_s
%     rdm_f2099z_cran_s
%     rdm_k1233z_cran_s
%     rdm_k1655z_cran_s
%     rdm_k2077z_cran_s
%     rdm_k2099z_cran_s];
% 
% rdm_kopf_cran_z = [
%     rdm_kk1655z_cran_m
%     rdm_kk2077z_cran_m
%     rdm_kk2099z_cran_m];
% 
% rdm_kopf_cran_z_std = [
%     rdm_kk1655z_cran_s
%     rdm_kk2077z_cran_s
%     rdm_kk2099z_cran_s];

for i=1:1025
    mag_f1233_D3x(i) = mag(fetus_1233_D3x(i,:), fetus_1233x(i,:));
    mag_f1233_D3y(i) = mag(fetus_1233_D3y(i,:),fetus_1233y(i,:));
    mag_f1233_D3z(i) = mag(fetus_1233_D3z(i,:),fetus_1233z(i,:));
    mag_f1233_D2x(i) = mag(fetus_1233_D2x(i,:),fetus_1233x(i,:));
    mag_f1233_D2y(i) = mag(fetus_1233_D2y(i,:),fetus_1233y(i,:));
    mag_f1233_D2z(i) = mag(fetus_1233_D2z(i,:),fetus_1233z(i,:));
    mag_f1655x(i)    = mag(fetus_1655x(i,:),fetus_1233x(i,:));
    mag_f1655y(i)    = mag(fetus_1655y(i,:),fetus_1233y(i,:));
    mag_f1655z(i)    = mag(fetus_1655z(i,:),fetus_1233z(i,:));
    mag_f2077x(i)    = mag(fetus_2077x(i,:),fetus_1233x(i,:));
    mag_f2077y(i)    = mag(fetus_2077y(i,:),fetus_1233y(i,:));
    mag_f2077z(i)    = mag(fetus_2077z(i,:),fetus_1233z(i,:));
    mag_f2099x(i)    = mag(fetus_2099x(i,:),fetus_1233x(i,:));
    mag_f2099y(i)    = mag(fetus_2099y(i,:),fetus_1233y(i,:));
    mag_f2099z(i)    = mag(fetus_2099z(i,:),fetus_1233z(i,:));
    mag_k1233x(i)    = mag(kopf_1233x(i,:),fetus_1233x(i,:));
    mag_k1233y(i)    = mag(kopf_1233y(i,:),fetus_1233y(i,:));
    mag_k1233z(i)    = mag(kopf_1233z(i,:),fetus_1233z(i,:));
    mag_k1655x(i)    = mag(kopf_1655x(i,:),fetus_1233x(i,:));
    mag_k1655y(i)    = mag(kopf_1655y(i,:),fetus_1233y(i,:));
    mag_k1655z(i)    = mag(kopf_1655z(i,:),fetus_1233z(i,:));
    mag_k2077x(i)    = mag(kopf_2077x(i,:),fetus_1233x(i,:));
    mag_k2077y(i)    = mag(kopf_2077y(i,:),fetus_1233y(i,:));
    mag_k2077z(i)    = mag(kopf_2077z(i,:),fetus_1233z(i,:));
    mag_k2099x(i)    = mag(kopf_2099x(i,:),fetus_1233x(i,:));
    mag_k2099y(i)    = mag(kopf_2099y(i,:),fetus_1233y(i,:));
    mag_k2099z(i)    = mag(kopf_2099z(i,:),fetus_1233z(i,:));
    mag_kk1655x(i)   = mag(kopf_1655x(i,:),kopf_1233x(i,:));
    mag_kk1655y(i)   = mag(kopf_1655y(i,:),kopf_1233y(i,:));
    mag_kk1655z(i)   = mag(kopf_1655z(i,:),kopf_1233z(i,:));
    mag_kk2077x(i)   = mag(kopf_2077x(i,:),kopf_1233x(i,:));
    mag_kk2077y(i)   = mag(kopf_2077y(i,:),kopf_1233y(i,:));
    mag_kk2077z(i)   = mag(kopf_2077z(i,:),kopf_1233z(i,:));
    mag_kk2099x(i)   = mag(kopf_2099x(i,:),kopf_1233x(i,:));
    mag_kk2099y(i)   = mag(kopf_2099y(i,:),kopf_1233y(i,:));
    mag_kk2099z(i)   = mag(kopf_2099z(i,:),kopf_1233z(i,:));
end;

mag_f1233_D3x_cran_m = mean(mag_f1233_D3x);
mag_f1233_D3y_cran_m = mean(mag_f1233_D3y);
mag_f1233_D3z_cran_m = mean(mag_f1233_D3z);
mag_f1233_D2x_cran_m = mean(mag_f1233_D2x);
mag_f1233_D2y_cran_m = mean(mag_f1233_D2y);
mag_f1233_D2z_cran_m = mean(mag_f1233_D2z);
mag_f1655x_cran_m    = mean(mag_f1655x);
mag_f1655y_cran_m    = mean(mag_f1655y);
mag_f1655z_cran_m    = mean(mag_f1655z);
mag_f2077x_cran_m    = mean(mag_f2077x);
mag_f2077y_cran_m    = mean(mag_f2077y);
mag_f2077z_cran_m    = mean(mag_f2077z);
mag_f2099x_cran_m    = mean(mag_f2099x);
mag_f2099y_cran_m    = mean(mag_f2099y);
mag_f2099z_cran_m    = mean(mag_f2099z);
mag_k1233x_cran_m    = mean(mag_k1233x);
mag_k1233y_cran_m    = mean(mag_k1233y);
mag_k1233z_cran_m    = mean(mag_k1233z);
mag_k1655x_cran_m    = mean(mag_k1655x);
mag_k1655y_cran_m    = mean(mag_k1655y);
mag_k1655z_cran_m    = mean(mag_k1655z);
mag_k2077x_cran_m    = mean(mag_k2077x);
mag_k2077y_cran_m    = mean(mag_k2077y);
mag_k2077z_cran_m    = mean(mag_k2077z);
mag_k2099x_cran_m    = mean(mag_k2099x);
mag_k2099y_cran_m    = mean(mag_k2099y);
mag_k2099z_cran_m    = mean(mag_k2099z);
mag_kk1655x_cran_m   = mean(mag_kk1655x);
mag_kk1655y_cran_m   = mean(mag_kk1655y);
mag_kk1655z_cran_m   = mean(mag_kk1655z);
mag_kk2077x_cran_m   = mean(mag_kk2077x);
mag_kk2077y_cran_m   = mean(mag_kk2077y);
mag_kk2077z_cran_m   = mean(mag_kk2077z);
mag_kk2099x_cran_m   = mean(mag_kk2099x);
mag_kk2099y_cran_m   = mean(mag_kk2099y);
mag_kk2099z_cran_m   = mean(mag_kk2099z);

mag_f1233_D3x_cran_s = std(mag_f1233_D3x);
mag_f1233_D3y_cran_s = std(mag_f1233_D3y);
mag_f1233_D3z_cran_s = std(mag_f1233_D3z);
mag_f1233_D2x_cran_s = std(mag_f1233_D2x);
mag_f1233_D2y_cran_s = std(mag_f1233_D2y);
mag_f1233_D2z_cran_s = std(mag_f1233_D2z);
mag_f1655x_cran_s    = std(mag_f1655x);
mag_f1655y_cran_s    = std(mag_f1655y);
mag_f1655z_cran_s    = std(mag_f1655z);
mag_f2077x_cran_s    = std(mag_f2077x);
mag_f2077y_cran_s    = std(mag_f2077y);
mag_f2077z_cran_s    = std(mag_f2077z);
mag_f2099x_cran_s    = std(mag_f2099x);
mag_f2099y_cran_s    = std(mag_f2099y);
mag_f2099z_cran_s    = std(mag_f2099z);
mag_k1233x_cran_s    = std(mag_k1233x);
mag_k1233y_cran_s    = std(mag_k1233y);
mag_k1233z_cran_s    = std(mag_k1233z);
mag_k1655x_cran_s    = std(mag_k1655x);
mag_k1655y_cran_s    = std(mag_k1655y);
mag_k1655z_cran_s    = std(mag_k1655z);
mag_k2077x_cran_s    = std(mag_k2077x);
mag_k2077y_cran_s    = std(mag_k2077y);
mag_k2077z_cran_s    = std(mag_k2077z);
mag_k2099x_cran_s    = std(mag_k2099x);
mag_k2099y_cran_s    = std(mag_k2099y);
mag_k2099z_cran_s    = std(mag_k2099z);
mag_kk1655x_cran_s   = std(mag_kk1655x);
mag_kk1655y_cran_s   = std(mag_kk1655y);
mag_kk1655z_cran_s   = std(mag_kk1655z);
mag_kk2077x_cran_s   = std(mag_kk2077x);
mag_kk2077y_cran_s   = std(mag_kk2077y);
mag_kk2077z_cran_s   = std(mag_kk2077z);
mag_kk2099x_cran_s   = std(mag_kk2099x);
mag_kk2099y_cran_s   = std(mag_kk2099y);
mag_kk2099z_cran_s   = std(mag_kk2099z);

mag_f1233_D3_cran_m = mean(mean([mag_f1233_D3x,mag_f1233_D3y,mag_f1233_D3z],2));
mag_f1233_D3_cran_s = std(mean([mag_f1233_D3x,mag_f1233_D3y,mag_f1233_D3z],2));

mag_f1233_D2_cran_m = mean(mean([mag_f1233_D2x,mag_f1233_D2y,mag_f1233_D2z],2));
mag_f1233_D2_cran_s = std(mean([mag_f1233_D2x,mag_f1233_D2y,mag_f1233_D2z],2));

% mag_f1233_cran_m = mean(mean([mag_f1233x,mag_f1233y,mag_f1233z],2));
% mag_f1233_cran_s = std(mean([mag_f1233x,mag_f1233y,mag_f1233z],2));

mag_f1655_cran_m = mean(mean([mag_f1655x,mag_f1655y,mag_f1655z],2));
mag_f1655_cran_s = std(mean([mag_f1655x,mag_f1655y,mag_f1655z],2));

mag_f2077_cran_m = mean(mean([mag_f2077x,mag_f2077y,mag_f2077z],2));
mag_f2077_cran_s = std(mean([mag_f2077x,mag_f2077y,mag_f2077z],2));

mag_f2099_cran_m = mean(mean([mag_f2099x,mag_f2099y,mag_f2099z],2));
mag_f2099_cran_s = std(mean([mag_f2099x,mag_f2099y,mag_f2099z],2));

mag_k1233_cran_m = mean(mean([mag_k1233x,mag_k1233y,mag_k1233z],2));
mag_k1233_cran_s = std(mean([mag_k1233x,mag_k1233y,mag_k1233z],2));

mag_k1655_cran_m = mean(mean([mag_k1655x,mag_k1655y,mag_k1655z],2));
mag_k1655_cran_s = std(mean([mag_k1655x,mag_k1655y,mag_k1655z],2));

mag_k2077_cran_m = mean(mean([mag_k2077x,mag_k2077y,mag_k2077z],2));
mag_k2077_cran_s = std(mean([mag_k2077x,mag_k2077y,mag_k2077z],2));

mag_k2099_cran_m = mean(mean([mag_k2099x,mag_k2099y,mag_k2099z],2));
mag_k2099_cran_s = std(mean([mag_k2099x,mag_k2099y,mag_k2099z],2));

mag_kk1655_cran_m = mean(mean([mag_kk1655x,mag_kk1655y,mag_kk1655z],2));
mag_kk1655_cran_s = std(mean([mag_kk1655x,mag_kk1655y,mag_kk1655z],2));

mag_kk2077_cran_m = mean(mean([mag_kk2077x,mag_kk2077y,mag_kk2077z],2));
mag_kk2077_cran_s = std(mean([mag_kk2077x,mag_kk2077y,mag_kk2077z],2));

mag_kk2099_cran_m = mean(mean([mag_kk2099x,mag_kk2099y,mag_kk2099z],2));
mag_kk2099_cran_s = std(mean([mag_kk2099x,mag_kk2099y,mag_kk2099z],2));


% mag_fetus_vernix_cran_x = [mag_f1233_D3x_cran_m mag_f1233_D2x_cran_m];
% mag_fetus_vernix_cran_x_std = [mag_f1233_D3x_cran_s mag_f1233_D2x_cran_s];
% 
% mag_fetus_cran_x = [mag_f1655x_cran_m
%     mag_f2077x_cran_m
%     mag_f2099x_cran_m
%     mag_k1233x_cran_m
%     mag_k1655x_cran_m
%     mag_k2077x_cran_m
%     mag_k2099x_cran_m];
% 
% mag_fetus_cran_x_std = [mag_f1655x_cran_s
%     mag_f2077x_cran_s
%     mag_f2099x_cran_s
%     mag_k1233x_cran_s
%     mag_k1655x_cran_s
%     mag_k2077x_cran_s
%     mag_k2099x_cran_s];
% 
% mag_kopf_cran_x = [
%     mag_kk1655x_cran_m
%     mag_kk2077x_cran_m
%     mag_kk2099x_cran_m];
% 
% mag_kopf_cran_x_std = [
%     mag_kk1655x_cran_s
%     mag_kk2077x_cran_s
%     mag_kk2099x_cran_s];
% 
% mag_fetus_vernix_cran_y = [mag_f1233_D3y_cran_m mag_f1233_D2y_cran_m];
% mag_fetus_vernix_cran_y_std = [mag_f1233_D3y_cran_s mag_f1233_D2y_cran_s];
% 
% mag_fetus_cran_y = [mag_f1655y_cran_m
%     mag_f2077y_cran_m
%     mag_f2099y_cran_m
%     mag_k1233y_cran_m
%     mag_k1655y_cran_m
%     mag_k2077y_cran_m
%     mag_k2099y_cran_m];
% 
% mag_fetus_cran_y_std = [mag_f1655y_cran_s
%     mag_f2077y_cran_s
%     mag_f2099y_cran_s
%     mag_k1233y_cran_s
%     mag_k1655y_cran_s
%     mag_k2077y_cran_s
%     mag_k2099y_cran_s];
% 
% mag_kopf_cran_y = [
%     mag_kk1655y_cran_m
%     mag_kk2077y_cran_m
%     mag_kk2099y_cran_m];
% 
% mag_kopf_cran_y_std = [
%     mag_kk1655y_cran_s
%     mag_kk2077y_cran_s
%     mag_kk2099y_cran_s];
% 
% mag_fetus_vernix_cran_z = [mag_f1233_D3z_cran_m mag_f1233_D2z_cran_m];
% mag_fetus_vernix_cran_z_std = [mag_f1233_D3z_cran_s mag_f1233_D2z_cran_s];
% 
% mag_fetus_cran_z = [mag_f1655z_cran_m
%     mag_f2077z_cran_m
%     mag_f2099z_cran_m
%     mag_k1233z_cran_m
%     mag_k1655z_cran_m
%     mag_k2077z_cran_m
%     mag_k2099z_cran_m];
% 
% mag_fetus_cran_z_std = [mag_f1655z_cran_s
%     mag_f2077z_cran_s
%     mag_f2099z_cran_s
%     mag_k1233z_cran_s
%     mag_k1655z_cran_s
%     mag_k2077z_cran_s
%     mag_k2099z_cran_s];
% 
% mag_kopf_cran_z = [
%     mag_kk1655z_cran_m
%     mag_kk2077z_cran_m
%     mag_kk2099z_cran_m];
% 
% mag_kopf_cran_z_std = [
%     mag_kk1655z_cran_s
%     mag_kk2077z_cran_s
%     mag_kk2099z_cran_s];

fetus_2099x = load('fetus_2099_1025_dors_x.dat');
fetus_2099y = load('fetus_2099_1025_dors_y.dat');
fetus_2099z = load('fetus_2099_1025_dors_z.dat');

fetus_2077x = load('fetus_2077_1025_dors_x.dat');
fetus_2077y = load('fetus_2077_1025_dors_y.dat');
fetus_2077z = load('fetus_2077_1025_dors_z.dat');

fetus_1655x = load('fetus_1655_1025_dors_x.dat');
fetus_1655y = load('fetus_1655_1025_dors_y.dat');
fetus_1655z = load('fetus_1655_1025_dors_z.dat');

fetus_1233x = load('fetus_1233_1025_dors_x.dat');
fetus_1233y = load('fetus_1233_1025_dors_y.dat');
fetus_1233z = load('fetus_1233_1025_dors_z.dat');

fetus_1233_D2x = load('fetus_1233_1025_D2_dors_x.dat');
fetus_1233_D2y = load('fetus_1233_1025_D2_dors_y.dat');
fetus_1233_D2z = load('fetus_1233_1025_D2_dors_z.dat');

fetus_1233_D3x = load('fetus_1233_1025_D3_dors_x.dat');
fetus_1233_D3y = load('fetus_1233_1025_D3_dors_y.dat');
fetus_1233_D3z = load('fetus_1233_1025_D3_dors_z.dat');

kopf_2099x = load('kopf_2099_1025_dors_x.dat');
kopf_2099y = load('kopf_2099_1025_dors_y.dat');
kopf_2099z = load('kopf_2099_1025_dors_z.dat');

kopf_2077x = load('kopf_2077_1025_dors_x.dat');
kopf_2077y = load('kopf_2077_1025_dors_y.dat');
kopf_2077z = load('kopf_2077_1025_dors_z.dat');

kopf_1655x = load('kopf_1655_1025_dors_x.dat');
kopf_1655y = load('kopf_1655_1025_dors_y.dat');
kopf_1655z = load('kopf_1655_1025_dors_z.dat');

kopf_1233x = load('kopf_1233_1025_dors_x.dat');
kopf_1233y = load('kopf_1233_1025_dors_y.dat');
kopf_1233z = load('kopf_1233_1025_dors_z.dat');

for i=1:1025
    rdm_f1233_D2x(i)=rdm(fetus_1233_D2x(i,:),fetus_1233x(i,:));
    rdm_f1233_D2y(i)=rdm(fetus_1233_D2y(i,:),fetus_1233y(i,:));
    rdm_f1233_D2z(i)=rdm(fetus_1233_D2z(i,:),fetus_1233z(i,:));
    
    rdm_f1233_D3x(i)=rdm(fetus_1233_D3x(i,:),fetus_1233x(i,:));
    rdm_f1233_D3y(i)=rdm(fetus_1233_D3y(i,:),fetus_1233y(i,:));
    rdm_f1233_D3z(i)=rdm(fetus_1233_D3z(i,:),fetus_1233z(i,:));
    
    rdm_f1655x(i)=rdm(fetus_1655x(i,:),fetus_1233x(i,:));
    rdm_f1655y(i)=rdm(fetus_1655y(i,:),fetus_1233y(i,:));
    rdm_f1655z(i)=rdm(fetus_1655z(i,:),fetus_1233z(i,:));
    
    rdm_f2077x(i)=rdm(fetus_2077x(i,:),fetus_1233x(i,:));
    rdm_f2077y(i)=rdm(fetus_2077y(i,:),fetus_1233y(i,:));
    rdm_f2077z(i)=rdm(fetus_2077z(i,:),fetus_1233z(i,:));
    
    rdm_f2099x(i)=rdm(fetus_2099x(i,:),fetus_1233x(i,:));
    rdm_f2099y(i)=rdm(fetus_2099y(i,:),fetus_1233y(i,:));
    rdm_f2099z(i)=rdm(fetus_2099z(i,:),fetus_1233z(i,:));
    
    rdm_k1233x(i)=rdm(kopf_1233x(i,:),fetus_1233x(i,:));
    rdm_k1233y(i)=rdm(kopf_1233y(i,:),fetus_1233y(i,:));
    rdm_k1233z(i)=rdm(kopf_1233z(i,:),fetus_1233z(i,:));
    
    rdm_k1655x(i)=rdm(kopf_1655x(i,:),fetus_1233x(i,:));
    rdm_k1655y(i)=rdm(kopf_1655y(i,:),fetus_1233y(i,:));
    rdm_k1655z(i)=rdm(kopf_1655z(i,:),fetus_1233z(i,:));
    
    rdm_k2077x(i)=rdm(kopf_2077x(i,:),fetus_1233x(i,:));
    rdm_k2077y(i)=rdm(kopf_2077y(i,:),fetus_1233y(i,:));
    rdm_k2077z(i)=rdm(kopf_2077z(i,:),fetus_1233z(i,:));
    
    rdm_k2099x(i)=rdm(kopf_2099x(i,:),fetus_1233x(i,:));
    rdm_k2099y(i)=rdm(kopf_2099y(i,:),fetus_1233y(i,:));
    rdm_k2099z(i)=rdm(kopf_2099z(i,:),fetus_1233z(i,:));
    
    rdm_kk1655x(i)=rdm(kopf_1655x(i,:),kopf_1233x(i,:));
    rdm_kk1655y(i)=rdm(kopf_1655y(i,:),kopf_1233y(i,:));
    rdm_kk1655z(i)=rdm(kopf_1655z(i,:),kopf_1233z(i,:));
    
    rdm_kk2077x(i)=rdm(kopf_2077x(i,:),kopf_1233x(i,:));
    rdm_kk2077y(i)=rdm(kopf_2077y(i,:),kopf_1233y(i,:));
    rdm_kk2077z(i)=rdm(kopf_2077z(i,:),kopf_1233z(i,:));
    
    rdm_kk2099x(i)=rdm(kopf_2099x(i,:),kopf_1233x(i,:));
    rdm_kk2099y(i)=rdm(kopf_2099y(i,:),kopf_1233y(i,:));
    rdm_kk2099z(i)=rdm(kopf_2099z(i,:),kopf_1233z(i,:));
end;

rdm_f1233_D3x_dors_m = mean(rdm_f1233_D3x);
rdm_f1233_D3y_dors_m = mean(rdm_f1233_D3y);
rdm_f1233_D3z_dors_m = mean(rdm_f1233_D3z);
rdm_f1233_D2x_dors_m = mean(rdm_f1233_D2x);
rdm_f1233_D2y_dors_m = mean(rdm_f1233_D2y);
rdm_f1233_D2z_dors_m = mean(rdm_f1233_D2z);
rdm_f1655x_dors_m = mean(rdm_f1655x);
rdm_f1655y_dors_m = mean(rdm_f1655y);
rdm_f1655z_dors_m = mean(rdm_f1655z);
rdm_f2077x_dors_m = mean(rdm_f2077x);
rdm_f2077y_dors_m = mean(rdm_f2077y);
rdm_f2077z_dors_m = mean(rdm_f2077z);
rdm_f2099x_dors_m = mean(rdm_f2099x);
rdm_f2099y_dors_m = mean(rdm_f2099y);
rdm_f2099z_dors_m = mean(rdm_f2099z);
rdm_k1233x_dors_m = mean(rdm_k1233x);
rdm_k1233y_dors_m = mean(rdm_k1233y);
rdm_k1233z_dors_m = mean(rdm_k1233z);
rdm_k1655x_dors_m = mean(rdm_k1655x);
rdm_k1655y_dors_m = mean(rdm_k1655y);
rdm_k1655z_dors_m = mean(rdm_k1655z);
rdm_k2077x_dors_m = mean(rdm_k2077x);
rdm_k2077y_dors_m = mean(rdm_k2077y);
rdm_k2077z_dors_m = mean(rdm_k2077z);
rdm_k2099x_dors_m = mean(rdm_k2099x);
rdm_k2099y_dors_m = mean(rdm_k2099y);
rdm_k2099z_dors_m = mean(rdm_k2099z);
rdm_kk1655x_dors_m = mean(rdm_kk1655x);
rdm_kk1655y_dors_m = mean(rdm_kk1655y);
rdm_kk1655z_dors_m = mean(rdm_kk1655z);
rdm_kk2077x_dors_m = mean(rdm_kk2077x);
rdm_kk2077y_dors_m = mean(rdm_kk2077y);
rdm_kk2077z_dors_m = mean(rdm_kk2077z);
rdm_kk2099x_dors_m = mean(rdm_kk2099x);
rdm_kk2099y_dors_m = mean(rdm_kk2099y);
rdm_kk2099z_dors_m = mean(rdm_kk2099z);

rdm_f1233_D3x_dors_s = std(rdm_f1233_D3x);
rdm_f1233_D3y_dors_s = std(rdm_f1233_D3y);
rdm_f1233_D3z_dors_s = std(rdm_f1233_D3z);
rdm_f1233_D2x_dors_s = std(rdm_f1233_D2x);
rdm_f1233_D2y_dors_s = std(rdm_f1233_D2y);
rdm_f1233_D2z_dors_s = std(rdm_f1233_D2z);
rdm_f1655x_dors_s    = std(rdm_f1655x);
rdm_f1655y_dors_s    = std(rdm_f1655y);
rdm_f1655z_dors_s    = std(rdm_f1655z);
rdm_f2077x_dors_s    = std(rdm_f2077x);
rdm_f2077y_dors_s    = std(rdm_f2077y);
rdm_f2077z_dors_s    = std(rdm_f2077z);
rdm_f2099x_dors_s    = std(rdm_f2099x);
rdm_f2099y_dors_s    = std(rdm_f2099y);
rdm_f2099z_dors_s    = std(rdm_f2099z);
rdm_k1233x_dors_s    = std(rdm_k1233x);
rdm_k1233y_dors_s    = std(rdm_k1233y);
rdm_k1233z_dors_s    = std(rdm_k1233z);
rdm_k1655x_dors_s    = std(rdm_k1655x);
rdm_k1655y_dors_s    = std(rdm_k1655y);
rdm_k1655z_dors_s    = std(rdm_k1655z);
rdm_k2077x_dors_s    = std(rdm_k2077x);
rdm_k2077y_dors_s    = std(rdm_k2077y);
rdm_k2077z_dors_s    = std(rdm_k2077z);
rdm_k2099x_dors_s    = std(rdm_k2099x);
rdm_k2099y_dors_s    = std(rdm_k2099y);
rdm_k2099z_dors_s    = std(rdm_k2099z);
rdm_kk1655x_dors_s   = std(rdm_kk1655x);
rdm_kk1655y_dors_s   = std(rdm_kk1655y);
rdm_kk1655z_dors_s   = std(rdm_kk1655z);
rdm_kk2077x_dors_s   = std(rdm_kk2077x);
rdm_kk2077y_dors_s   = std(rdm_kk2077y);
rdm_kk2077z_dors_s   = std(rdm_kk2077z);
rdm_kk2099x_dors_s   = std(rdm_kk2099x);
rdm_kk2099y_dors_s   = std(rdm_kk2099y);
rdm_kk2099z_dors_s   = std(rdm_kk2099z);

rdm_f1233_D3_dors_m = mean(mean([rdm_f1233_D3x,rdm_f1233_D3y,rdm_f1233_D3z],2));
rdm_f1233_D3_dors_s = std(mean([rdm_f1233_D3x,rdm_f1233_D3y,rdm_f1233_D3z],2));

rdm_f1233_D2_dors_m = mean(mean([rdm_f1233_D2x,rdm_f1233_D2y,rdm_f1233_D2z],2));
rdm_f1233_D2_dors_s = std(mean([rdm_f1233_D2x,rdm_f1233_D2y,rdm_f1233_D2z],2));

% rdm_f1233_dors_m = mean(mean([rdm_f1233x,rdm_f1233y,rdm_f1233z],2));
% rdm_f1233_dors_s = std(mean([rdm_f1233x,rdm_f1233y,rdm_f1233z],2));

rdm_f1655_dors_m = mean(mean([rdm_f1655x,rdm_f1655y,rdm_f1655z],2));
rdm_f1655_dors_s = std(mean([rdm_f1655x,rdm_f1655y,rdm_f1655z],2));

rdm_f2077_dors_m = mean(mean([rdm_f2077x,rdm_f2077y,rdm_f2077z],2));
rdm_f2077_dors_s = std(mean([rdm_f2077x,rdm_f2077y,rdm_f2077z],2));

rdm_f2099_dors_m = mean(mean([rdm_f2099x,rdm_f2099y,rdm_f2099z],2));
rdm_f2099_dors_s = std(mean([rdm_f2099x,rdm_f2099y,rdm_f2099z],2));

rdm_k1233_dors_m = mean(mean([rdm_k1233x,rdm_k1233y,rdm_k1233z],2));
rdm_k1233_dors_s = std(mean([rdm_k1233x,rdm_k1233y,rdm_k1233z],2));

rdm_k1655_dors_m = mean(mean([rdm_k1655x,rdm_k1655y,rdm_k1655z],2));
rdm_k1655_dors_s = std(mean([rdm_k1655x,rdm_k1655y,rdm_k1655z],2));

rdm_k2077_dors_m = mean(mean([rdm_k2077x,rdm_k2077y,rdm_k2077z],2));
rdm_k2077_dors_s = std(mean([rdm_k2077x,rdm_k2077y,rdm_k2077z],2));

rdm_k2099_dors_m = mean(mean([rdm_k2099x,rdm_k2099y,rdm_k2099z],2));
rdm_k2099_dors_s = std(mean([rdm_k2099x,rdm_k2099y,rdm_k2099z],2));

rdm_kk1655_dors_m = mean(mean([rdm_kk1655x,rdm_kk1655y,rdm_kk1655z],2));
rdm_kk1655_dors_s = std(mean([rdm_kk1655x,rdm_kk1655y,rdm_kk1655z],2));

rdm_kk2077_dors_m = mean(mean([rdm_kk2077x,rdm_kk2077y,rdm_kk2077z],2));
rdm_kk2077_dors_s = std(mean([rdm_kk2077x,rdm_kk2077y,rdm_kk2077z],2));

rdm_kk2099_dors_m = mean(mean([rdm_kk2099x,rdm_kk2099y,rdm_kk2099z],2));
rdm_kk2099_dors_s = std(mean([rdm_kk2099x,rdm_kk2099y,rdm_kk2099z],2));

% rdm_fetus_vernix_dors_x = [rdm_f1233_D3x_dors_m rdm_f1233_D2x_dors_m];
% rdm_fetus_vernix_dors_x_std = [rdm_f1233_D3x_dors_s rdm_f1233_D2x_dors_s];
% 
% rdm_fetus_dors_x = [rdm_f1655x_dors_m
%     rdm_f2077x_dors_m
%     rdm_f2099x_dors_m
%     rdm_k1233x_dors_m
%     rdm_k1655x_dors_m
%     rdm_k2077x_dors_m
%     rdm_k2099x_dors_m];
% 
% rdm_fetus_dors_x_std = [rdm_f1655x_dors_s
%     rdm_f2077x_dors_s
%     rdm_f2099x_dors_s
%     rdm_k1233x_dors_s
%     rdm_k1655x_dors_s
%     rdm_k2077x_dors_s
%     rdm_k2099x_dors_s];
% 
% rdm_kopf_dors_x = [
%     rdm_kk1655x_dors_m
%     rdm_kk2077x_dors_m
%     rdm_kk2099x_dors_m];
% 
% rdm_kopf_dors_x_std = [
%     rdm_kk1655x_dors_s
%     rdm_kk2077x_dors_s
%     rdm_kk2099x_dors_s];
% 
% rdm_fetus_vernix_dors_y = [rdm_f1233_D3y_dors_m rdm_f1233_D2y_dors_m];
% rdm_fetus_vernix_dors_y_std = [rdm_f1233_D3y_dors_s rdm_f1233_D2y_dors_s];
% 
% rdm_fetus_dors_y = [rdm_f1655y_dors_m
%     rdm_f2077y_dors_m
%     rdm_f2099y_dors_m
%     rdm_k1233y_dors_m
%     rdm_k1655y_dors_m
%     rdm_k2077y_dors_m
%     rdm_k2099y_dors_m];
% 
% rdm_fetus_dors_y_std = [rdm_f1655y_dors_s
%     rdm_f2077y_dors_s
%     rdm_f2099y_dors_s
%     rdm_k1233y_dors_s
%     rdm_k1655y_dors_s
%     rdm_k2077y_dors_s
%     rdm_k2099y_dors_s];
% 
% rdm_kopf_dors_y = [
%     rdm_kk1655y_dors_m
%     rdm_kk2077y_dors_m
%     rdm_kk2099y_dors_m];
% 
% rdm_kopf_dors_y_std = [
%     rdm_kk1655y_dors_s
%     rdm_kk2077y_dors_s
%     rdm_kk2099y_dors_s];
% 
% rdm_fetus_vernix_dors_z = [rdm_f1233_D3z_dors_m rdm_f1233_D2z_dors_m];
% rdm_fetus_vernix_dors_z_std = [rdm_f1233_D3z_dors_s rdm_f1233_D2z_dors_s];
% 
% rdm_fetus_dors_z = [rdm_f1655z_dors_m
%     rdm_f2077z_dors_m
%     rdm_f2099z_dors_m
%     rdm_k1233z_dors_m
%     rdm_k1655z_dors_m
%     rdm_k2077z_dors_m
%     rdm_k2099z_dors_m];
% 
% rdm_fetus_dors_z_std = [rdm_f1655z_dors_s
%     rdm_f2077z_dors_s
%     rdm_f2099z_dors_s
%     rdm_k1233z_dors_s
%     rdm_k1655z_dors_s
%     rdm_k2077z_dors_s
%     rdm_k2099z_dors_s];
% 
% rdm_kopf_dors_z = [
%     rdm_kk1655z_dors_m
%     rdm_kk2077z_dors_m
%     rdm_kk2099z_dors_m];
% 
% rdm_kopf_dors_z_std = [
%     rdm_kk1655z_dors_s
%     rdm_kk2077z_dors_s
%     rdm_kk2099z_dors_s];

for i=1:1025
    mag_f1233_D3x(i) = mag(fetus_1233_D3x(i,:), fetus_1233x(i,:));
    mag_f1233_D3y(i) = mag(fetus_1233_D3y(i,:),fetus_1233y(i,:));
    mag_f1233_D3z(i) = mag(fetus_1233_D3z(i,:),fetus_1233z(i,:));
    mag_f1233_D2x(i) = mag(fetus_1233_D2x(i,:),fetus_1233x(i,:));
    mag_f1233_D2y(i) = mag(fetus_1233_D2y(i,:),fetus_1233y(i,:));
    mag_f1233_D2z(i) = mag(fetus_1233_D2z(i,:),fetus_1233z(i,:));
    mag_f1655x(i)    = mag(fetus_1655x(i,:),fetus_1233x(i,:));
    mag_f1655y(i)    = mag(fetus_1655y(i,:),fetus_1233y(i,:));
    mag_f1655z(i)    = mag(fetus_1655z(i,:),fetus_1233z(i,:));
    mag_f2077x(i)    = mag(fetus_2077x(i,:),fetus_1233x(i,:));
    mag_f2077y(i)    = mag(fetus_2077y(i,:),fetus_1233y(i,:));
    mag_f2077z(i)    = mag(fetus_2077z(i,:),fetus_1233z(i,:));
    mag_f2099x(i)    = mag(fetus_2099x(i,:),fetus_1233x(i,:));
    mag_f2099y(i)    = mag(fetus_2099y(i,:),fetus_1233y(i,:));
    mag_f2099z(i)    = mag(fetus_2099z(i,:),fetus_1233z(i,:));
    mag_k1233x(i)    = mag(kopf_1233x(i,:),fetus_1233x(i,:));
    mag_k1233y(i)    = mag(kopf_1233y(i,:),fetus_1233y(i,:));
    mag_k1233z(i)    = mag(kopf_1233z(i,:),fetus_1233z(i,:));
    mag_k1655x(i)    = mag(kopf_1655x(i,:),fetus_1233x(i,:));
    mag_k1655y(i)    = mag(kopf_1655y(i,:),fetus_1233y(i,:));
    mag_k1655z(i)    = mag(kopf_1655z(i,:),fetus_1233z(i,:));
    mag_k2077x(i)    = mag(kopf_2077x(i,:),fetus_1233x(i,:));
    mag_k2077y(i)    = mag(kopf_2077y(i,:),fetus_1233y(i,:));
    mag_k2077z(i)    = mag(kopf_2077z(i,:),fetus_1233z(i,:));
    mag_k2099x(i)    = mag(kopf_2099x(i,:),fetus_1233x(i,:));
    mag_k2099y(i)    = mag(kopf_2099y(i,:),fetus_1233y(i,:));
    mag_k2099z(i)    = mag(kopf_2099z(i,:),fetus_1233z(i,:));
    mag_kk1655x(i)   = mag(kopf_1655x(i,:),kopf_1233x(i,:));
    mag_kk1655y(i)   = mag(kopf_1655y(i,:),kopf_1233y(i,:));
    mag_kk1655z(i)   = mag(kopf_1655z(i,:),kopf_1233z(i,:));
    mag_kk2077x(i)   = mag(kopf_2077x(i,:),kopf_1233x(i,:));
    mag_kk2077y(i)   = mag(kopf_2077y(i,:),kopf_1233y(i,:));
    mag_kk2077z(i)   = mag(kopf_2077z(i,:),kopf_1233z(i,:));
    mag_kk2099x(i)   = mag(kopf_2099x(i,:),kopf_1233x(i,:));
    mag_kk2099y(i)   = mag(kopf_2099y(i,:),kopf_1233y(i,:));
    mag_kk2099z(i)   = mag(kopf_2099z(i,:),kopf_1233z(i,:));
end;

mag_f1233_D3x_dors_m = mean(mag_f1233_D3x);
mag_f1233_D3y_dors_m = mean(mag_f1233_D3y);
mag_f1233_D3z_dors_m = mean(mag_f1233_D3z);
mag_f1233_D2x_dors_m = mean(mag_f1233_D2x);
mag_f1233_D2y_dors_m = mean(mag_f1233_D2y);
mag_f1233_D2z_dors_m = mean(mag_f1233_D2z);
mag_f1655x_dors_m    = mean(mag_f1655x);
mag_f1655y_dors_m    = mean(mag_f1655y);
mag_f1655z_dors_m    = mean(mag_f1655z);
mag_f2077x_dors_m    = mean(mag_f2077x);
mag_f2077y_dors_m    = mean(mag_f2077y);
mag_f2077z_dors_m    = mean(mag_f2077z);
mag_f2099x_dors_m    = mean(mag_f2099x);
mag_f2099y_dors_m    = mean(mag_f2099y);
mag_f2099z_dors_m    = mean(mag_f2099z);
mag_k1233x_dors_m    = mean(mag_k1233x);
mag_k1233y_dors_m    = mean(mag_k1233y);
mag_k1233z_dors_m    = mean(mag_k1233z);
mag_k1655x_dors_m    = mean(mag_k1655x);
mag_k1655y_dors_m    = mean(mag_k1655y);
mag_k1655z_dors_m    = mean(mag_k1655z);
mag_k2077x_dors_m    = mean(mag_k2077x);
mag_k2077y_dors_m    = mean(mag_k2077y);
mag_k2077z_dors_m    = mean(mag_k2077z);
mag_k2099x_dors_m    = mean(mag_k2099x);
mag_k2099y_dors_m    = mean(mag_k2099y);
mag_k2099z_dors_m    = mean(mag_k2099z);
mag_kk1655x_dors_m   = mean(mag_kk1655x);
mag_kk1655y_dors_m   = mean(mag_kk1655y);
mag_kk1655z_dors_m   = mean(mag_kk1655z);
mag_kk2077x_dors_m   = mean(mag_kk2077x);
mag_kk2077y_dors_m   = mean(mag_kk2077y);
mag_kk2077z_dors_m   = mean(mag_kk2077z);
mag_kk2099x_dors_m   = mean(mag_kk2099x);
mag_kk2099y_dors_m   = mean(mag_kk2099y);
mag_kk2099z_dors_m   = mean(mag_kk2099z);

mag_f1233_D3x_dors_s = std(mag_f1233_D3x);
mag_f1233_D3y_dors_s = std(mag_f1233_D3y);
mag_f1233_D3z_dors_s = std(mag_f1233_D3z);
mag_f1233_D2x_dors_s = std(mag_f1233_D2x);
mag_f1233_D2y_dors_s = std(mag_f1233_D2y);
mag_f1233_D2z_dors_s = std(mag_f1233_D2z);
mag_f1655x_dors_s    = std(mag_f1655x);
mag_f1655y_dors_s    = std(mag_f1655y);
mag_f1655z_dors_s    = std(mag_f1655z);
mag_f2077x_dors_s    = std(mag_f2077x);
mag_f2077y_dors_s    = std(mag_f2077y);
mag_f2077z_dors_s    = std(mag_f2077z);
mag_f2099x_dors_s    = std(mag_f2099x);
mag_f2099y_dors_s    = std(mag_f2099y);
mag_f2099z_dors_s    = std(mag_f2099z);
mag_k1233x_dors_s    = std(mag_k1233x);
mag_k1233y_dors_s    = std(mag_k1233y);
mag_k1233z_dors_s    = std(mag_k1233z);
mag_k1655x_dors_s    = std(mag_k1655x);
mag_k1655y_dors_s    = std(mag_k1655y);
mag_k1655z_dors_s    = std(mag_k1655z);
mag_k2077x_dors_s    = std(mag_k2077x);
mag_k2077y_dors_s    = std(mag_k2077y);
mag_k2077z_dors_s    = std(mag_k2077z);
mag_k2099x_dors_s    = std(mag_k2099x);
mag_k2099y_dors_s    = std(mag_k2099y);
mag_k2099z_dors_s    = std(mag_k2099z);
mag_kk1655x_dors_s   = std(mag_kk1655x);
mag_kk1655y_dors_s   = std(mag_kk1655y);
mag_kk1655z_dors_s   = std(mag_kk1655z);
mag_kk2077x_dors_s   = std(mag_kk2077x);
mag_kk2077y_dors_s   = std(mag_kk2077y);
mag_kk2077z_dors_s   = std(mag_kk2077z);
mag_kk2099x_dors_s   = std(mag_kk2099x);
mag_kk2099y_dors_s   = std(mag_kk2099y);
mag_kk2099z_dors_s   = std(mag_kk2099z);

mag_f1233_D3_dors_m = mean(mean([mag_f1233_D3x,mag_f1233_D3y,mag_f1233_D3z],2));
mag_f1233_D3_dors_s = std(mean([mag_f1233_D3x,mag_f1233_D3y,mag_f1233_D3z],2));

mag_f1233_D2_dors_m = mean(mean([mag_f1233_D2x,mag_f1233_D2y,mag_f1233_D2z],2));
mag_f1233_D2_dors_s = std(mean([mag_f1233_D2x,mag_f1233_D2y,mag_f1233_D2z],2));

% mag_f1233_dors_m = mean(mean([mag_f1233x,mag_f1233y,mag_f1233z],2));
% mag_f1233_dors_s = std(mean([mag_f1233x,mag_f1233y,mag_f1233z],2));

mag_f1655_dors_m = mean(mean([mag_f1655x,mag_f1655y,mag_f1655z],2));
mag_f1655_dors_s = std(mean([mag_f1655x,mag_f1655y,mag_f1655z],2));

mag_f2077_dors_m = mean(mean([mag_f2077x,mag_f2077y,mag_f2077z],2));
mag_f2077_dors_s = std(mean([mag_f2077x,mag_f2077y,mag_f2077z],2));

mag_f2099_dors_m = mean(mean([mag_f2099x,mag_f2099y,mag_f2099z],2));
mag_f2099_dors_s = std(mean([mag_f2099x,mag_f2099y,mag_f2099z],2));

mag_k1233_dors_m = mean(mean([mag_k1233x,mag_k1233y,mag_k1233z],2));
mag_k1233_dors_s = std(mean([mag_k1233x,mag_k1233y,mag_k1233z],2));

mag_k1655_dors_m = mean(mean([mag_k1655x,mag_k1655y,mag_k1655z],2));
mag_k1655_dors_s = std(mean([mag_k1655x,mag_k1655y,mag_k1655z],2));

mag_k2077_dors_m = mean(mean([mag_k2077x,mag_k2077y,mag_k2077z],2));
mag_k2077_dors_s = std(mean([mag_k2077x,mag_k2077y,mag_k2077z],2));

mag_k2099_dors_m = mean(mean([mag_k2099x,mag_k2099y,mag_k2099z],2));
mag_k2099_dors_s = std(mean([mag_k2099x,mag_k2099y,mag_k2099z],2));

mag_kk1655_dors_m = mean(mean([mag_kk1655x,mag_kk1655y,mag_kk1655z],2));
mag_kk1655_dors_s = std(mean([mag_kk1655x,mag_kk1655y,mag_kk1655z],2));

mag_kk2077_dors_m = mean(mean([mag_kk2077x,mag_kk2077y,mag_kk2077z],2));
mag_kk2077_dors_s = std(mean([mag_kk2077x,mag_kk2077y,mag_kk2077z],2));

mag_kk2099_dors_m = mean(mean([mag_kk2099x,mag_kk2099y,mag_kk2099z],2));
mag_kk2099_dors_s = std(mean([mag_kk2099x,mag_kk2099y,mag_kk2099z],2));

% mag_fetus_vernix_dors_x = [mag_f1233_D3x_dors_m mag_f1233_D2x_dors_m];
% mag_fetus_vernix_dors_x_std = [mag_f1233_D3x_dors_s mag_f1233_D2x_dors_s];
% 
% mag_fetus_dors_x = [mag_f1655x_dors_m
%     mag_f2077x_dors_m
%     mag_f2099x_dors_m
%     mag_k1233x_dors_m
%     mag_k1655x_dors_m
%     mag_k2077x_dors_m
%     mag_k2099x_dors_m];
% 
% mag_fetus_dors_x_std = [mag_f1655x_dors_s
%     mag_f2077x_dors_s
%     mag_f2099x_dors_s
%     mag_k1233x_dors_s
%     mag_k1655x_dors_s
%     mag_k2077x_dors_s
%     mag_k2099x_dors_s];
% 
% mag_kopf_dors_x = [
%     mag_kk1655x_dors_m
%     mag_kk2077x_dors_m
%     mag_kk2099x_dors_m];
% 
% mag_kopf_dors_x_std = [
%     mag_kk1655x_dors_s
%     mag_kk2077x_dors_s
%     mag_kk2099x_dors_s];
% 
% mag_fetus_vernix_dors_y = [mag_f1233_D3y_dors_m mag_f1233_D2y_dors_m];
% mag_fetus_vernix_dors_y_std = [mag_f1233_D3y_dors_s mag_f1233_D2y_dors_s];
% 
% mag_fetus_dors_y = [mag_f1655y_dors_m
%     mag_f2077y_dors_m
%     mag_f2099y_dors_m
%     mag_k1233y_dors_m
%     mag_k1655y_dors_m
%     mag_k2077y_dors_m
%     mag_k2099y_dors_m];
% 
% mag_fetus_dors_y_std = [mag_f1655y_dors_s
%     mag_f2077y_dors_s
%     mag_f2099y_dors_s
%     mag_k1233y_dors_s
%     mag_k1655y_dors_s
%     mag_k2077y_dors_s
%     mag_k2099y_dors_s];
% 
% mag_kopf_dors_y = [
%     mag_kk1655y_dors_m
%     mag_kk2077y_dors_m
%     mag_kk2099y_dors_m];
% 
% mag_kopf_dors_y_std = [
%     mag_kk1655y_dors_s
%     mag_kk2077y_dors_s
%     mag_kk2099y_dors_s];
% 
% mag_fetus_vernix_dors_z = [mag_f1233_D3z_dors_m mag_f1233_D2z_dors_m];
% mag_fetus_vernix_dors_z_std = [mag_f1233_D3z_dors_s mag_f1233_D2z_dors_s];
% 
% mag_fetus_dors_z = [mag_f1655z_dors_m
%     mag_f2077z_dors_m
%     mag_f2099z_dors_m
%     mag_k1233z_dors_m
%     mag_k1655z_dors_m
%     mag_k2077z_dors_m
%     mag_k2099z_dors_m];
% 
% mag_fetus_dors_z_std = [mag_f1655z_dors_s
%     mag_f2077z_dors_s
%     mag_f2099z_dors_s
%     mag_k1233z_dors_s
%     mag_k1655z_dors_s
%     mag_k2077z_dors_s
%     mag_k2099z_dors_s];
% 
% mag_kopf_dors_z = [
%     mag_kk1655z_dors_m
%     mag_kk2077z_dors_m
%     mag_kk2099z_dors_m];
% 
% mag_kopf_dors_z_std = [
%     mag_kk1655z_dors_s
%     mag_kk2077z_dors_s
%     mag_kk2099z_dors_s];

fetus_2099x = load('fetus_2099_1025_sinis_x.dat');
fetus_2099y = load('fetus_2099_1025_sinis_y.dat');
fetus_2099z = load('fetus_2099_1025_sinis_z.dat');

fetus_2077x = load('fetus_2077_1025_sinis_x.dat');
fetus_2077y = load('fetus_2077_1025_sinis_y.dat');
fetus_2077z = load('fetus_2077_1025_sinis_z.dat');

fetus_1655x = load('fetus_1655_1025_sinis_x.dat');
fetus_1655y = load('fetus_1655_1025_sinis_y.dat');
fetus_1655z = load('fetus_1655_1025_sinis_z.dat');

fetus_1233x = load('fetus_1233_1025_sinis_x.dat');
fetus_1233y = load('fetus_1233_1025_sinis_y.dat');
fetus_1233z = load('fetus_1233_1025_sinis_z.dat');

fetus_1233_D2x = load('fetus_1233_1025_D2_sinis_x.dat');
fetus_1233_D2y = load('fetus_1233_1025_D2_sinis_y.dat');
fetus_1233_D2z = load('fetus_1233_1025_D2_sinis_z.dat');

fetus_1233_D3x = load('fetus_1233_1025_D3_sinis_x.dat');
fetus_1233_D3y = load('fetus_1233_1025_D3_sinis_y.dat');
fetus_1233_D3z = load('fetus_1233_1025_D3_sinis_z.dat');

kopf_2099x = load('kopf_2099_1025_sinis_x.dat');
kopf_2099y = load('kopf_2099_1025_sinis_y.dat');
kopf_2099z = load('kopf_2099_1025_sinis_z.dat');

kopf_2077x = load('kopf_2077_1025_sinis_x.dat');
kopf_2077y = load('kopf_2077_1025_sinis_y.dat');
kopf_2077z = load('kopf_2077_1025_sinis_z.dat');

kopf_1655x = load('kopf_1655_1025_sinis_x.dat');
kopf_1655y = load('kopf_1655_1025_sinis_y.dat');
kopf_1655z = load('kopf_1655_1025_sinis_z.dat');

kopf_1233x = load('kopf_1233_1025_sinis_x.dat');
kopf_1233y = load('kopf_1233_1025_sinis_y.dat');
kopf_1233z = load('kopf_1233_1025_sinis_z.dat');

for i=1:1025
    rdm_f1233_D2x(i)=rdm(fetus_1233_D2x(i,:),fetus_1233x(i,:));
    rdm_f1233_D2y(i)=rdm(fetus_1233_D2y(i,:),fetus_1233y(i,:));
    rdm_f1233_D2z(i)=rdm(fetus_1233_D2z(i,:),fetus_1233z(i,:));
    
    rdm_f1233_D3x(i)=rdm(fetus_1233_D3x(i,:),fetus_1233x(i,:));
    rdm_f1233_D3y(i)=rdm(fetus_1233_D3y(i,:),fetus_1233y(i,:));
    rdm_f1233_D3z(i)=rdm(fetus_1233_D3z(i,:),fetus_1233z(i,:));
    
    rdm_f1655x(i)=rdm(fetus_1655x(i,:),fetus_1233x(i,:));
    rdm_f1655y(i)=rdm(fetus_1655y(i,:),fetus_1233y(i,:));
    rdm_f1655z(i)=rdm(fetus_1655z(i,:),fetus_1233z(i,:));
    
    rdm_f2077x(i)=rdm(fetus_2077x(i,:),fetus_1233x(i,:));
    rdm_f2077y(i)=rdm(fetus_2077y(i,:),fetus_1233y(i,:));
    rdm_f2077z(i)=rdm(fetus_2077z(i,:),fetus_1233z(i,:));
    
    rdm_f2099x(i)=rdm(fetus_2099x(i,:),fetus_1233x(i,:));
    rdm_f2099y(i)=rdm(fetus_2099y(i,:),fetus_1233y(i,:));
    rdm_f2099z(i)=rdm(fetus_2099z(i,:),fetus_1233z(i,:));
    
    rdm_k1233x(i)=rdm(kopf_1233x(i,:),fetus_1233x(i,:));
    rdm_k1233y(i)=rdm(kopf_1233y(i,:),fetus_1233y(i,:));
    rdm_k1233z(i)=rdm(kopf_1233z(i,:),fetus_1233z(i,:));
    
    rdm_k1655x(i)=rdm(kopf_1655x(i,:),fetus_1233x(i,:));
    rdm_k1655y(i)=rdm(kopf_1655y(i,:),fetus_1233y(i,:));
    rdm_k1655z(i)=rdm(kopf_1655z(i,:),fetus_1233z(i,:));
    
    rdm_k2077x(i)=rdm(kopf_2077x(i,:),fetus_1233x(i,:));
    rdm_k2077y(i)=rdm(kopf_2077y(i,:),fetus_1233y(i,:));
    rdm_k2077z(i)=rdm(kopf_2077z(i,:),fetus_1233z(i,:));
    
    rdm_k2099x(i)=rdm(kopf_2099x(i,:),fetus_1233x(i,:));
    rdm_k2099y(i)=rdm(kopf_2099y(i,:),fetus_1233y(i,:));
    rdm_k2099z(i)=rdm(kopf_2099z(i,:),fetus_1233z(i,:));
    
    rdm_kk1655x(i)=rdm(kopf_1655x(i,:),kopf_1233x(i,:));
    rdm_kk1655y(i)=rdm(kopf_1655y(i,:),kopf_1233y(i,:));
    rdm_kk1655z(i)=rdm(kopf_1655z(i,:),kopf_1233z(i,:));
    
    rdm_kk2077x(i)=rdm(kopf_2077x(i,:),kopf_1233x(i,:));
    rdm_kk2077y(i)=rdm(kopf_2077y(i,:),kopf_1233y(i,:));
    rdm_kk2077z(i)=rdm(kopf_2077z(i,:),kopf_1233z(i,:));
    
    rdm_kk2099x(i)=rdm(kopf_2099x(i,:),kopf_1233x(i,:));
    rdm_kk2099y(i)=rdm(kopf_2099y(i,:),kopf_1233y(i,:));
    rdm_kk2099z(i)=rdm(kopf_2099z(i,:),kopf_1233z(i,:));
end;

rdm_f1233_D3x_sinis_m = mean(rdm_f1233_D3x);
rdm_f1233_D3y_sinis_m = mean(rdm_f1233_D3y);
rdm_f1233_D3z_sinis_m = mean(rdm_f1233_D3z);
rdm_f1233_D2x_sinis_m = mean(rdm_f1233_D2x);
rdm_f1233_D2y_sinis_m = mean(rdm_f1233_D2y);
rdm_f1233_D2z_sinis_m = mean(rdm_f1233_D2z);
rdm_f1655x_sinis_m = mean(rdm_f1655x);
rdm_f1655y_sinis_m = mean(rdm_f1655y);
rdm_f1655z_sinis_m = mean(rdm_f1655z);
rdm_f2077x_sinis_m = mean(rdm_f2077x);
rdm_f2077y_sinis_m = mean(rdm_f2077y);
rdm_f2077z_sinis_m = mean(rdm_f2077z);
rdm_f2099x_sinis_m = mean(rdm_f2099x);
rdm_f2099y_sinis_m = mean(rdm_f2099y);
rdm_f2099z_sinis_m = mean(rdm_f2099z);
rdm_k1233x_sinis_m = mean(rdm_k1233x);
rdm_k1233y_sinis_m = mean(rdm_k1233y);
rdm_k1233z_sinis_m = mean(rdm_k1233z);
rdm_k1655x_sinis_m = mean(rdm_k1655x);
rdm_k1655y_sinis_m = mean(rdm_k1655y);
rdm_k1655z_sinis_m = mean(rdm_k1655z);
rdm_k2077x_sinis_m = mean(rdm_k2077x);
rdm_k2077y_sinis_m = mean(rdm_k2077y);
rdm_k2077z_sinis_m = mean(rdm_k2077z);
rdm_k2099x_sinis_m = mean(rdm_k2099x);
rdm_k2099y_sinis_m = mean(rdm_k2099y);
rdm_k2099z_sinis_m = mean(rdm_k2099z);
rdm_kk1655x_sinis_m = mean(rdm_kk1655x);
rdm_kk1655y_sinis_m = mean(rdm_kk1655y);
rdm_kk1655z_sinis_m = mean(rdm_kk1655z);
rdm_kk2077x_sinis_m = mean(rdm_kk2077x);
rdm_kk2077y_sinis_m = mean(rdm_kk2077y);
rdm_kk2077z_sinis_m = mean(rdm_kk2077z);
rdm_kk2099x_sinis_m = mean(rdm_kk2099x);
rdm_kk2099y_sinis_m = mean(rdm_kk2099y);
rdm_kk2099z_sinis_m = mean(rdm_kk2099z);

rdm_f1233_D3x_sinis_s = std(rdm_f1233_D3x);
rdm_f1233_D3y_sinis_s = std(rdm_f1233_D3y);
rdm_f1233_D3z_sinis_s = std(rdm_f1233_D3z);
rdm_f1233_D2x_sinis_s = std(rdm_f1233_D2x);
rdm_f1233_D2y_sinis_s = std(rdm_f1233_D2y);
rdm_f1233_D2z_sinis_s = std(rdm_f1233_D2z);
rdm_f1655x_sinis_s    = std(rdm_f1655x);
rdm_f1655y_sinis_s    = std(rdm_f1655y);
rdm_f1655z_sinis_s    = std(rdm_f1655z);
rdm_f2077x_sinis_s    = std(rdm_f2077x);
rdm_f2077y_sinis_s    = std(rdm_f2077y);
rdm_f2077z_sinis_s    = std(rdm_f2077z);
rdm_f2099x_sinis_s    = std(rdm_f2099x);
rdm_f2099y_sinis_s    = std(rdm_f2099y);
rdm_f2099z_sinis_s    = std(rdm_f2099z);
rdm_k1233x_sinis_s    = std(rdm_k1233x);
rdm_k1233y_sinis_s    = std(rdm_k1233y);
rdm_k1233z_sinis_s    = std(rdm_k1233z);
rdm_k1655x_sinis_s    = std(rdm_k1655x);
rdm_k1655y_sinis_s    = std(rdm_k1655y);
rdm_k1655z_sinis_s    = std(rdm_k1655z);
rdm_k2077x_sinis_s    = std(rdm_k2077x);
rdm_k2077y_sinis_s    = std(rdm_k2077y);
rdm_k2077z_sinis_s    = std(rdm_k2077z);
rdm_k2099x_sinis_s    = std(rdm_k2099x);
rdm_k2099y_sinis_s    = std(rdm_k2099y);
rdm_k2099z_sinis_s    = std(rdm_k2099z);
rdm_kk1655x_sinis_s   = std(rdm_kk1655x);
rdm_kk1655y_sinis_s   = std(rdm_kk1655y);
rdm_kk1655z_sinis_s   = std(rdm_kk1655z);
rdm_kk2077x_sinis_s   = std(rdm_kk2077x);
rdm_kk2077y_sinis_s   = std(rdm_kk2077y);
rdm_kk2077z_sinis_s   = std(rdm_kk2077z);
rdm_kk2099x_sinis_s   = std(rdm_kk2099x);
rdm_kk2099y_sinis_s   = std(rdm_kk2099y);
rdm_kk2099z_sinis_s   = std(rdm_kk2099z);

rdm_f1233_D3_sinis_m = mean(mean([rdm_f1233_D3x,rdm_f1233_D3y,rdm_f1233_D3z],2));
rdm_f1233_D3_sinis_s = std(mean([rdm_f1233_D3x,rdm_f1233_D3y,rdm_f1233_D3z],2));

rdm_f1233_D2_sinis_m = mean(mean([rdm_f1233_D2x,rdm_f1233_D2y,rdm_f1233_D2z],2));
rdm_f1233_D2_sinis_s = std(mean([rdm_f1233_D2x,rdm_f1233_D2y,rdm_f1233_D2z],2));

% rdm_f1233_sinis_m = mean(mean([rdm_f1233x,rdm_f1233y,rdm_f1233z],2));
% rdm_f1233_sinis_s = std(mean([rdm_f1233x,rdm_f1233y,rdm_f1233z],2));

rdm_f1655_sinis_m = mean(mean([rdm_f1655x,rdm_f1655y,rdm_f1655z],2));
rdm_f1655_sinis_s = std(mean([rdm_f1655x,rdm_f1655y,rdm_f1655z],2));

rdm_f2077_sinis_m = mean(mean([rdm_f2077x,rdm_f2077y,rdm_f2077z],2));
rdm_f2077_sinis_s = std(mean([rdm_f2077x,rdm_f2077y,rdm_f2077z],2));

rdm_f2099_sinis_m = mean(mean([rdm_f2099x,rdm_f2099y,rdm_f2099z],2));
rdm_f2099_sinis_s = std(mean([rdm_f2099x,rdm_f2099y,rdm_f2099z],2));

rdm_k1233_sinis_m = mean(mean([rdm_k1233x,rdm_k1233y,rdm_k1233z],2));
rdm_k1233_sinis_s = std(mean([rdm_k1233x,rdm_k1233y,rdm_k1233z],2));

rdm_k1655_sinis_m = mean(mean([rdm_k1655x,rdm_k1655y,rdm_k1655z],2));
rdm_k1655_sinis_s = std(mean([rdm_k1655x,rdm_k1655y,rdm_k1655z],2));

rdm_k2077_sinis_m = mean(mean([rdm_k2077x,rdm_k2077y,rdm_k2077z],2));
rdm_k2077_sinis_s = std(mean([rdm_k2077x,rdm_k2077y,rdm_k2077z],2));

rdm_k2099_sinis_m = mean(mean([rdm_k2099x,rdm_k2099y,rdm_k2099z],2));
rdm_k2099_sinis_s = std(mean([rdm_k2099x,rdm_k2099y,rdm_k2099z],2));

rdm_kk1655_sinis_m = mean(mean([rdm_kk1655x,rdm_kk1655y,rdm_kk1655z],2));
rdm_kk1655_sinis_s = std(mean([rdm_kk1655x,rdm_kk1655y,rdm_kk1655z],2));

rdm_kk2077_sinis_m = mean(mean([rdm_kk2077x,rdm_kk2077y,rdm_kk2077z],2));
rdm_kk2077_sinis_s = std(mean([rdm_kk2077x,rdm_kk2077y,rdm_kk2077z],2));

rdm_kk2099_sinis_m = mean(mean([rdm_kk2099x,rdm_kk2099y,rdm_kk2099z],2));
rdm_kk2099_sinis_s = std(mean([rdm_kk2099x,rdm_kk2099y,rdm_kk2099z],2));

% rdm_fetus_vernix_sinis_x = [rdm_f1233_D3x_sinis_m rdm_f1233_D2x_sinis_m];
% rdm_fetus_vernix_sinis_x_std = [rdm_f1233_D3x_sinis_s rdm_f1233_D2x_sinis_s];

% rdm_fetus_sinis_x = [rdm_f1655x_sinis_m
%     rdm_f2077x_sinis_m
%     rdm_f2099x_sinis_m
%     rdm_k1233x_sinis_m
%     rdm_k1655x_sinis_m
%     rdm_k2077x_sinis_m
%     rdm_k2099x_sinis_m];
% 
% rdm_fetus_sinis_x_std = [rdm_f1655x_sinis_s
%     rdm_f2077x_sinis_s
%     rdm_f2099x_sinis_s
%     rdm_k1233x_sinis_s
%     rdm_k1655x_sinis_s
%     rdm_k2077x_sinis_s
%     rdm_k2099x_sinis_s];
% 
% rdm_kopf_sinis_x = [
%     rdm_kk1655x_sinis_m
%     rdm_kk2077x_sinis_m
%     rdm_kk2099x_sinis_m];
% 
% rdm_kopf_sinis_x_std = [
%     rdm_kk1655x_sinis_s
%     rdm_kk2077x_sinis_s
%     rdm_kk2099x_sinis_s];
% 
% rdm_fetus_vernix_sinis_y = [rdm_f1233_D3y_sinis_m rdm_f1233_D2y_sinis_m];
% rdm_fetus_vernix_sinis_y_std = [rdm_f1233_D3y_sinis_s rdm_f1233_D2y_sinis_s];
% 
% rdm_fetus_sinis_y = [rdm_f1655y_sinis_m
%     rdm_f2077y_sinis_m
%     rdm_f2099y_sinis_m
%     rdm_k1233y_sinis_m
%     rdm_k1655y_sinis_m
%     rdm_k2077y_sinis_m
%     rdm_k2099y_sinis_m];
% 
% rdm_fetus_sinis_y_std = [rdm_f1655y_sinis_s
%     rdm_f2077y_sinis_s
%     rdm_f2099y_sinis_s
%     rdm_k1233y_sinis_s
%     rdm_k1655y_sinis_s
%     rdm_k2077y_sinis_s
%     rdm_k2099y_sinis_s];
% 
% rdm_kopf_sinis_y = [
%     rdm_kk1655y_sinis_m
%     rdm_kk2077y_sinis_m
%     rdm_kk2099y_sinis_m];
% 
% rdm_kopf_sinis_y_std = [
%     rdm_kk1655y_sinis_s
%     rdm_kk2077y_sinis_s
%     rdm_kk2099y_sinis_s];
% 
% rdm_fetus_vernix_sinis_z = [rdm_f1233_D3z_sinis_m rdm_f1233_D2z_sinis_m];
% rdm_fetus_vernix_sinis_z_std = [rdm_f1233_D3z_sinis_s rdm_f1233_D2z_sinis_s];
% 
% rdm_fetus_sinis_z = [rdm_f1655z_sinis_m
%     rdm_f2077z_sinis_m
%     rdm_f2099z_sinis_m
%     rdm_k1233z_sinis_m
%     rdm_k1655z_sinis_m
%     rdm_k2077z_sinis_m
%     rdm_k2099z_sinis_m];
% 
% rdm_fetus_sinis_z_std = [rdm_f1655z_sinis_s
%     rdm_f2077z_sinis_s
%     rdm_f2099z_sinis_s
%     rdm_k1233z_sinis_s
%     rdm_k1655z_sinis_s
%     rdm_k2077z_sinis_s
%     rdm_k2099z_sinis_s];
% 
% rdm_kopf_sinis_z = [
%     rdm_kk1655z_sinis_m
%     rdm_kk2077z_sinis_m
%     rdm_kk2099z_sinis_m];
% 
% rdm_kopf_sinis_z_std = [
%     rdm_kk1655z_sinis_s
%     rdm_kk2077z_sinis_s
%     rdm_kk2099z_sinis_s];

figure
hold on;
errorbar([8 9],[rdm_f1233_D3_cran_m rdm_f1233_D2_cran_m],[rdm_f1233_D3_cran_s rdm_f1233_D2_cran_s], 'Color', 'black');
errorbar([8 9],[rdm_f1233_D3_sinis_m rdm_f1233_D2_sinis_m],[rdm_f1233_D3_sinis_s rdm_f1233_D2_sinis_s], '--*r');
errorbar([8 9],[rdm_f1233_D3_dors_m rdm_f1233_D2_dors_m],[rdm_f1233_D3_dors_s rdm_f1233_D2_dors_s], ':ob');
set(gcf, 'PaperPositionMode', 'auto');
print -depsc graphics/rdm_1233_vernix.eps

figure
hold on;
errorbar([1 2 3],[rdm_f1655_cran_m rdm_f2077_cran_m rdm_f2099_cran_m],[rdm_f1655_cran_s rdm_f2077_cran_s rdm_f2099_cran_s], 'Color', 'black');
errorbar([1 2 3],[rdm_f1655_sinis_m rdm_f2077_sinis_m rdm_f2099_sinis_m],[rdm_f1655_sinis_s rdm_f2077_sinis_s rdm_f2099_sinis_s], '--*r');
errorbar([1 2 3],[rdm_f1655_dors_m rdm_f2077_dors_m rdm_f2099_dors_m],[rdm_f1655_dors_s rdm_f2077_dors_s rdm_f2099_dors_s], ':ob');
set(gcf, 'PaperPositionMode', 'auto');
print -depsc graphics/rdm_fetus.eps

figure
hold on;
errorbar([5 6 7],[rdm_kk1655_cran_m rdm_kk2077_cran_m rdm_kk2099_cran_m],[rdm_kk1655_cran_s rdm_kk2077_cran_s rdm_kk2099_cran_s], 'Color', 'black');
errorbar([5 6 7],[rdm_kk1655_sinis_m rdm_kk2077_sinis_m rdm_kk2099_sinis_m],[rdm_kk1655_sinis_s rdm_kk2077_sinis_s rdm_kk2099_sinis_s], '--*r');
errorbar([5 6 7],[rdm_kk1655_dors_m rdm_kk2077_dors_m rdm_kk2099_dors_m],[rdm_kk1655_dors_s rdm_kk2077_dors_s rdm_kk2099_dors_s], ':ob');
set(gcf, 'PaperPositionMode', 'auto');
print -depsc graphics/rdm_kopf.eps

figure
hold on;
errorbar([0 4],[0 rdm_k1233_cran_m],[0 rdm_k1233_cran_s], 'Color', 'black');
errorbar([0 4],[0 rdm_k1233_sinis_m],[0 rdm_k1233_sinis_s], '--*r');
errorbar([0 4],[0 rdm_k1233_dors_m],[0 rdm_k1233_dors_s], ':ob');
set(gca,'XTick',0:4:4); set(gca,'XTickLabel',0:4:4);
set(gca,'YTick',0:0.2:3); set(gca,'YTickLabel',0:0.2:3);
ylim([0 1.5]);
set(gcf, 'PaperPositionMode', 'auto');
az = -90;
el = 90;
view(az, el);
print -depsc graphics/rdm_fetus_kopf_1233.eps

figure
hold on;
errorbar([1 5],[rdm_f1655_cran_m rdm_k1655_cran_m],[rdm_f1655_cran_s rdm_k1655_cran_s], 'Color', 'black');
errorbar([1 5],[rdm_f1655_sinis_m rdm_k1655_sinis_m],[rdm_f1655_sinis_s rdm_k1655_sinis_s], '--*r');
errorbar([1 5],[rdm_f1655_dors_m rdm_k1655_dors_m],[rdm_f1655_dors_s rdm_k1655_dors_s], ':ob');
set(gca,'XTick',1:4:5); set(gca,'XTickLabel',1:4:5);
set(gca,'YTick',0:0.2:3); set(gca,'YTickLabel',0:0.2:3);
ylim([0 1.5]);
set(gcf, 'PaperPositionMode', 'auto');
az = -90;
el = 90;
view(az, el);
print -depsc graphics/rdm_fetus_kopf_1655.eps

figure
hold on;
errorbar([2 6],[rdm_f2077_cran_m rdm_k2077_cran_m],[rdm_f2077_cran_s rdm_k2077_cran_s], 'Color', 'black');
errorbar([2 6],[rdm_f2077_sinis_m rdm_k2077_sinis_m],[rdm_f2077_sinis_s rdm_k2077_sinis_s], '--*r');
errorbar([2 6],[rdm_f2077_dors_m rdm_k2077_dors_m],[rdm_f2077_dors_s rdm_k2077_dors_s], ':ob');
set(gca,'XTick',2:4:6); set(gca,'XTickLabel',2:4:6);
set(gca,'YTick',0:0.2:3); set(gca,'YTickLabel',0:0.2:3);
ylim([0 1.5]);
set(gcf, 'PaperPositionMode', 'auto');
az = -90;
el = 90;
view(az, el);
print -depsc graphics/rdm_fetus_kopf_2077.eps

figure
hold on;
errorbar([3 7],[rdm_f2099_cran_m rdm_k2099_cran_m],[rdm_f2099_cran_s rdm_k2099_cran_s], 'Color', 'black');
errorbar([3 7],[rdm_f2099_sinis_m rdm_k2099_sinis_m],[rdm_f2099_sinis_s rdm_k2099_sinis_s], '--*r');
errorbar([3 7],[rdm_f2099_dors_m rdm_k2099_dors_m],[rdm_f2099_dors_s rdm_k2099_dors_s], ':ob');
set(gca,'XTick',3:4:7); set(gca,'XTickLabel',3:4:7);
set(gca,'YTick',0:0.2:3); set(gca,'YTickLabel',0:0.2:3);
ylim([0 1.5]);
set(gcf, 'PaperPositionMode', 'auto');
az = -90;
el = 90;
view(az, el);
print -depsc graphics/rdm_fetus_kopf_2099.eps



% figure;
% subplot(3,3,1);
% errorbar([8 9 10],rdm_kopf_cran_x,rdm_kopf_cran_x_std, 'Color', [0 0 0]);
% set(gca,'XTick',8:1:10); set(gca,'XTickLabel',8:1:10);
% set(gca,'fontsize',14, 'FontName','arial');
% title('RDM-Werte($\vec{e_{x}}$), Dipolrichtung cranial','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('RDM(Referenz: BEM-Modell 7)','interpreter','latex');
% subplot(3,3,2);
% errorbar([8 9 10],rdm_kopf_cran_y,rdm_kopf_cran_y_std, 'Color', [0 0 0]);
% set(gca,'XTick',8:1:10); set(gca,'XTickLabel',8:1:10);
% set(gca,'fontsize',14, 'FontName','arial');
% title('RDM-Werte($\vec{e_{y}}$), Dipolrichtung cranial','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('RDM(Referenz: BEM-Modell 7)','interpreter','latex');
% subplot(3,3,3);
% errorbar([8 9 10],rdm_kopf_cran_z,rdm_kopf_cran_z_std, 'Color', [0 0 0]);
% set(gca,'XTick',8:1:10); set(gca,'XTickLabel',8:1:10);
% set(gca,'fontsize',14, 'FontName','arial');
% title('RDM-Werte($\vec{e_{z}}$), Dipolrichtung cranial','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('RDM(Referenz: BEM-Modell 7)','interpreter','latex');
% 
% 
% subplot(3,3,4);
% errorbar([8 9 10],rdm_kopf_dors_x,rdm_kopf_dors_x_std, 'Color', [0 0 0]);
% set(gca,'XTick',8:1:10); set(gca,'XTickLabel',8:1:10);
% set(gca,'fontsize',14, 'FontName','arial');
% title('RDM-Werte($\vec{e_{x}}$), Dipolrichtung dorsal','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('RDM(Referenz: BEM-Modell 7)','interpreter','latex');
% subplot(3,3,5);
% errorbar([8 9 10],rdm_kopf_dors_y,rdm_kopf_dors_y_std, 'Color', [0 0 0]);
% set(gca,'XTick',8:1:10); set(gca,'XTickLabel',8:1:10);
% set(gca,'fontsize',14, 'FontName','arial');
% title('RDM-Werte($\vec{e_{y}}$), Dipolrichtung dorsal','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('RDM(Referenz: BEM-Modell 7)','interpreter','latex');
% subplot(3,3,6);
% errorbar([8 9 10],rdm_kopf_dors_z,rdm_kopf_dors_z_std, 'Color', [0 0 0]);
% set(gca,'XTick',8:1:10); set(gca,'XTickLabel',8:1:10);
% set(gca,'fontsize',14, 'FontName','arial');
% title('RDM-Werte($\vec{e_{z}}$), Dipolrichtung dorsal','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('RDM(Referenz: BEM-Modell 7)','interpreter','latex');
% 
% subplot(3,3,7);
% errorbar([8 9 10],rdm_kopf_sinis_x,rdm_kopf_sinis_x_std, 'Color', [0 0 0]);
% set(gca,'XTick',8:1:10); set(gca,'XTickLabel',8:1:10);
% set(gca,'fontsize',14, 'FontName','arial');
% title('RDM-Werte($\vec{e_{x}}$), Dipolrichtung sinistral','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('RDM(Referenz: BEM-Modell 7)','interpreter','latex');
% subplot(3,3,8);
% errorbar([8 9 10],rdm_kopf_sinis_y,rdm_kopf_sinis_y_std, 'Color', [0 0 0]);
% set(gca,'XTick',8:1:10); set(gca,'XTickLabel',8:1:10);
% set(gca,'fontsize',14, 'FontName','arial');
% title('RDM-Werte($\vec{e_{y}}$), Dipolrichtung sinistral','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('RDM(Referenz: BEM-Modell 7)','interpreter','latex');
% subplot(3,3,9);
% errorbar([8 9 10],rdm_kopf_sinis_z,rdm_kopf_sinis_z_std, 'Color', [0 0 0]);
% set(gca,'XTick',8:1:10); set(gca,'XTickLabel',8:1:10);
% set(gca,'fontsize',14, 'FontName','arial');
% title('RDM-Werte($\vec{e_{z}}$), Dipolrichtung sinistral','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('RDM(Referenz: BEM-Modell 7)','interpreter','latex');
% 
% %title('RDM-Werte f�r verschiedene BEM-Modelle und Dipolrichtungen mit
% %Referenzmodell 7');
% figure;
% subplot(3,3,1);
% errorbar([8 9],rdm_fetus_vernix_cran_x,rdm_fetus_vernix_cran_x_std, 'Color', [0 0 0]);
% set(gca,'XTick',2:1:3); set(gca,'XTickLabel',2:1:3);
% set(gca,'fontsize',14, 'FontName','arial');
% title('RDM-Werte($\vec{e_{x}}$), Dipolrichtung cranial','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('RDM(Referenz: BEM-Modell 1)','interpreter','latex');
% subplot(3,3,2);
% errorbar([8 9],rdm_fetus_vernix_cran_y,rdm_fetus_vernix_cran_y_std, 'Color', [0 0 0]);
% set(gca,'XTick',2:1:3); set(gca,'XTickLabel',2:1:3);
% set(gca,'fontsize',14, 'FontName','arial');
% title('RDM-Werte($\vec{e_{y}}$), Dipolrichtung cranial','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('RDM(Referenz: BEM-Modell 1)','interpreter','latex');
% subplot(3,3,3);
% errorbar([8 9],rdm_fetus_vernix_cran_z,rdm_fetus_vernix_cran_z_std, 'Color', [0 0 0]);
% set(gca,'XTick',2:1:3); set(gca,'XTickLabel',2:1:3);
% set(gca,'fontsize',14, 'FontName','arial');
% title('RDM-Werte($\vec{e_{z}}$), Dipolrichtung cranial','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('RDM(Referenz: BEM-Modell 1)','interpreter','latex');
% 
% subplot(3,3,4);
% errorbar([8 9],rdm_fetus_vernix_dors_x,rdm_fetus_vernix_dors_x_std, 'Color', [0 0 0]);
% set(gca,'XTick',2:1:3); set(gca,'XTickLabel',2:1:3);
% set(gca,'fontsize',14, 'FontName','arial');
% title('RDM-Werte($\vec{e_{x}}$), Dipolrichtung dorsal','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('RDM(Referenz: BEM-Modell 1)','interpreter','latex');
% subplot(3,3,5);
% errorbar([8 9],rdm_fetus_vernix_dors_y,rdm_fetus_vernix_dors_y_std, 'Color', [0 0 0]);
% set(gca,'XTick',2:1:3); set(gca,'XTickLabel',2:1:3);
% set(gca,'fontsize',14, 'FontName','arial');
% title('RDM-Werte($\vec{e_{y}}$), Dipolrichtung dorsal','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('RDM(Referenz: BEM-Modell 1)','interpreter','latex');
% subplot(3,3,6);
% errorbar([8 9],rdm_fetus_vernix_dors_z,rdm_fetus_vernix_dors_z_std, 'Color', [0 0 0]);
% set(gca,'XTick',2:1:3); set(gca,'XTickLabel',2:1:3);
% set(gca,'fontsize',14, 'FontName','arial');
% title('RDM-Werte($\vec{e_{z}}$), Dipolrichtung dorsal','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('RDM(Referenz: BEM-Modell 1)','interpreter','latex');
% 
% subplot(3,3,7);
% errorbar([8 9],rdm_fetus_vernix_sinis_x,rdm_fetus_vernix_sinis_x_std, 'Color', [0 0 0]);
% set(gca,'XTick',2:1:3); set(gca,'XTickLabel',2:1:3);
% set(gca,'fontsize',14, 'FontName','arial');
% title('RDM-Werte($\vec{e_{x}}$), Dipolrichtung sinistral','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('RDM(Referenz: BEM-Modell 1)','interpreter','latex');
% subplot(3,3,8);
% errorbar([8 9],rdm_fetus_vernix_sinis_y,rdm_fetus_vernix_sinis_y_std, 'Color', [0 0 0]);
% set(gca,'XTick',2:1:3); set(gca,'XTickLabel',2:1:3);
% set(gca,'fontsize',14, 'FontName','arial');
% title('RDM-Werte($\vec{e_{y}}$), Dipolrichtung sinistral','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('RDM(Referenz: BEM-Modell 1)','interpreter','latex');
% subplot(3,3,9);
% errorbar([8 9],rdm_fetus_vernix_sinis_z,rdm_fetus_vernix_sinis_z_std, 'Color', [0 0 0]);
% set(gca,'XTick',2:1:3); set(gca,'XTickLabel',2:1:3);
% set(gca,'fontsize',14, 'FontName','arial');
% title('RDM-Werte($\vec{e_{z}}$), Dipolrichtung sinistral','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('RDM(Referenz: BEM-Modell 1)','interpreter','latex');
% 
% figure;
% subplot(3,3,1);
% errorbar([4 5 6 7 8 9 10],rdm_fetus_cran_x,rdm_fetus_cran_x_std, 'Color', [0 0 0]);
% set(gca,'XTick',4:1:10); set(gca,'XTickLabel',4:1:10);
% set(gca,'fontsize',14, 'FontName','arial');
% title('RDM-Werte($\vec{e_{x}}$), Dipolrichtung cranial','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('RDM(Referenz: BEM-Modell 1)','interpreter','latex');
% subplot(3,3,2);
% errorbar([4 5 6 7 8 9 10],rdm_fetus_cran_y,rdm_fetus_cran_y_std, 'Color', [0 0 0]);
% set(gca,'XTick',4:1:10); set(gca,'XTickLabel',4:1:10);
% set(gca,'fontsize',14, 'FontName','arial');
% title('RDM-Werte($\vec{e_{y}}$), Dipolrichtung cranial','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('RDM(Referenz: BEM-Modell 1)','interpreter','latex');
% subplot(3,3,3);
% errorbar([4 5 6 7 8 9 10],rdm_fetus_cran_z,rdm_fetus_cran_z_std, 'Color', [0 0 0]);
% set(gca,'XTick',4:1:10); set(gca,'XTickLabel',4:1:10);
% set(gca,'fontsize',14, 'FontName','arial');
% title('RDM-Werte($\vec{e_{z}}$), Dipolrichtung cranial','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('RDM(Referenz: BEM-Modell 1)','interpreter','latex');
% 
% subplot(3,3,4);
% errorbar([4 5 6 7 8 9 10],rdm_fetus_dors_x,rdm_fetus_dors_x_std, 'Color', [0 0 0]);
% set(gca,'XTick',4:1:10); set(gca,'XTickLabel',4:1:10);
% set(gca,'fontsize',14, 'FontName','arial');
% title('RDM-Werte($\vec{e_{x}}$), Dipolrichtung dorsal','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('RDM(Referenz: BEM-Modell 1)','interpreter','latex');
% subplot(3,3,5);
% errorbar([4 5 6 7 8 9 10],rdm_fetus_dors_y,rdm_fetus_dors_y_std, 'Color', [0 0 0]);
% set(gca,'XTick',4:1:10); set(gca,'XTickLabel',4:1:10);
% set(gca,'fontsize',14, 'FontName','arial');
% title('RDM-Werte($\vec{e_{y}}$), Dipolrichtung dorsal','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('RDM(Referenz: BEM-Modell 1)','interpreter','latex');
% subplot(3,3,6);
% errorbar([4 5 6 7 8 9 10],rdm_fetus_dors_z,rdm_fetus_dors_z_std, 'Color', [0 0 0]);
% set(gca,'XTick',4:1:10); set(gca,'XTickLabel',4:1:10);
% set(gca,'fontsize',14, 'FontName','arial');
% title('RDM-Werte($\vec{e_{z}}$), Dipolrichtung dorsal','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('RDM(Referenz: BEM-Modell 1)','interpreter','latex');
% 
% subplot(3,3,7);
% errorbar([4 5 6 7 8 9 10],rdm_fetus_sinis_x,rdm_fetus_sinis_x_std, 'Color', [0 0 0]);
% set(gca,'XTick',4:1:10); set(gca,'XTickLabel',4:1:10);
% set(gca,'fontsize',14, 'FontName','arial');
% title('RDM-Werte($\vec{e_{x}}$), Dipolrichtung sinistral','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('RDM(Referenz: BEM-Modell 1)','interpreter','latex');
% subplot(3,3,8);
% errorbar([4 5 6 7 8 9 10],rdm_fetus_sinis_y,rdm_fetus_sinis_y_std, 'Color', [0 0 0]);
% set(gca,'XTick',4:1:10); set(gca,'XTickLabel',4:1:10);
% set(gca,'fontsize',14, 'FontName','arial');
% title('RDM-Werte($\vec{e_{y}}$), Dipolrichtung sinistral','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('RDM(Referenz: BEM-Modell 1)','interpreter','latex');
% subplot(3,3,9);
% errorbar([4 5 6 7 8 9 10],rdm_fetus_sinis_z,rdm_fetus_sinis_z_std, 'Color', [0 0 0]);
% set(gca,'XTick',4:1:10); set(gca,'XTickLabel',4:1:10);
% set(gca,'fontsize',14, 'FontName','arial');
% title('RDM-Werte($\vec{e_{z}}$), Dipolrichtung sinistral','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('RDM(Referenz: BEM-Modell 1)','interpreter','latex');

for i=1:1025
    mag_f1233_D3x(i) = mag(fetus_1233_D3x(i,:), fetus_1233x(i,:));
    mag_f1233_D3y(i) = mag(fetus_1233_D3y(i,:),fetus_1233y(i,:));
    mag_f1233_D3z(i) = mag(fetus_1233_D3z(i,:),fetus_1233z(i,:));
    mag_f1233_D2x(i) = mag(fetus_1233_D2x(i,:),fetus_1233x(i,:));
    mag_f1233_D2y(i) = mag(fetus_1233_D2y(i,:),fetus_1233y(i,:));
    mag_f1233_D2z(i) = mag(fetus_1233_D2z(i,:),fetus_1233z(i,:));
    mag_f1655x(i)    = mag(fetus_1655x(i,:),fetus_1233x(i,:));
    mag_f1655y(i)    = mag(fetus_1655y(i,:),fetus_1233y(i,:));
    mag_f1655z(i)    = mag(fetus_1655z(i,:),fetus_1233z(i,:));
    mag_f2077x(i)    = mag(fetus_2077x(i,:),fetus_1233x(i,:));
    mag_f2077y(i)    = mag(fetus_2077y(i,:),fetus_1233y(i,:));
    mag_f2077z(i)    = mag(fetus_2077z(i,:),fetus_1233z(i,:));
    mag_f2099x(i)    = mag(fetus_2099x(i,:),fetus_1233x(i,:));
    mag_f2099y(i)    = mag(fetus_2099y(i,:),fetus_1233y(i,:));
    mag_f2099z(i)    = mag(fetus_2099z(i,:),fetus_1233z(i,:));
    mag_k1233x(i)    = mag(kopf_1233x(i,:),fetus_1233x(i,:));
    mag_k1233y(i)    = mag(kopf_1233y(i,:),fetus_1233y(i,:));
    mag_k1233z(i)    = mag(kopf_1233z(i,:),fetus_1233z(i,:));
    mag_k1655x(i)    = mag(kopf_1655x(i,:),fetus_1233x(i,:));
    mag_k1655y(i)    = mag(kopf_1655y(i,:),fetus_1233y(i,:));
    mag_k1655z(i)    = mag(kopf_1655z(i,:),fetus_1233z(i,:));
    mag_k2077x(i)    = mag(kopf_2077x(i,:),fetus_1233x(i,:));
    mag_k2077y(i)    = mag(kopf_2077y(i,:),fetus_1233y(i,:));
    mag_k2077z(i)    = mag(kopf_2077z(i,:),fetus_1233z(i,:));
    mag_k2099x(i)    = mag(kopf_2099x(i,:),fetus_1233x(i,:));
    mag_k2099y(i)    = mag(kopf_2099y(i,:),fetus_1233y(i,:));
    mag_k2099z(i)    = mag(kopf_2099z(i,:),fetus_1233z(i,:));
    mag_kk1655x(i)   = mag(kopf_1655x(i,:),kopf_1233x(i,:));
    mag_kk1655y(i)   = mag(kopf_1655y(i,:),kopf_1233y(i,:));
    mag_kk1655z(i)   = mag(kopf_1655z(i,:),kopf_1233z(i,:));
    mag_kk2077x(i)   = mag(kopf_2077x(i,:),kopf_1233x(i,:));
    mag_kk2077y(i)   = mag(kopf_2077y(i,:),kopf_1233y(i,:));
    mag_kk2077z(i)   = mag(kopf_2077z(i,:),kopf_1233z(i,:));
    mag_kk2099x(i)   = mag(kopf_2099x(i,:),kopf_1233x(i,:));
    mag_kk2099y(i)   = mag(kopf_2099y(i,:),kopf_1233y(i,:));
    mag_kk2099z(i)   = mag(kopf_2099z(i,:),kopf_1233z(i,:));
end;

mag_f1233_D3x_sinis_m = mean(mag_f1233_D3x);
mag_f1233_D3y_sinis_m = mean(mag_f1233_D3y);
mag_f1233_D3z_sinis_m = mean(mag_f1233_D3z);
mag_f1233_D2x_sinis_m = mean(mag_f1233_D2x);
mag_f1233_D2y_sinis_m = mean(mag_f1233_D2y);
mag_f1233_D2z_sinis_m = mean(mag_f1233_D2z);
mag_f1655x_sinis_m    = mean(mag_f1655x);
mag_f1655y_sinis_m    = mean(mag_f1655y);
mag_f1655z_sinis_m    = mean(mag_f1655z);
mag_f2077x_sinis_m    = mean(mag_f2077x);
mag_f2077y_sinis_m    = mean(mag_f2077y);
mag_f2077z_sinis_m    = mean(mag_f2077z);
mag_f2099x_sinis_m    = mean(mag_f2099x);
mag_f2099y_sinis_m    = mean(mag_f2099y);
mag_f2099z_sinis_m    = mean(mag_f2099z);
mag_k1233x_sinis_m    = mean(mag_k1233x);
mag_k1233y_sinis_m    = mean(mag_k1233y);
mag_k1233z_sinis_m    = mean(mag_k1233z);
mag_k1655x_sinis_m    = mean(mag_k1655x);
mag_k1655y_sinis_m    = mean(mag_k1655y);
mag_k1655z_sinis_m    = mean(mag_k1655z);
mag_k2077x_sinis_m    = mean(mag_k2077x);
mag_k2077y_sinis_m    = mean(mag_k2077y);
mag_k2077z_sinis_m    = mean(mag_k2077z);
mag_k2099x_sinis_m    = mean(mag_k2099x);
mag_k2099y_sinis_m    = mean(mag_k2099y);
mag_k2099z_sinis_m    = mean(mag_k2099z);
mag_kk1655x_sinis_m   = mean(mag_kk1655x);
mag_kk1655y_sinis_m   = mean(mag_kk1655y);
mag_kk1655z_sinis_m   = mean(mag_kk1655z);
mag_kk2077x_sinis_m   = mean(mag_kk2077x);
mag_kk2077y_sinis_m   = mean(mag_kk2077y);
mag_kk2077z_sinis_m   = mean(mag_kk2077z);
mag_kk2099x_sinis_m   = mean(mag_kk2099x);
mag_kk2099y_sinis_m   = mean(mag_kk2099y);
mag_kk2099z_sinis_m   = mean(mag_kk2099z);

mag_f1233_D3x_sinis_s = std(mag_f1233_D3x);
mag_f1233_D3y_sinis_s = std(mag_f1233_D3y);
mag_f1233_D3z_sinis_s = std(mag_f1233_D3z);
mag_f1233_D2x_sinis_s = std(mag_f1233_D2x);
mag_f1233_D2y_sinis_s = std(mag_f1233_D2y);
mag_f1233_D2z_sinis_s = std(mag_f1233_D2z);
mag_f1655x_sinis_s    = std(mag_f1655x);
mag_f1655y_sinis_s    = std(mag_f1655y);
mag_f1655z_sinis_s    = std(mag_f1655z);
mag_f2077x_sinis_s    = std(mag_f2077x);
mag_f2077y_sinis_s    = std(mag_f2077y);
mag_f2077z_sinis_s    = std(mag_f2077z);
mag_f2099x_sinis_s    = std(mag_f2099x);
mag_f2099y_sinis_s    = std(mag_f2099y);
mag_f2099z_sinis_s    = std(mag_f2099z);
mag_k1233x_sinis_s    = std(mag_k1233x);
mag_k1233y_sinis_s    = std(mag_k1233y);
mag_k1233z_sinis_s    = std(mag_k1233z);
mag_k1655x_sinis_s    = std(mag_k1655x);
mag_k1655y_sinis_s    = std(mag_k1655y);
mag_k1655z_sinis_s    = std(mag_k1655z);
mag_k2077x_sinis_s    = std(mag_k2077x);
mag_k2077y_sinis_s    = std(mag_k2077y);
mag_k2077z_sinis_s    = std(mag_k2077z);
mag_k2099x_sinis_s    = std(mag_k2099x);
mag_k2099y_sinis_s    = std(mag_k2099y);
mag_k2099z_sinis_s    = std(mag_k2099z);
mag_kk1655x_sinis_s   = std(mag_kk1655x);
mag_kk1655y_sinis_s   = std(mag_kk1655y);
mag_kk1655z_sinis_s   = std(mag_kk1655z);
mag_kk2077x_sinis_s   = std(mag_kk2077x);
mag_kk2077y_sinis_s   = std(mag_kk2077y);
mag_kk2077z_sinis_s   = std(mag_kk2077z);
mag_kk2099x_sinis_s   = std(mag_kk2099x);
mag_kk2099y_sinis_s   = std(mag_kk2099y);
mag_kk2099z_sinis_s   = std(mag_kk2099z);

mag_f1233_D3_sinis_m = mean(mean([mag_f1233_D3x,mag_f1233_D3y,mag_f1233_D3z],2));
mag_f1233_D3_sinis_s = std(mean([mag_f1233_D3x,mag_f1233_D3y,mag_f1233_D3z],2));

mag_f1233_D2_sinis_m = mean(mean([mag_f1233_D2x,mag_f1233_D2y,mag_f1233_D2z],2));
mag_f1233_D2_sinis_s = std(mean([mag_f1233_D2x,mag_f1233_D2y,mag_f1233_D2z],2));

% mag_f1233_sinis_m = mean(mean([mag_f1233x,mag_f1233y,mag_f1233z],2));
% mag_f1233_sinis_s = std(mean([mag_f1233x,mag_f1233y,mag_f1233z],2));

mag_f1655_sinis_m = mean(mean([mag_f1655x,mag_f1655y,mag_f1655z],2));
mag_f1655_sinis_s = std(mean([mag_f1655x,mag_f1655y,mag_f1655z],2));

mag_f2077_sinis_m = mean(mean([mag_f2077x,mag_f2077y,mag_f2077z],2));
mag_f2077_sinis_s = std(mean([mag_f2077x,mag_f2077y,mag_f2077z],2));

mag_f2099_sinis_m = mean(mean([mag_f2099x,mag_f2099y,mag_f2099z],2));
mag_f2099_sinis_s = std(mean([mag_f2099x,mag_f2099y,mag_f2099z],2));

mag_k1233_sinis_m = mean(mean([mag_k1233x,mag_k1233y,mag_k1233z],2));
mag_k1233_sinis_s = std(mean([mag_k1233x,mag_k1233y,mag_k1233z],2));

mag_k1655_sinis_m = mean(mean([mag_k1655x,mag_k1655y,mag_k1655z],2));
mag_k1655_sinis_s = std(mean([mag_k1655x,mag_k1655y,mag_k1655z],2));

mag_k2077_sinis_m = mean(mean([mag_k2077x,mag_k2077y,mag_k2077z],2));
mag_k2077_sinis_s = std(mean([mag_k2077x,mag_k2077y,mag_k2077z],2));

mag_k2099_sinis_m = mean(mean([mag_k2099x,mag_k2099y,mag_k2099z],2));
mag_k2099_sinis_s = std(mean([mag_k2099x,mag_k2099y,mag_k2099z],2));

mag_kk1655_sinis_m = mean(mean([mag_kk1655x,mag_kk1655y,mag_kk1655z],2));
mag_kk1655_sinis_s = std(mean([mag_kk1655x,mag_kk1655y,mag_kk1655z],2));

mag_kk2077_sinis_m = mean(mean([mag_kk2077x,mag_kk2077y,mag_kk2077z],2));
mag_kk2077_sinis_s = std(mean([mag_kk2077x,mag_kk2077y,mag_kk2077z],2));

mag_kk2099_sinis_m = mean(mean([mag_kk2099x,mag_kk2099y,mag_kk2099z],2));
mag_kk2099_sinis_s = std(mean([mag_kk2099x,mag_kk2099y,mag_kk2099z],2));

% mag_fetus_vernix_sinis_x = [mag_f1233_D3x_sinis_m mag_f1233_D2x_sinis_m];
% mag_fetus_vernix_sinis_x_std = [mag_f1233_D3x_sinis_s mag_f1233_D2x_sinis_s];
% 
% mag_fetus_sinis_x = [mag_f1655x_sinis_m
%     mag_f2077x_sinis_m
%     mag_f2099x_sinis_m
%     mag_k1233x_sinis_m
%     mag_k1655x_sinis_m
%     mag_k2077x_sinis_m
%     mag_k2099x_sinis_m];
% 
% mag_fetus_sinis_x_std = [mag_f1655x_sinis_s
%     mag_f2077x_sinis_s
%     mag_f2099x_sinis_s
%     mag_k1233x_sinis_s
%     mag_k1655x_sinis_s
%     mag_k2077x_sinis_s
%     mag_k2099x_sinis_s];
% 
% mag_kopf_sinis_x = [
%     mag_kk1655x_sinis_m
%     mag_kk2077x_sinis_m
%     mag_kk2099x_sinis_m];
% 
% mag_kopf_sinis_x_std = [
%     mag_kk1655x_sinis_s
%     mag_kk2077x_sinis_s
%     mag_kk2099x_sinis_s];
% 
% mag_fetus_vernix_sinis_y = [mag_f1233_D3y_sinis_m mag_f1233_D2y_sinis_m];
% mag_fetus_vernix_sinis_y_std = [mag_f1233_D3y_sinis_s mag_f1233_D2y_sinis_s];
% 
% mag_fetus_sinis_y = [mag_f1655y_sinis_m
%     mag_f2077y_sinis_m
%     mag_f2099y_sinis_m
%     mag_k1233y_sinis_m
%     mag_k1655y_sinis_m
%     mag_k2077y_sinis_m
%     mag_k2099y_sinis_m];
% 
% mag_fetus_sinis_y_std = [mag_f1655y_sinis_s
%     mag_f2077y_sinis_s
%     mag_f2099y_sinis_s
%     mag_k1233y_sinis_s
%     mag_k1655y_sinis_s
%     mag_k2077y_sinis_s
%     mag_k2099y_sinis_s];
% 
% mag_kopf_sinis_y = [
%     mag_kk1655y_sinis_m
%     mag_kk2077y_sinis_m
%     mag_kk2099y_sinis_m];
% 
% mag_kopf_sinis_y_std = [
%     mag_kk1655y_sinis_s
%     mag_kk2077y_sinis_s
%     mag_kk2099y_sinis_s];
% 
% mag_fetus_vernix_sinis_z = [mag_f1233_D3z_sinis_m mag_f1233_D2z_sinis_m];
% mag_fetus_vernix_sinis_z_std = [mag_f1233_D3z_sinis_s mag_f1233_D2z_sinis_s];
% 
% mag_fetus_sinis_z = [mag_f1655z_sinis_m
%     mag_f2077z_sinis_m
%     mag_f2099z_sinis_m
%     mag_k1233z_sinis_m
%     mag_k1655z_sinis_m
%     mag_k2077z_sinis_m
%     mag_k2099z_sinis_m];
% 
% mag_fetus_sinis_z_std = [mag_f1655z_sinis_s
%     mag_f2077z_sinis_s
%     mag_f2099z_sinis_s
%     mag_k1233z_sinis_s
%     mag_k1655z_sinis_s
%     mag_k2077z_sinis_s
%     mag_k2099z_sinis_s];
% 
% mag_kopf_sinis_z = [
%     mag_kk1655z_sinis_m
%     mag_kk2077z_sinis_m
%     mag_kk2099z_sinis_m];
% 
% mag_kopf_sinis_z_std = [
%     mag_kk1655z_sinis_s
%     mag_kk2077z_sinis_s
%     mag_kk2099z_sinis_s];

figure
hold on;
errorbar([8 9],[mag_f1233_D3_cran_m mag_f1233_D2_cran_m],[mag_f1233_D3_cran_s mag_f1233_D2_cran_s], 'Color', 'black');
errorbar([8 9],[mag_f1233_D3_sinis_m mag_f1233_D2_sinis_m],[mag_f1233_D3_sinis_s mag_f1233_D2_sinis_s], '--*r');
errorbar([8 9],[mag_f1233_D3_dors_m mag_f1233_D2_dors_m],[mag_f1233_D3_dors_s mag_f1233_D2_dors_s], ':ob');
set(gcf, 'PaperPositionMode', 'auto');
print -depsc graphics/mag_1233_vernix.eps

figure
hold on;
errorbar([1 2 3],[mag_f1655_cran_m mag_f2077_cran_m mag_f2099_cran_m],[mag_f1655_cran_s mag_f2077_cran_s mag_f2099_cran_s], 'Color', 'black');
errorbar([1 2 3],[mag_f1655_sinis_m mag_f2077_sinis_m mag_f2099_sinis_m],[mag_f1655_sinis_s mag_f2077_sinis_s mag_f2099_sinis_s], '--*r');
errorbar([1 2 3],[mag_f1655_dors_m mag_f2077_dors_m mag_f2099_dors_m],[mag_f1655_dors_s mag_f2077_dors_s mag_f2099_dors_s], ':ob');
set(gcf, 'PaperPositionMode', 'auto');
print -depsc graphics/mag_fetus.eps

figure
hold on;
errorbar([5 6 7],[mag_kk1655_cran_m mag_kk2077_cran_m mag_kk2099_cran_m],[mag_kk1655_cran_s mag_kk2077_cran_s mag_kk2099_cran_s], 'Color', 'black');
errorbar([5 6 7],[mag_kk1655_sinis_m mag_kk2077_sinis_m mag_kk2099_sinis_m],[mag_kk1655_sinis_s mag_kk2077_sinis_s mag_kk2099_sinis_s], '--*r');
errorbar([5 6 7],[mag_kk1655_dors_m mag_kk2077_dors_m mag_kk2099_dors_m],[mag_kk1655_dors_s mag_kk2077_dors_s mag_kk2099_dors_s], ':ob');
set(gcf, 'PaperPositionMode', 'auto');
print -depsc graphics/mag_kopf.eps

figure
hold on;
errorbar([0 4],[1 mag_k1233_cran_m],[0 mag_k1233_cran_s], 'Color', 'black');
errorbar([0 4],[1 mag_k1233_sinis_m],[0 mag_k1233_sinis_s], '--*r');
errorbar([0 4],[1 mag_k1233_dors_m],[0 mag_k1233_dors_s], ':ob');
set(gca,'XTick',0:4:4); set(gca,'XTickLabel',0:4:4);
set(gca,'YTick',0:0.2:3); set(gca,'YTickLabel',0:0.2:3);
set(gcf, 'PaperPositionMode', 'auto');
az = -90;
el = 90;
view(az, el);
print -depsc graphics/mag_fetus_kopf_1233.eps

figure
hold on;
errorbar([1 5],[mag_f1655_cran_m mag_k1655_cran_m],[mag_f1655_cran_s mag_k1655_cran_s], 'Color', 'black');
errorbar([1 5],[mag_f1655_sinis_m mag_k1655_sinis_m],[mag_f1655_sinis_s mag_k1655_sinis_s], '--*r');
errorbar([1 5],[mag_f1655_dors_m mag_k1655_dors_m],[mag_f1655_dors_s mag_k1655_dors_s], ':ob');
set(gca,'XTick',1:4:5); set(gca,'XTickLabel',1:4:5);
set(gca,'YTick',0:0.2:3); set(gca,'YTickLabel',0:0.2:3);
set(gcf, 'PaperPositionMode', 'auto');
az = -90;
el = 90;
view(az, el);
print -depsc graphics/mag_fetus_kopf_1655.eps

figure
hold on;
errorbar([2 6],[mag_f2077_cran_m mag_k2077_cran_m],[mag_f2077_cran_s mag_k2077_cran_s], 'Color', 'black');
errorbar([2 6],[mag_f2077_sinis_m mag_k2077_sinis_m],[mag_f2077_sinis_s mag_k2077_sinis_s], '--*r');
errorbar([2 6],[mag_f2077_dors_m mag_k2077_dors_m],[mag_f2077_dors_s mag_k2077_dors_s], ':ob');
set(gca,'XTick',2:4:6); set(gca,'XTickLabel',2:4:6);
set(gca,'YTick',0:0.2:3); set(gca,'YTickLabel',0:0.2:3);
set(gcf, 'PaperPositionMode', 'auto');
az = -90;
el = 90;
view(az, el);
print -depsc graphics/mag_fetus_kopf_2077.eps

figure
hold on;
errorbar([3 7],[mag_f2099_cran_m mag_k2099_cran_m],[mag_f2099_cran_s mag_k2099_cran_s], 'Color', 'black');
errorbar([3 7],[mag_f2099_sinis_m mag_k2099_sinis_m],[mag_f2099_sinis_s mag_k2099_sinis_s], '--*r');
errorbar([3 7],[mag_f2099_dors_m mag_k2099_dors_m],[mag_f2099_dors_s mag_k2099_dors_s], ':ob');
set(gca,'XTick',3:4:7); set(gca,'XTickLabel',3:4:7);
set(gca,'YTick',0:0.2:3); set(gca,'YTickLabel',0:0.2:3);
set(gcf, 'PaperPositionMode', 'auto');
az = -90;
el = 90;
view(az, el);
print -depsc graphics/mag_fetus_kopf_2099.eps

% figure;
% subplot(3,3,1);
% errorbar([8 9 10],mag_kopf_cran_x,mag_kopf_cran_x_std, 'Color', [0 0 0]);
% set(gca,'XTick',8:1:10); set(gca,'XTickLabel',8:1:10);
% set(gca,'fontsize',14, 'FontName','arial');
% title('MAG-Werte($\vec{e_{x}}$), Dipolrichtung cranial','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('MAG(Referenz: BEM-Modell 7)','interpreter','latex');
% subplot(3,3,2);
% errorbar([8 9 10],mag_kopf_cran_y,mag_kopf_cran_y_std, 'Color', [0 0 0]);
% set(gca,'XTick',8:1:10); set(gca,'XTickLabel',8:1:10);
% set(gca,'fontsize',14, 'FontName','arial');
% title('MAG-Werte($\vec{e_{y}}$), Dipolrichtung cranial','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('MAG(Referenz: BEM-Modell 7)','interpreter','latex');
% subplot(3,3,3);
% errorbar([8 9 10],mag_kopf_cran_z,mag_kopf_cran_z_std, 'Color', [0 0 0]);
% set(gca,'XTick',8:1:10); set(gca,'XTickLabel',8:1:10);
% set(gca,'fontsize',14, 'FontName','arial');
% title('MAG-Werte($\vec{e_{z}}$), Dipolrichtung cranial','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('MAG(Referenz: BEM-Modell 7)','interpreter','latex');
% 
% subplot(3,3,4);
% errorbar([8 9 10],mag_kopf_dors_x,mag_kopf_dors_x_std, 'Color', [0 0 0]);
% set(gca,'XTick',8:1:10); set(gca,'XTickLabel',8:1:10);
% set(gca,'fontsize',14, 'FontName','arial');
% title('MAG-Werte($\vec{e_{x}}$), Dipolrichtung dorsal','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('MAG(Referenz: BEM-Modell 7)','interpreter','latex');
% subplot(3,3,5);
% errorbar([8 9 10],mag_kopf_dors_y,mag_kopf_dors_y_std, 'Color', [0 0 0]);
% set(gca,'XTick',8:1:10); set(gca,'XTickLabel',8:1:10);
% set(gca,'fontsize',14, 'FontName','arial');
% title('MAG-Werte($\vec{e_{y}}$), Dipolrichtung dorsal','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('MAG(Referenz: BEM-Modell 7)','interpreter','latex');
% subplot(3,3,6);
% errorbar([8 9 10],mag_kopf_dors_z,mag_kopf_dors_z_std, 'Color', [0 0 0]);
% set(gca,'XTick',8:1:10); set(gca,'XTickLabel',8:1:10);
% set(gca,'fontsize',14, 'FontName','arial');
% title('MAG-Werte($\vec{e_{z}}$), Dipolrichtung dorsal','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('MAG(Referenz: BEM-Modell 7)','interpreter','latex');
% 
% subplot(3,3,7);
% errorbar([8 9 10],mag_kopf_sinis_x,mag_kopf_sinis_x_std, 'Color', [0 0 0]);
% set(gca,'XTick',8:1:10); set(gca,'XTickLabel',8:1:10);
% set(gca,'fontsize',14, 'FontName','arial');
% title('MAG-Werte($\vec{e_{x}}$), Dipolrichtung sinistral','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('MAG(Referenz: BEM-Modell 7)','interpreter','latex');
% subplot(3,3,8);
% errorbar([8 9 10],mag_kopf_sinis_y,mag_kopf_sinis_y_std, 'Color', [0 0 0]);
% set(gca,'XTick',8:1:10); set(gca,'XTickLabel',8:1:10);
% set(gca,'fontsize',14, 'FontName','arial');
% title('MAG-Werte($\vec{e_{y}}$), Dipolrichtung sinistral','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('MAG(Referenz: BEM-Modell 7)','interpreter','latex');
% subplot(3,3,9);
% errorbar([8 9 10],mag_kopf_sinis_z,mag_kopf_sinis_z_std, 'Color', [0 0 0]);
% set(gca,'XTick',8:1:10); set(gca,'XTickLabel',8:1:10);
% set(gca,'fontsize',14, 'FontName','arial');
% title('MAG-Werte($\vec{e_{z}}$), Dipolrichtung sinistral','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('MAG(Referenz: BEM-Modell 7)','interpreter','latex');
% 
% %title('MAG-Werte f�r verschiedene BEM-Modelle und Dipolrichtungen mit
% %Referenzmodell 7');
% figure;
% subplot(3,3,1);
% errorbar([8 9],mag_fetus_vernix_cran_x,mag_fetus_vernix_cran_x_std, 'Color', [0 0 0]);
% set(gca,'XTick',2:1:3); set(gca,'XTickLabel',2:1:3);
% set(gca,'fontsize',14, 'FontName','arial');
% title('MAG-Werte($\vec{e_{x}}$), Dipolrichtung cranial','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('MAG(Referenz: BEM-Modell 1)','interpreter','latex');
% subplot(3,3,2);
% errorbar([8 9],mag_fetus_vernix_cran_y,mag_fetus_vernix_cran_y_std, 'Color', [0 0 0]);
% set(gca,'XTick',2:1:3); set(gca,'XTickLabel',2:1:3);
% set(gca,'fontsize',14, 'FontName','arial');
% title('MAG-Werte($\vec{e_{y}}$), Dipolrichtung cranial','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('MAG(Referenz: BEM-Modell 1)','interpreter','latex');
% subplot(3,3,3);
% errorbar([8 9],mag_fetus_vernix_cran_z,mag_fetus_vernix_cran_z_std, 'Color', [0 0 0]);
% set(gca,'XTick',2:1:3); set(gca,'XTickLabel',2:1:3);
% set(gca,'fontsize',14, 'FontName','arial');
% title('MAG-Werte($\vec{e_{z}}$), Dipolrichtung cranial','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('MAG(Referenz: BEM-Modell 1)','interpreter','latex');
% 
% subplot(3,3,4);
% errorbar([8 9],mag_fetus_vernix_dors_x,mag_fetus_vernix_dors_x_std, 'Color', [0 0 0]);
% set(gca,'XTick',2:1:3); set(gca,'XTickLabel',2:1:3);
% set(gca,'fontsize',14, 'FontName','arial');
% title('MAG-Werte($\vec{e_{x}}$), Dipolrichtung dorsal','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('MAG(Referenz: BEM-Modell 1)','interpreter','latex');
% subplot(3,3,5);
% errorbar([8 9],mag_fetus_vernix_dors_y,mag_fetus_vernix_dors_y_std, 'Color', [0 0 0]);
% set(gca,'XTick',2:1:3); set(gca,'XTickLabel',2:1:3);
% set(gca,'fontsize',14, 'FontName','arial');
% title('MAG-Werte($\vec{e_{y}}$), Dipolrichtung dorsal','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('MAG(Referenz: BEM-Modell 1)','interpreter','latex');
% subplot(3,3,6);
% errorbar([8 9],mag_fetus_vernix_dors_z,mag_fetus_vernix_dors_z_std, 'Color', [0 0 0]);
% set(gca,'XTick',2:1:3); set(gca,'XTickLabel',2:1:3);
% set(gca,'fontsize',14, 'FontName','arial');
% title('MAG-Werte($\vec{e_{z}}$), Dipolrichtung dorsal','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('MAG(Referenz: BEM-Modell 1)','interpreter','latex');
% 
% subplot(3,3,7);
% errorbar([8 9],mag_fetus_vernix_sinis_x,mag_fetus_vernix_sinis_x_std, 'Color', [0 0 0]);
% set(gca,'XTick',2:1:3); set(gca,'XTickLabel',2:1:3);
% set(gca,'fontsize',14, 'FontName','arial');
% title('MAG-Werte($\vec{e_{x}}$), Dipolrichtung sinistral','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('MAG(Referenz: BEM-Modell 1)','interpreter','latex');
% subplot(3,3,8);
% errorbar([8 9],mag_fetus_vernix_sinis_y,mag_fetus_vernix_sinis_y_std, 'Color', [0 0 0]);
% set(gca,'XTick',2:1:3); set(gca,'XTickLabel',2:1:3);
% set(gca,'fontsize',14, 'FontName','arial');
% title('MAG-Werte($\vec{e_{y}}$), Dipolrichtung sinistral','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('MAG(Referenz: BEM-Modell 1)','interpreter','latex');
% subplot(3,3,9);
% errorbar([8 9],mag_fetus_vernix_sinis_z,mag_fetus_vernix_sinis_z_std, 'Color', [0 0 0]);
% set(gca,'XTick',2:1:3); set(gca,'XTickLabel',2:1:3);
% set(gca,'fontsize',14, 'FontName','arial');
% title('MAG-Werte($\vec{e_{z}}$), Dipolrichtung sinistral','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('MAG(Referenz: BEM-Modell 1)','interpreter','latex');
% 
% figure;
% subplot(3,3,1);
% errorbar([4 5 6 7 8 9 10],mag_fetus_cran_x,mag_fetus_cran_x_std, 'Color', [0 0 0]);
% set(gca,'XTick',4:1:10); set(gca,'XTickLabel',4:1:10);
% set(gca,'fontsize',14, 'FontName','arial');
% title('MAG-Werte($\vec{e_{x}}$), Dipolrichtung cranial','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('MAG(Referenz: BEM-Modell 1)','interpreter','latex');
% subplot(3,3,2);
% errorbar([4 5 6 7 8 9 10],mag_fetus_cran_y,mag_fetus_cran_y_std, 'Color', [0 0 0]);
% set(gca,'XTick',4:1:10); set(gca,'XTickLabel',4:1:10);
% set(gca,'fontsize',14, 'FontName','arial');
% title('MAG-Werte($\vec{e_{y}}$), Dipolrichtung cranial','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('MAG(Referenz: BEM-Modell 1)','interpreter','latex');
% subplot(3,3,3);
% errorbar([4 5 6 7 8 9 10],mag_fetus_cran_z,mag_fetus_cran_z_std, 'Color', [0 0 0]);
% set(gca,'XTick',4:1:10); set(gca,'XTickLabel',4:1:10);
% set(gca,'fontsize',14, 'FontName','arial');
% title('MAG-Werte($\vec{e_{z}}$), Dipolrichtung cranial','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('MAG(Referenz: BEM-Modell 1)','interpreter','latex');
% 
% subplot(3,3,4);
% errorbar([4 5 6 7 8 9 10],mag_fetus_dors_x,mag_fetus_dors_x_std, 'Color', [0 0 0]);
% set(gca,'XTick',4:1:10); set(gca,'XTickLabel',4:1:10);
% set(gca,'fontsize',14, 'FontName','arial');
% title('MAG-Werte($\vec{e_{x}}$), Dipolrichtung dorsal','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('MAG(Referenz: BEM-Modell 1)','interpreter','latex');
% subplot(3,3,5);
% errorbar([4 5 6 7 8 9 10],mag_fetus_dors_y,mag_fetus_dors_y_std, 'Color', [0 0 0]);
% set(gca,'XTick',4:1:10); set(gca,'XTickLabel',4:1:10);
% set(gca,'fontsize',14, 'FontName','arial');
% title('MAG-Werte($\vec{e_{y}}$), Dipolrichtung dorsal','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('MAG(Referenz: BEM-Modell 1)','interpreter','latex');
% subplot(3,3,6);
% errorbar([4 5 6 7 8 9 10],mag_fetus_dors_z,mag_fetus_dors_z_std, 'Color', [0 0 0]);
% set(gca,'XTick',4:1:10); set(gca,'XTickLabel',4:1:10);
% set(gca,'fontsize',14, 'FontName','arial');
% title('MAG-Werte($\vec{e_{z}}$), Dipolrichtung dorsal','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('MAG(Referenz: BEM-Modell 1)','interpreter','latex');
% 
% subplot(3,3,7);
% errorbar([4 5 6 7 8 9 10],mag_fetus_sinis_x,mag_fetus_sinis_x_std, 'Color', [0 0 0]);
% set(gca,'XTick',4:1:10); set(gca,'XTickLabel',4:1:10);
% set(gca,'fontsize',14, 'FontName','arial');
% title('MAG-Werte($\vec{e_{x}}$), Dipolrichtung sinistral','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('MAG(Referenz: BEM-Modell 1)','interpreter','latex');
% subplot(3,3,8);
% errorbar([4 5 6 7 8 9 10],mag_fetus_sinis_y,mag_fetus_sinis_y_std, 'Color', [0 0 0]);
% set(gca,'XTick',4:1:10); set(gca,'XTickLabel',4:1:10);
% set(gca,'fontsize',14, 'FontName','arial');
% title('MAG-Werte($\vec{e_{y}}$), Dipolrichtung sinistral','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('MAG(Referenz: BEM-Modell 1)','interpreter','latex');
% subplot(3,3,9);
% errorbar([4 5 6 7 8 9 10],mag_fetus_sinis_z,mag_fetus_sinis_z_std, 'Color', [0 0 0]);
% set(gca,'XTick',4:1:10); set(gca,'XTickLabel',4:1:10);
% set(gca,'fontsize',14, 'FontName','arial');
% title('MAG-Werte($\vec{e_{z}}$), Dipolrichtung sinistral','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('MAG(Referenz: BEM-Modell 1)','interpreter','latex');

[tilde,norm1,mag1] = curry_dip_read('result_f_fetus_1233_1025_cran.dip',1025);

n_f_fetus_1233_cran = mag1{1};

mag_f_fetus_1233_cran_m = mean(mag1{1});
mag_f_fetus_1233_cran_s = std(mag1{1});

phi_f_fetus_1233_cran=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];
bvec=[1,0,0];
for i=1:1025
    phi_f_fetus_1233_cran(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

phi_f_fetus_1233_cran_m = mean(phi_f_fetus_1233_cran);
phi_f_fetus_1233_cran_s = std(phi_f_fetus_1233_cran);

[tilde,norm1,mag1] = curry_dip_read('result_f_fetus_1233_1025_D3_cran.dip',1025);

n_f_fetus_1233_D3_cran = mag1{1};

mag_f_fetus_1233_D3_cran_m = mean(mag1{1});
mag_f_fetus_1233_D3_cran_s = std(mag1{1});

phi_f_fetus_1233_D3_cran=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];
bvec=[1,0,0];
for i=1:1025
    phi_f_fetus_1233_D3_cran(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

phi_f_fetus_1233_D3_cran_m = mean(phi_f_fetus_1233_D3_cran);
phi_f_fetus_1233_D3_cran_s = std(phi_f_fetus_1233_D3_cran);

[tilde,norm1,mag1] = curry_dip_read('result_f_fetus_1233_1025_D2_cran.dip',1025);

n_f_fetus_1233_D2_cran = mag1{1};

mag_f_fetus_1233_D2_cran_m = mean(mag1{1});
mag_f_fetus_1233_D2_cran_s = std(mag1{1});

phi_f_fetus_1233_D2_cran=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];
bvec=[1,0,0];
for i=1:1025
    phi_f_fetus_1233_D2_cran(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

phi_f_fetus_1233_D2_cran_m = mean(phi_f_fetus_1233_D2_cran);
phi_f_fetus_1233_D2_cran_s = std(phi_f_fetus_1233_D2_cran);

[tilde,norm1,mag1] = curry_dip_read('result_f_fetus_1655_1025_cran.dip',1025);

n_f_fetus_1655_cran = mag1{1};

mag_f_fetus_1655_cran_m = mean(mag1{1});
mag_f_fetus_1655_cran_s = std(mag1{1});

phi_f_fetus_1655_cran=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];

bvec=[1,0,0];
for i=1:1025
    phi_f_fetus_1655_cran(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

phi_f_fetus_1655_cran_m = mean(phi_f_fetus_1655_cran);
phi_f_fetus_1655_cran_s = std(phi_f_fetus_1655_cran);

[tilde,norm1,mag1] = curry_dip_read('result_f_fetus_2077_1025_cran.dip',1025);

n_f_fetus_2077_cran = mag1{1};

mag_f_fetus_2077_cran_m = mean(mag1{1});
mag_f_fetus_2077_cran_s = std(mag1{1});

phi_f_fetus_2077_cran=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];

bvec=[1,0,0];
for i=1:1025
    phi_f_fetus_2077_cran(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

phi_f_fetus_2077_cran_m = mean(phi_f_fetus_2077_cran);
phi_f_fetus_2077_cran_s = std(phi_f_fetus_2077_cran);

[tilde,norm1,mag1] = curry_dip_read('result_f_fetus_2099_1025_cran.dip',1025);

n_f_fetus_2099_cran = mag1{1};

mag_f_fetus_2099_cran_m = mean(mag1{1});
mag_f_fetus_2099_cran_s = std(mag1{1});

phi_f_fetus_2099_cran=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];

bvec=[1,0,0];
for i=1:1025
    phi_f_fetus_2099_cran(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

phi_f_fetus_2099_cran_m = mean(phi_f_fetus_2099_cran);
phi_f_fetus_2099_cran_s = std(phi_f_fetus_2099_cran);

[tilde,norm1,mag1] = curry_dip_read('result_f_kopf_1233_1025_cran.dip',1025);

n_f_kopf_1233_cran = mag1{1};

mag_f_kopf_1233_cran_m = mean(mag1{1});
mag_f_kopf_1233_cran_s = std(mag1{1});

phi_f_kopf_1233_cran=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];

bvec=[1,0,0];
for i=1:1025
    phi_f_kopf_1233_cran(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

phi_f_kopf_1233_cran_m = mean(phi_f_kopf_1233_cran);
phi_f_kopf_1233_cran_s = std(phi_f_kopf_1233_cran);

[tilde,norm1,mag1] = curry_dip_read('result_f_kopf_1655_1025_cran.dip',1025);

n_f_kopf_1655_cran = mag1{1};

mag_f_kopf_1655_cran_m = mean(mag1{1});
mag_f_kopf_1655_cran_s = std(mag1{1});

phi_f_kopf_1655_cran=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];

bvec=[1,0,0];
for i=1:1025
    phi_f_kopf_1655_cran(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

phi_f_kopf_1655_cran_m = mean(phi_f_kopf_1655_cran);
phi_f_kopf_1655_cran_s = std(phi_f_kopf_1655_cran);

[tilde,norm1,mag1] = curry_dip_read('result_f_kopf_2077_1025_cran.dip',1025);

n_f_kopf_2077_cran = mag1{1};

mag_f_kopf_2077_cran_m = mean(mag1{1});
mag_f_kopf_2077_cran_s = std(mag1{1});

phi_f_kopf_2077_cran=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];

bvec=[1,0,0];
for i=1:1025
    phi_f_kopf_2077_cran(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

phi_f_kopf_2077_cran_m = mean(phi_f_kopf_2077_cran);
phi_f_kopf_2077_cran_s = std(phi_f_kopf_2077_cran);

[loc1,norm1,mag1] = curry_dip_read('result_f_kopf_2099_1025_cran.dip',1025);

n_f_kopf_2099_cran =mag1{1};

mag_f_kopf_2099_cran_m = mean(mag1{1});
mag_f_kopf_2099_cran_s = std(mag1{1});

phi_f_kopf_2099_cran=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];

bvec=[1,0,0];
for i=1:1025
    phi_f_kopf_2099_cran(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

phi_f_kopf_2099_cran_m = mean(phi_f_kopf_2099_cran);
phi_f_kopf_2099_cran_s = std(phi_f_kopf_2099_cran);

%%%%%%%%%%%%%%%%%%%%%%%%%%%dorsal%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

[tilde,norm1,mag1] = curry_dip_read('result_f_fetus_1233_1025_dors.dip',1025);

n_f_fetus_1233_dors = mag1{1};

mag_f_fetus_1233_dors_m = mean(mag1{1});
mag_f_fetus_1233_dors_s = std(mag1{1});

phi_f_fetus_1233_dors=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];
bvec=[1,0,0];
for i=1:1025
    phi_f_fetus_1233_dors(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

phi_f_fetus_1233_dors_m = mean(phi_f_fetus_1233_dors);
phi_f_fetus_1233_dors_s = std(phi_f_fetus_1233_dors);

[tilde,norm1,mag1] = curry_dip_read('result_f_fetus_1233_1025_D3_dors.dip',1025);

n_f_fetus_1233_D3_dors = mag1{1};

mag_f_fetus_1233_D3_dors_m = mean(mag1{1});
mag_f_fetus_1233_D3_dors_s = std(mag1{1});

phi_f_fetus_1233_D3_dors=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];
bvec=[1,0,0];
for i=1:1025
    phi_f_fetus_1233_D3_dors(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

phi_f_fetus_1233_D3_dors_m = mean(phi_f_fetus_1233_D3_dors);
phi_f_fetus_1233_D3_dors_s = std(phi_f_fetus_1233_D3_dors);

[tilde,norm1,mag1] = curry_dip_read('result_f_fetus_1233_1025_D2_dors.dip',1025);

n_f_fetus_1233_D2_dors = mag1{1};

mag_f_fetus_1233_D2_dors_m = mean(mag1{1});
mag_f_fetus_1233_D2_dors_s = std(mag1{1});

phi_f_fetus_1233_D2_dors=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];
bvec=[1,0,0];
for i=1:1025
    phi_f_fetus_1233_D2_dors(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

phi_f_fetus_1233_D2_dors_m = mean(phi_f_fetus_1233_D2_dors);
phi_f_fetus_1233_D2_dors_s = std(phi_f_fetus_1233_D2_dors);

[tilde,norm1,mag1] = curry_dip_read('result_f_fetus_1655_1025_dors.dip',1025);

n_f_fetus_1655_dors = mag1{1};

mag_f_fetus_1655_dors_m = mean(mag1{1});
mag_f_fetus_1655_dors_s = std(mag1{1});

phi_f_fetus_1655_dors=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];

bvec=[1,0,0];
for i=1:1025
    phi_f_fetus_1655_dors(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

phi_f_fetus_1655_dors_m = mean(phi_f_fetus_1655_dors);
phi_f_fetus_1655_dors_s = std(phi_f_fetus_1655_dors);

[tilde,norm1,mag1] = curry_dip_read('result_f_fetus_2077_1025_dors.dip',1025);

n_f_fetus_2077_dors = mag1{1};

mag_f_fetus_2077_dors_m = mean(mag1{1});
mag_f_fetus_2077_dors_s = std(mag1{1});

phi_f_fetus_2077_dors=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];

bvec=[1,0,0];
for i=1:1025
    phi_f_fetus_2077_dors(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

phi_f_fetus_2077_dors_m = mean(phi_f_fetus_2077_dors);
phi_f_fetus_2077_dors_s = std(phi_f_fetus_2077_dors);

[tilde,norm1,mag1] = curry_dip_read('result_f_fetus_2099_1025_dors.dip',1025);

n_f_fetus_2099_dors = mag1{1};

mag_f_fetus_2099_dors_m = mean(mag1{1});
mag_f_fetus_2099_dors_s = std(mag1{1});

phi_f_fetus_2099_dors=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];

bvec=[1,0,0];
for i=1:1025
    phi_f_fetus_2099_dors(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

phi_f_fetus_2099_dors_m = mean(phi_f_fetus_2099_dors);
phi_f_fetus_2099_dors_s = std(phi_f_fetus_2099_dors);

[tilde,norm1,mag1] = curry_dip_read('result_f_kopf_1233_1025_dors.dip',1025);

n_f_kopf_1233_dors = mag1{1};

mag_f_kopf_1233_dors_m = mean(mag1{1});
mag_f_kopf_1233_dors_s = std(mag1{1});

phi_f_kopf_1233_dors=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];

bvec=[1,0,0];
for i=1:1025
    phi_f_kopf_1233_dors(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

phi_f_kopf_1233_dors_m = mean(phi_f_kopf_1233_dors);
phi_f_kopf_1233_dors_s = std(phi_f_kopf_1233_dors);

[tilde,norm1,mag1] = curry_dip_read('result_f_kopf_1655_1025_dors.dip',1025);

n_f_kopf_1655_dors = mag1{1};

mag_f_kopf_1655_dors_m = mean(mag1{1});
mag_f_kopf_1655_dors_s = std(mag1{1});

phi_f_kopf_1655_dors=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];

bvec=[1,0,0];
for i=1:1025
    phi_f_kopf_1655_dors(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

phi_f_kopf_1655_dors_m = mean(phi_f_kopf_1655_dors);
phi_f_kopf_1655_dors_s = std(phi_f_kopf_1655_dors);

[tilde,norm1,mag1] = curry_dip_read('result_f_kopf_2077_1025_dors.dip',1025);

n_f_kopf_2077_dors = mag1{1};

mag_f_kopf_2077_dors_m = mean(mag1{1});
mag_f_kopf_2077_dors_s = std(mag1{1});

phi_f_kopf_2077_dors=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];

bvec=[1,0,0];
for i=1:1025
    phi_f_kopf_2077_dors(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

phi_f_kopf_2077_dors_m = mean(phi_f_kopf_2077_dors);
phi_f_kopf_2077_dors_s = std(phi_f_kopf_2077_dors);

[loc1,norm1,mag1] = curry_dip_read('result_f_kopf_2099_1025_dors.dip',1025);

n_f_kopf_2099_dors =mag1{1};

mag_f_kopf_2099_dors_m = mean(mag1{1});
mag_f_kopf_2099_dors_s = std(mag1{1});

phi_f_kopf_2099_dors=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];

bvec=[1,0,0];
for i=1:1025
    phi_f_kopf_2099_dors(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

phi_f_kopf_2099_dors_m = mean(phi_f_kopf_2099_dors);
phi_f_kopf_2099_dors_s = std(phi_f_kopf_2099_dors);

[tilde,norm1,mag1] = curry_dip_read('result_f_fetus_1233_1025_sinis.dip',1025);

n_f_fetus_1233_sinis = mag1{1};

mag_f_fetus_1233_sinis_m = mean(mag1{1});
mag_f_fetus_1233_sinis_s = std(mag1{1});

phi_f_fetus_1233_sinis=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];
bvec=[1,0,0];
for i=1:1025
    phi_f_fetus_1233_sinis(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

phi_f_fetus_1233_sinis_m = mean(phi_f_fetus_1233_sinis);
phi_f_fetus_1233_sinis_s = std(phi_f_fetus_1233_sinis);

[tilde,norm1,mag1] = curry_dip_read('result_f_fetus_1233_1025_D3_sinis.dip',1025);

n_f_fetus_1233_D3_sinis = mag1{1};

mag_f_fetus_1233_D3_sinis_m = mean(mag1{1});
mag_f_fetus_1233_D3_sinis_s = std(mag1{1});

phi_f_fetus_1233_D3_sinis=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];
bvec=[1,0,0];
for i=1:1025
    phi_f_fetus_1233_D3_sinis(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

phi_f_fetus_1233_D3_sinis_m = mean(phi_f_fetus_1233_D3_sinis);
phi_f_fetus_1233_D3_sinis_s = std(phi_f_fetus_1233_D3_sinis);

[tilde,norm1,mag1] = curry_dip_read('result_f_fetus_1233_1025_D2_sinis.dip',1025);

n_f_fetus_1233_D2_sinis = mag1{1};

mag_f_fetus_1233_D2_sinis_m = mean(mag1{1});
mag_f_fetus_1233_D2_sinis_s = std(mag1{1});

phi_f_fetus_1233_D2_sinis=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];
bvec=[1,0,0];
for i=1:1025
    phi_f_fetus_1233_D2_sinis(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

phi_f_fetus_1233_D2_sinis_m = mean(phi_f_fetus_1233_D2_sinis);
phi_f_fetus_1233_D2_sinis_s = std(phi_f_fetus_1233_D2_sinis);

[tilde,norm1,mag1] = curry_dip_read('result_f_fetus_1655_1025_sinis.dip',1025);

n_f_fetus_1655_sinis = mag1{1};

mag_f_fetus_1655_sinis_m = mean(mag1{1});
mag_f_fetus_1655_sinis_s = std(mag1{1});

phi_f_fetus_1655_sinis=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];

bvec=[1,0,0];
for i=1:1025
    phi_f_fetus_1655_sinis(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

phi_f_fetus_1655_sinis_m = mean(phi_f_fetus_1655_sinis);
phi_f_fetus_1655_sinis_s = std(phi_f_fetus_1655_sinis);

[tilde,norm1,mag1] = curry_dip_read('result_f_fetus_2077_1025_sinis.dip',1025);

n_f_fetus_2077_sinis = mag1{1};

mag_f_fetus_2077_sinis_m = mean(mag1{1});
mag_f_fetus_2077_sinis_s = std(mag1{1});

phi_f_fetus_2077_sinis=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];

bvec=[1,0,0];
for i=1:1025
    phi_f_fetus_2077_sinis(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

phi_f_fetus_2077_sinis_m = mean(phi_f_fetus_2077_sinis);
phi_f_fetus_2077_sinis_s = std(phi_f_fetus_2077_sinis);

[tilde,norm1,mag1] = curry_dip_read('result_f_fetus_2099_1025_sinis.dip',1025);

n_f_fetus_2099_sinis = mag1{1};

mag_f_fetus_2099_sinis_m = mean(mag1{1});
mag_f_fetus_2099_sinis_s = std(mag1{1});

phi_f_fetus_2099_sinis=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];

bvec=[1,0,0];
for i=1:1025
    phi_f_fetus_2099_sinis(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

phi_f_fetus_2099_sinis_m = mean(phi_f_fetus_2099_sinis);
phi_f_fetus_2099_sinis_s = std(phi_f_fetus_2099_sinis);

[tilde,norm1,mag1] = curry_dip_read('result_f_kopf_1233_1025_sinis.dip',1025);

n_f_kopf_1233_sinis = mag1{1};

mag_f_kopf_1233_sinis_m = mean(mag1{1});
mag_f_kopf_1233_sinis_s = std(mag1{1});

phi_f_kopf_1233_sinis=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];

bvec=[1,0,0];
for i=1:1025
    phi_f_kopf_1233_sinis(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

phi_f_kopf_1233_sinis_m = mean(phi_f_kopf_1233_sinis);
phi_f_kopf_1233_sinis_s = std(phi_f_kopf_1233_sinis);

[tilde,norm1,mag1] = curry_dip_read('result_f_kopf_1655_1025_sinis.dip',1025);

n_f_kopf_1655_sinis = mag1{1};

mag_f_kopf_1655_sinis_m = mean(mag1{1});
mag_f_kopf_1655_sinis_s = std(mag1{1});

phi_f_kopf_1655_sinis=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];

bvec=[1,0,0];
for i=1:1025
    phi_f_kopf_1655_sinis(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

phi_f_kopf_1655_sinis_m = mean(phi_f_kopf_1655_sinis);
phi_f_kopf_1655_sinis_s = std(phi_f_kopf_1655_sinis);

[tilde,norm1,mag1] = curry_dip_read('result_f_kopf_2077_1025_sinis.dip',1025);

n_f_kopf_2077_sinis = mag1{1};

mag_f_kopf_2077_sinis_m = mean(mag1{1});
mag_f_kopf_2077_sinis_s = std(mag1{1});

phi_f_kopf_2077_sinis=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];

bvec=[1,0,0];
for i=1:1025
    phi_f_kopf_2077_sinis(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

phi_f_kopf_2077_sinis_m = mean(phi_f_kopf_2077_sinis);
phi_f_kopf_2077_sinis_s = std(phi_f_kopf_2077_sinis);

[loc1,norm1,mag1] = curry_dip_read('result_f_kopf_2099_1025_sinis.dip',1025);

n_f_kopf_2099_sinis =mag1{1};

mag_f_kopf_2099_sinis_m = mean(mag1{1});
mag_f_kopf_2099_sinis_s = std(mag1{1});

phi_f_kopf_2099_sinis=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];

bvec=[1,0,0];
for i=1:1025
    phi_f_kopf_2099_sinis(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

phi_f_kopf_2099_sinis_m = mean(phi_f_kopf_2099_sinis);
phi_f_kopf_2099_sinis_s = std(phi_f_kopf_2099_sinis);

figure
hold on;
errorbar([8 9],[phi_f_fetus_1233_D3_cran_m phi_f_fetus_1233_D2_cran_m],[phi_f_fetus_1233_D3_cran_s phi_f_fetus_1233_D2_cran_s], 'Color', 'black');
errorbar([8 9],[phi_f_fetus_1233_D3_sinis_m phi_f_fetus_1233_D2_sinis_m],[phi_f_fetus_1233_D3_sinis_s phi_f_fetus_1233_D2_sinis_s], '--*r');
errorbar([8 9],[phi_f_fetus_1233_D3_dors_m phi_f_fetus_1233_D2_dors_m],[phi_f_fetus_1233_D3_dors_s phi_f_fetus_1233_D2_dors_s], ':ob');
set(gcf, 'PaperPositionMode', 'auto');
print -depsc graphics/phi_f_1233_vernix.eps

figure
hold on;
errorbar([1 2 3],[phi_f_fetus_1655_cran_m phi_f_fetus_2077_cran_m phi_f_fetus_2099_cran_m],[phi_f_fetus_1655_cran_s phi_f_fetus_2077_cran_s phi_f_fetus_2099_cran_s], 'Color', 'black');
errorbar([1 2 3],[phi_f_fetus_1655_sinis_m phi_f_fetus_2077_sinis_m phi_f_fetus_2099_sinis_m],[phi_f_fetus_1655_sinis_s phi_f_fetus_2077_sinis_s phi_f_fetus_2099_sinis_s], '--*r');
errorbar([1 2 3],[phi_f_fetus_1655_dors_m phi_f_fetus_2077_dors_m phi_f_fetus_2099_dors_m],[phi_f_fetus_1655_dors_s phi_f_fetus_2077_dors_s phi_f_fetus_2099_dors_s], ':ob');
set(gcf, 'PaperPositionMode', 'auto');
print -depsc graphics/phi_f_fetus.eps

figure
hold on;
errorbar([0 4],[0 phi_f_kopf_1233_cran_m],[0 phi_f_kopf_1233_cran_s], 'Color', 'black');
errorbar([0 4],[0 phi_f_kopf_1233_sinis_m],[0 phi_f_kopf_1233_sinis_s], '--*r');
errorbar([0 4],[0 phi_f_kopf_1233_dors_m],[0 phi_f_kopf_1233_dors_s], ':ob');
set(gca,'XTick',0:4:4); set(gca,'XTickLabel',0:4:4);
set(gca,'YTick',0:0.2:3); set(gca,'YTickLabel',0:0.2:3);
ylim([0 1.5]);
set(gcf, 'PaperPositionMode', 'auto');
az = -90;
el = 90;
view(az, el);
print -depsc graphics/phi_f_fetus_kopf_1233.eps

figure
hold on;
errorbar([1 5],[phi_f_fetus_1655_cran_m phi_f_kopf_1655_cran_m],[phi_f_fetus_1655_cran_s phi_f_kopf_1655_cran_s], 'Color', 'black');
errorbar([1 5],[phi_f_fetus_1655_sinis_m phi_f_kopf_1655_sinis_m],[phi_f_fetus_1655_sinis_s phi_f_kopf_1655_sinis_s], '--*r');
errorbar([1 5],[phi_f_fetus_1655_dors_m phi_f_kopf_1655_dors_m],[phi_f_fetus_1655_dors_s phi_f_kopf_1655_dors_s], ':ob');
set(gca,'XTick',1:4:5); set(gca,'XTickLabel',1:4:5);
set(gca,'YTick',0:0.2:3); set(gca,'YTickLabel',0:0.2:3);
ylim([0 1.5]);
set(gcf, 'PaperPositionMode', 'auto');
az = -90;
el = 90;
view(az, el);
print -depsc graphics/phi_f_fetus_kopf_1655.eps

figure
hold on;
errorbar([2 6],[phi_f_fetus_2077_cran_m phi_f_kopf_2077_cran_m],[phi_f_fetus_2077_cran_s phi_f_kopf_2077_cran_s], 'Color', 'black');
errorbar([2 6],[phi_f_fetus_2077_sinis_m phi_f_kopf_2077_sinis_m],[phi_f_fetus_2077_sinis_s phi_f_kopf_2077_sinis_s], '--*r');
errorbar([2 6],[phi_f_fetus_2077_dors_m phi_f_kopf_2077_dors_m],[phi_f_fetus_2077_dors_s phi_f_kopf_2077_dors_s], ':ob');
set(gca,'XTick',2:4:6); set(gca,'XTickLabel',2:4:6);
set(gca,'YTick',0:0.2:3); set(gca,'YTickLabel',0:0.2:3);
ylim([0 1.5]);
set(gcf, 'PaperPositionMode', 'auto');
az = -90;
el = 90;
view(az, el);
print -depsc graphics/phi_f_fetus_kopf_2077.eps

figure
hold on;
errorbar([3 7],[phi_f_fetus_2099_cran_m phi_f_kopf_2099_cran_m],[phi_f_fetus_2099_cran_s phi_f_kopf_2099_cran_s], 'Color', 'black');
errorbar([3 7],[phi_f_fetus_2099_sinis_m phi_f_kopf_2099_sinis_m],[phi_f_fetus_2099_sinis_s phi_f_kopf_2099_sinis_s], '--*r');
errorbar([3 7],[phi_f_fetus_2099_dors_m phi_f_kopf_2099_dors_m],[phi_f_fetus_2099_dors_s phi_f_kopf_2099_dors_s], ':ob');
set(gca,'XTick',3:4:7); set(gca,'XTickLabel',3:4:7);
set(gca,'YTick',0:0.2:3); set(gca,'YTickLabel',0:0.2:3);
ylim([0 1.5]);
set(gcf, 'PaperPositionMode', 'auto');
az = -90;
el = 90;
view(az, el);
print -depsc graphics/phi_f_fetus_kopf_2099.eps

figure
hold on;
errorbar([8 9],[mag_f_fetus_1233_D3_cran_m mag_f_fetus_1233_D2_cran_m],[mag_f_fetus_1233_D3_cran_s mag_f_fetus_1233_D2_cran_s], 'Color', 'black');
errorbar([8 9],[mag_f_fetus_1233_D3_sinis_m mag_f_fetus_1233_D2_sinis_m],[mag_f_fetus_1233_D3_sinis_s mag_f_fetus_1233_D2_sinis_s], '--*r');
errorbar([8 9],[mag_f_fetus_1233_D3_dors_m mag_f_fetus_1233_D2_dors_m],[mag_f_fetus_1233_D3_dors_s mag_f_fetus_1233_D2_dors_s], ':ob');
set(gcf, 'PaperPositionMode', 'auto');
print -depsc graphics/mag_f_1233_vernix.eps

figure
hold on;
errorbar([1 2 3],[mag_f_fetus_1655_cran_m mag_f_fetus_2077_cran_m mag_f_fetus_2099_cran_m],[mag_f_fetus_1655_cran_s mag_f_fetus_2077_cran_s mag_f_fetus_2099_cran_s], 'Color', 'black');
errorbar([1 2 3],[mag_f_fetus_1655_sinis_m mag_f_fetus_2077_sinis_m mag_f_fetus_2099_sinis_m],[mag_f_fetus_1655_sinis_s mag_f_fetus_2077_sinis_s mag_f_fetus_2099_sinis_s], '--*r');
errorbar([1 2 3],[mag_f_fetus_1655_dors_m mag_f_fetus_2077_dors_m mag_f_fetus_2099_dors_m],[mag_f_fetus_1655_dors_s mag_f_fetus_2077_dors_s mag_f_fetus_2099_dors_s], ':ob');
set(gcf, 'PaperPositionMode', 'auto');
print -depsc graphics/mag_f_fetus.eps

figure
hold on;
errorbar([0 4],[0 mag_f_kopf_1233_cran_m],[0 mag_f_kopf_1233_cran_s], 'Color', 'black');
errorbar([0 4],[0 mag_f_kopf_1233_sinis_m],[0 mag_f_kopf_1233_sinis_s], '--*r');
errorbar([0 4],[0 mag_f_kopf_1233_dors_m],[0 mag_f_kopf_1233_dors_s], ':ob');
set(gca,'XTick',0:4:4); set(gca,'XTickLabel',0:4:4);
set(gca,'YTick',0:0.2:3); set(gca,'YTickLabel',0:0.2:3);
ylim([0 1.5]);
set(gcf, 'PaperPositionMode', 'auto');
az = -90;
el = 90;
view(az, el);
print -depsc graphics/mag_f_fetus_kopf_1233.eps

figure
hold on;
errorbar([1 5],[mag_f_fetus_1655_cran_m mag_f_kopf_1655_cran_m],[mag_f_fetus_1655_cran_s mag_f_kopf_1655_cran_s], 'Color', 'black');
errorbar([1 5],[mag_f_fetus_1655_sinis_m mag_f_kopf_1655_sinis_m],[mag_f_fetus_1655_sinis_s mag_f_kopf_1655_sinis_s], '--*r');
errorbar([1 5],[mag_f_fetus_1655_dors_m mag_f_kopf_1655_dors_m],[mag_f_fetus_1655_dors_s mag_f_kopf_1655_dors_s], ':ob');
set(gca,'XTick',1:4:5); set(gca,'XTickLabel',1:4:5);
set(gca,'YTick',0:0.2:3); set(gca,'YTickLabel',0:0.2:3);
ylim([0 1.5]);
set(gcf, 'PaperPositionMode', 'auto');
az = -90;
el = 90;
view(az, el);
print -depsc graphics/mag_f_fetus_kopf_1655.eps

figure
hold on;
errorbar([2 6],[mag_f_fetus_2077_cran_m mag_f_kopf_2077_cran_m],[mag_f_fetus_2077_cran_s mag_f_kopf_2077_cran_s], 'Color', 'black');
errorbar([2 6],[mag_f_fetus_2077_sinis_m mag_f_kopf_2077_sinis_m],[mag_f_fetus_2077_sinis_s mag_f_kopf_2077_sinis_s], '--*r');
errorbar([2 6],[mag_f_fetus_2077_dors_m mag_f_kopf_2077_dors_m],[mag_f_fetus_2077_dors_s mag_f_kopf_2077_dors_s], ':ob');
set(gca,'XTick',2:4:6); set(gca,'XTickLabel',2:4:6);
set(gca,'YTick',0:0.2:3); set(gca,'YTickLabel',0:0.2:3);
ylim([0 1.5]);
set(gcf, 'PaperPositionMode', 'auto');
az = -90;
el = 90;
view(az, el);
print -depsc graphics/mag_f_fetus_kopf_2077.eps

figure
hold on;
errorbar([3 7],[mag_f_fetus_2099_cran_m mag_f_kopf_2099_cran_m],[mag_f_fetus_2099_cran_s mag_f_kopf_2099_cran_s], 'Color', 'black');
errorbar([3 7],[mag_f_fetus_2099_sinis_m mag_f_kopf_2099_sinis_m],[mag_f_fetus_2099_sinis_s mag_f_kopf_2099_sinis_s], '--*r');
errorbar([3 7],[mag_f_fetus_2099_dors_m mag_f_kopf_2099_dors_m],[mag_f_fetus_2099_dors_s mag_f_kopf_2099_dors_s], ':ob');
set(gca,'XTick',3:4:7); set(gca,'XTickLabel',3:4:7);
set(gca,'YTick',0:0.2:3); set(gca,'YTickLabel',0:0.2:3);
ylim([0 1.5]);
set(gcf, 'PaperPositionMode', 'auto');
az = -90;
el = 90;
view(az, el);
print -depsc graphics/mag_f_fetus_kopf_2099.eps

% figure;
% subplot(1,3,1);
% hist(phi_f_fetus_1233_cran);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung cranial', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% subplot(1,3,2);
% hist(phi_f_fetus_1233_dors);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung dorsal', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% subplot(1,3,3);
% hist(phi_f_fetus_1233_sinis);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung sinistral', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% 
% figure;
% subplot(1,3,1);
% hist(phi_f_fetus_1233_D3_cran);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung cranial', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% subplot(1,3,2);
% hist(phi_f_fetus_1233_D3_dors);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung dorsal', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% subplot(1,3,3);
% hist(phi_f_fetus_1233_D3_sinis);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung sinistral', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% 
% figure;
% subplot(1,3,1);
% hist(phi_f_fetus_1233_D2_cran);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung cranial', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% subplot(1,3,2);
% hist(phi_f_fetus_1233_D2_dors);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung dorsal', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% subplot(1,3,3);
% hist(phi_f_fetus_1233_D2_sinis);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung sinistral', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% 
% figure;
% subplot(1,3,1);
% hist(phi_f_fetus_1655_cran);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung cranial', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% subplot(1,3,2);
% hist(phi_f_fetus_1655_dors);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung dorsal', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% subplot(1,3,3);
% hist(phi_f_fetus_1655_sinis);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung sinistral', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% 
% figure;
% subplot(1,3,1);
% hist(phi_f_fetus_2077_cran);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung cranial', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% subplot(1,3,2);
% hist(phi_f_fetus_2077_dors);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung dorsal', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% subplot(1,3,3);
% hist(phi_f_fetus_2077_sinis);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung sinistral', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% 
% figure;
% subplot(1,3,1);
% hist(phi_f_fetus_2099_cran);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung cranial', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% subplot(1,3,2);
% hist(phi_f_fetus_2099_dors);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung dorsal', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% subplot(1,3,3);
% hist(phi_f_fetus_2099_sinis);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung sinistral', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% 
% figure;
% subplot(1,3,1);
% hist(phi_f_kopf_1233_cran);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung cranial', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% subplot(1,3,2);
% hist(phi_f_kopf_1233_dors);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung dorsal', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% subplot(1,3,3);
% hist(phi_f_kopf_1233_sinis);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung sinistral', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% 
% figure;
% subplot(1,3,1);
% hist(phi_f_kopf_1655_cran);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung cranial', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% subplot(1,3,2);
% hist(phi_f_kopf_1655_dors);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung dorsal', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% subplot(1,3,3);
% hist(phi_f_kopf_1655_sinis);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung sinistral', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% 
% figure;
% subplot(1,3,1);
% hist(phi_f_kopf_2077_cran);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung cranial', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% subplot(1,3,2);
% hist(phi_f_kopf_2077_dors);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung dorsal', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% subplot(1,3,3);
% hist(phi_f_kopf_2077_sinis);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung sinistral', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% 
% figure;
% subplot(1,3,1);
% hist(phi_f_kopf_2099_cran);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung cranial', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% subplot(1,3,2);
% hist(phi_f_kopf_2099_dors);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung dorsal', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% subplot(1,3,3);
% hist(phi_f_kopf_2099_sinis);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung sinistral', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% 
% figure;
% subplot(1,3,1);
% hist(n_f_fetus_1233_cran);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung cranial', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% subplot(1,3,2);
% hist(n_f_fetus_1233_dors);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung dorsal', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% subplot(1,3,3);
% hist(n_f_fetus_1233_sinis);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung sinistral', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% 
% figure;
% subplot(1,3,1);
% hist(n_f_fetus_1233_D3_cran);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung cranial', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% subplot(1,3,2);
% hist(n_f_fetus_1233_D3_dors);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung dorsal', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% subplot(1,3,3);
% hist(n_f_fetus_1233_D3_sinis);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung sinistral', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% 
% figure;
% subplot(1,3,1);
% hist(n_f_fetus_1233_D2_cran);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung cranial', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% subplot(1,3,2);
% hist(n_f_fetus_1233_D2_dors);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung dorsal', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% subplot(1,3,3);
% hist(n_f_fetus_1233_D2_sinis);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung sinistral', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% 
% figure;
% subplot(1,3,1);
% hist(n_f_fetus_1655_cran);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung cranial', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% subplot(1,3,2);
% hist(n_f_fetus_1655_dors);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung dorsal', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% subplot(1,3,3);
% hist(n_f_fetus_1655_sinis);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung sinistral', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% 
% figure;
% subplot(1,3,1);
% hist(n_f_fetus_2077_cran);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung cranial', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% subplot(1,3,2);
% hist(n_f_fetus_2077_dors);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung dorsal', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% subplot(1,3,3);
% hist(n_f_fetus_2077_sinis);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung sinistral', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% 
% figure;
% subplot(1,3,1);
% hist(n_f_fetus_2099_cran);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung cranial', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% subplot(1,3,2);
% hist(n_f_fetus_2099_dors);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung dorsal', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% subplot(1,3,3);
% hist(n_f_fetus_2099_sinis);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung sinistral', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% 
% figure;
% subplot(1,3,1);
% hist(n_f_kopf_1233_cran);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung cranial', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% subplot(1,3,2);
% hist(n_f_kopf_1233_dors);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung dorsal', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% subplot(1,3,3);
% hist(n_f_kopf_1233_sinis);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung sinistral', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% 
% figure;
% subplot(1,3,1);
% hist(n_f_kopf_1655_cran);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung cranial', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% subplot(1,3,2);
% hist(n_f_kopf_1655_dors);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung dorsal', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% subplot(1,3,3);
% hist(n_f_kopf_1655_sinis);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung sinistral', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% 
% figure;
% subplot(1,3,1);
% hist(n_f_kopf_2077_cran);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung cranial', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% subplot(1,3,2);
% hist(n_f_kopf_2077_dors);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung dorsal', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% subplot(1,3,3);
% hist(n_f_kopf_2077_sinis);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung sinistral', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% 
% figure;
% subplot(1,3,1);
% hist(n_f_kopf_2099_cran);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung cranial', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% subplot(1,3,2);
% hist(n_f_kopf_2099_dors);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung dorsal', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% subplot(1,3,3);
% hist(n_f_kopf_2099_sinis);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung sinistral', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');

% ohne obere Sensoren
% ...(:,1:56);
