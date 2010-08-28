% von caudal nach cranial

clear all
close all
clc

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

ccf1233_D2x=zeros(1025,1);
ccf1233_D2y=zeros(1025,1);
ccf1233_D2z=zeros(1025,1);

ccf1233_D3x=zeros(1025,1);
ccf1233_D3y=zeros(1025,1);
ccf1233_D3z=zeros(1025,1);

ccf1655x=zeros(1025,1);
ccf1655y=zeros(1025,1);
ccf1655z=zeros(1025,1);

ccf2077x=zeros(1025,1);
ccf2077y=zeros(1025,1);
ccf2077z=zeros(1025,1);

ccf2099x=zeros(1025,1);
ccf2099y=zeros(1025,1);
ccf2099z=zeros(1025,1);

cck1233x=zeros(1025,1);
cck1233y=zeros(1025,1);
cck1233z=zeros(1025,1);

cck1655x=zeros(1025,1);
cck1655y=zeros(1025,1);
cck1655z=zeros(1025,1);

cck2077x=zeros(1025,1);
cck2077y=zeros(1025,1);
cck2077z=zeros(1025,1);

cck2099x=zeros(1025,1);
cck2099y=zeros(1025,1);
cck2099z=zeros(1025,1);

cckk1655x=zeros(1025,1);
cckk1655y=zeros(1025,1);
cckk1655z=zeros(1025,1);

cckk2077x=zeros(1025,1);
cckk2077y=zeros(1025,1);
cckk2077z=zeros(1025,1);

cckk2099x=zeros(1025,1);
cckk2099y=zeros(1025,1);
cckk2099z=zeros(1025,1);

ampf1233_D2x=zeros(1025,1);
ampf1233_D2y=zeros(1025,1);
ampf1233_D2z=zeros(1025,1);

ampf1233_D3x=zeros(1025,1);
ampf1233_D3y=zeros(1025,1);
ampf1233_D3z=zeros(1025,1);

ampf1655x=zeros(1025,1);
ampf1655y=zeros(1025,1);
ampf1655z=zeros(1025,1);

ampf2077x=zeros(1025,1);
ampf2077y=zeros(1025,1);
ampf2077z=zeros(1025,1);

ampf2099x=zeros(1025,1);
ampf2099y=zeros(1025,1);
ampf2099z=zeros(1025,1);

ampk1233x=zeros(1025,1);
ampk1233y=zeros(1025,1);
ampk1233z=zeros(1025,1);

ampk1655x=zeros(1025,1);
ampk1655y=zeros(1025,1);
ampk1655z=zeros(1025,1);

ampk2077x=zeros(1025,1);
ampk2077y=zeros(1025,1);
ampk2077z=zeros(1025,1);

ampk2099x=zeros(1025,1);
ampk2099y=zeros(1025,1);
ampk2099z=zeros(1025,1);

ampkk1655x=zeros(1025,1);
ampkk1655y=zeros(1025,1);
ampkk1655z=zeros(1025,1);

ampkk2077x=zeros(1025,1);
ampkk2077y=zeros(1025,1);
ampkk2077z=zeros(1025,1);

ampkk2099x=zeros(1025,1);
ampkk2099y=zeros(1025,1);
ampkk2099z=zeros(1025,1);


format long

for i=1:1025
    ccf1233_D2x(i)=rdm(fetus_1233_D2x(i,:),fetus_1233x(i,:));
    ccf1233_D2y(i)=rdm(fetus_1233_D2y(i,:),fetus_1233y(i,:));
    ccf1233_D2z(i)=rdm(fetus_1233_D2z(i,:),fetus_1233z(i,:));
    
    ccf1233_D3x(i)=rdm(fetus_1233_D3x(i,:),fetus_1233x(i,:));
    ccf1233_D3y(i)=rdm(fetus_1233_D3y(i,:),fetus_1233y(i,:));
    ccf1233_D3z(i)=rdm(fetus_1233_D3z(i,:),fetus_1233z(i,:));
    
    ccf1655x(i)=rdm(fetus_1655x(i,:),fetus_1233x(i,:));
    ccf1655y(i)=rdm(fetus_1655y(i,:),fetus_1233y(i,:));
    ccf1655z(i)=rdm(fetus_1655z(i,:),fetus_1233z(i,:));
    
    ccf2077x(i)=rdm(fetus_2077x(i,:),fetus_1233x(i,:));
    ccf2077y(i)=rdm(fetus_2077y(i,:),fetus_1233y(i,:));
    ccf2077z(i)=rdm(fetus_2077z(i,:),fetus_1233z(i,:));
    
    ccf2099x(i)=rdm(fetus_2099x(i,:),fetus_1233x(i,:));
    ccf2099y(i)=rdm(fetus_2099y(i,:),fetus_1233y(i,:));
    ccf2099z(i)=rdm(fetus_2099z(i,:),fetus_1233z(i,:));
    
    cck1233x(i)=rdm(kopf_1233x(i,:),fetus_1233x(i,:));
    cck1233y(i)=rdm(kopf_1233y(i,:),fetus_1233y(i,:));
    cck1233z(i)=rdm(kopf_1233z(i,:),fetus_1233z(i,:));
    
    cck1655x(i)=rdm(kopf_1655x(i,:),fetus_1233x(i,:));
    cck1655y(i)=rdm(kopf_1655y(i,:),fetus_1233y(i,:));
    cck1655z(i)=rdm(kopf_1655z(i,:),fetus_1233z(i,:));
    
    cck2077x(i)=rdm(kopf_2077x(i,:),fetus_1233x(i,:));
    cck2077y(i)=rdm(kopf_2077y(i,:),fetus_1233y(i,:));
    cck2077z(i)=rdm(kopf_2077z(i,:),fetus_1233z(i,:));
    
    cck2099x(i)=rdm(kopf_2099x(i,:),fetus_1233x(i,:));
    cck2099y(i)=rdm(kopf_2099y(i,:),fetus_1233y(i,:));
    cck2099z(i)=rdm(kopf_2099z(i,:),fetus_1233z(i,:));
    
    cckk1655x(i)=rdm(kopf_1655x(i,:),kopf_1233x(i,:));
    cckk1655y(i)=rdm(kopf_1655y(i,:),kopf_1233y(i,:));
    cckk1655z(i)=rdm(kopf_1655z(i,:),kopf_1233z(i,:));
    
    cckk2077x(i)=rdm(kopf_2077x(i,:),kopf_1233x(i,:));
    cckk2077y(i)=rdm(kopf_2077y(i,:),kopf_1233y(i,:));
    cckk2077z(i)=rdm(kopf_2077z(i,:),kopf_1233z(i,:));
    
    cckk2099x(i)=rdm(kopf_2099x(i,:),kopf_1233x(i,:));
    cckk2099y(i)=rdm(kopf_2099y(i,:),kopf_1233y(i,:));
    cckk2099z(i)=rdm(kopf_2099z(i,:),kopf_1233z(i,:));
end;

ccf1233_D3x_cran_m = mean(ccf1233_D3x);
ccf1233_D3y_cran_m = mean(ccf1233_D3y);
ccf1233_D3z_cran_m = mean(ccf1233_D3z);
ccf1233_D2x_cran_m = mean(ccf1233_D2x);
ccf1233_D2y_cran_m = mean(ccf1233_D2y);
ccf1233_D2z_cran_m = mean(ccf1233_D2z);
ccf1655x_cran_m = mean(ccf1655x);
ccf1655y_cran_m = mean(ccf1655y);
ccf1655z_cran_m = mean(ccf1655z);
ccf2077x_cran_m = mean(ccf2077x);
ccf2077y_cran_m = mean(ccf2077y);
ccf2077z_cran_m = mean(ccf2077z);
ccf2099x_cran_m = mean(ccf2099x);
ccf2099y_cran_m = mean(ccf2099y);
ccf2099z_cran_m = mean(ccf2099z);
cck1233x_cran_m = mean(cck1233x);
cck1233y_cran_m = mean(cck1233y);
cck1233z_cran_m = mean(cck1233z);
cck1655x_cran_m = mean(cck1655x);
cck1655y_cran_m = mean(cck1655y);
cck1655z_cran_m = mean(cck1655z);
cck2077x_cran_m = mean(cck2077x);
cck2077y_cran_m = mean(cck2077y);
cck2077z_cran_m = mean(cck2077z);
cck2099x_cran_m = mean(cck2099x);
cck2099y_cran_m = mean(cck2099y);
cck2099z_cran_m = mean(cck2099z);
cckk1655x_cran_m = mean(cckk1655x);
cckk1655y_cran_m = mean(cckk1655y);
cckk1655z_cran_m = mean(cckk1655z);
cckk2077x_cran_m = mean(cckk2077x);
cckk2077y_cran_m = mean(cckk2077y);
cckk2077z_cran_m = mean(cckk2077z);
cckk2099x_cran_m = mean(cckk2099x);
cckk2099y_cran_m = mean(cckk2099y);
cckk2099z_cran_m = mean(cckk2099z);

ccf1233_D3x_cran_s = std(ccf1233_D3x);
ccf1233_D3y_cran_s = std(ccf1233_D3y);
ccf1233_D3z_cran_s = std(ccf1233_D3z);
ccf1233_D2x_cran_s = std(ccf1233_D2x);
ccf1233_D2y_cran_s = std(ccf1233_D2y);
ccf1233_D2z_cran_s = std(ccf1233_D2z);
ccf1655x_cran_s    = std(ccf1655x);
ccf1655y_cran_s    = std(ccf1655y);
ccf1655z_cran_s    = std(ccf1655z);
ccf2077x_cran_s    = std(ccf2077x);
ccf2077y_cran_s    = std(ccf2077y);
ccf2077z_cran_s    = std(ccf2077z);
ccf2099x_cran_s    = std(ccf2099x);
ccf2099y_cran_s    = std(ccf2099y);
ccf2099z_cran_s    = std(ccf2099z);
cck1233x_cran_s    = std(cck1233x);
cck1233y_cran_s    = std(cck1233y);
cck1233z_cran_s    = std(cck1233z);
cck1655x_cran_s    = std(cck1655x);
cck1655y_cran_s    = std(cck1655y);
cck1655z_cran_s    = std(cck1655z);
cck2077x_cran_s    = std(cck2077x);
cck2077y_cran_s    = std(cck2077y);
cck2077z_cran_s    = std(cck2077z);
cck2099x_cran_s    = std(cck2099x);
cck2099y_cran_s    = std(cck2099y);
cck2099z_cran_s    = std(cck2099z);
cckk1655x_cran_s   = std(cckk1655x);
cckk1655y_cran_s   = std(cckk1655y);
cckk1655z_cran_s   = std(cckk1655z);
cckk2077x_cran_s   = std(cckk2077x);
cckk2077y_cran_s   = std(cckk2077y);
cckk2077z_cran_s   = std(cckk2077z);
cckk2099x_cran_s   = std(cckk2099x);
cckk2099y_cran_s   = std(cckk2099y);
cckk2099z_cran_s   = std(cckk2099z);

ccf1233_D3_cran_m = mean(mean([ccf1233_D3x,ccf1233_D3y,ccf1233_D3z],2));
ccf1233_D3_cran_s = std(mean([ccf1233_D3x,ccf1233_D3y,ccf1233_D3z],2));

% rdm_fetus_vernix_cran_x = [ccf1233_D3x_cran_m ccf1233_D2x_cran_m];
% rdm_fetus_vernix_cran_x_std = [ccf1233_D3x_cran_s ccf1233_D2x_cran_s];
% 
% rdm_fetus_cran_x = [ccf1655x_cran_m
%     ccf2077x_cran_m
%     ccf2099x_cran_m
%     cck1233x_cran_m
%     cck1655x_cran_m
%     cck2077x_cran_m
%     cck2099x_cran_m];
% 
% rdm_fetus_cran_x_std = [ccf1655x_cran_s
%     ccf2077x_cran_s
%     ccf2099x_cran_s
%     cck1233x_cran_s
%     cck1655x_cran_s
%     cck2077x_cran_s
%     cck2099x_cran_s];
% 
% rdm_kopf_cran_x = [
%     cckk1655x_cran_m
%     cckk2077x_cran_m
%     cckk2099x_cran_m];
% 
% rdm_kopf_cran_x_std = [
%     cckk1655x_cran_s
%     cckk2077x_cran_s
%     cckk2099x_cran_s];
% 
% rdm_fetus_vernix_cran_y = [ccf1233_D3y_cran_m ccf1233_D2y_cran_m];
% rdm_fetus_vernix_cran_y_std = [ccf1233_D3y_cran_s ccf1233_D2y_cran_s];
% 
% rdm_fetus_cran_y = [ccf1655y_cran_m
%     ccf2077y_cran_m
%     ccf2099y_cran_m
%     cck1233y_cran_m
%     cck1655y_cran_m
%     cck2077y_cran_m
%     cck2099y_cran_m];
% 
% rdm_fetus_cran_y_std = [ccf1655y_cran_s
%     ccf2077y_cran_s
%     ccf2099y_cran_s
%     cck1233y_cran_s
%     cck1655y_cran_s
%     cck2077y_cran_s
%     cck2099y_cran_s];
% 
% rdm_kopf_cran_y = [
%     cckk1655y_cran_m
%     cckk2077y_cran_m
%     cckk2099y_cran_m];
% 
% rdm_kopf_cran_y_std = [
%     cckk1655y_cran_s
%     cckk2077y_cran_s
%     cckk2099y_cran_s];
% 
% rdm_fetus_vernix_cran_z = [ccf1233_D3z_cran_m ccf1233_D2z_cran_m];
% rdm_fetus_vernix_cran_z_std = [ccf1233_D3z_cran_s ccf1233_D2z_cran_s];
% 
% rdm_fetus_cran_z = [ccf1655z_cran_m
%     ccf2077z_cran_m
%     ccf2099z_cran_m
%     cck1233z_cran_m
%     cck1655z_cran_m
%     cck2077z_cran_m
%     cck2099z_cran_m];
% 
% rdm_fetus_cran_z_std = [ccf1655z_cran_s
%     ccf2077z_cran_s
%     ccf2099z_cran_s
%     cck1233z_cran_s
%     cck1655z_cran_s
%     cck2077z_cran_s
%     cck2099z_cran_s];
% 
% rdm_kopf_cran_z = [
%     cckk1655z_cran_m
%     cckk2077z_cran_m
%     cckk2099z_cran_m];
% 
% rdm_kopf_cran_z_std = [
%     cckk1655z_cran_s
%     cckk2077z_cran_s
%     cckk2099z_cran_s];

for i=1:1025
    ampf1233_D3x(i) = mag(fetus_1233_D3x(i,:), fetus_1233x(i,:));
    ampf1233_D3y(i) = mag(fetus_1233_D3y(i,:),fetus_1233y(i,:));
    ampf1233_D3z(i) = mag(fetus_1233_D3z(i,:),fetus_1233z(i,:));
    ampf1233_D2x(i) = mag(fetus_1233_D2x(i,:),fetus_1233x(i,:));
    ampf1233_D2y(i) = mag(fetus_1233_D2y(i,:),fetus_1233y(i,:));
    ampf1233_D2z(i) = mag(fetus_1233_D2z(i,:),fetus_1233z(i,:));
    ampf1655x(i)    = mag(fetus_1655x(i,:),fetus_1233x(i,:));
    ampf1655y(i)    = mag(fetus_1655y(i,:),fetus_1233y(i,:));
    ampf1655z(i)    = mag(fetus_1655z(i,:),fetus_1233z(i,:));
    ampf2077x(i)    = mag(fetus_2077x(i,:),fetus_1233x(i,:));
    ampf2077y(i)    = mag(fetus_2077y(i,:),fetus_1233y(i,:));
    ampf2077z(i)    = mag(fetus_2077z(i,:),fetus_1233z(i,:));
    ampf2099x(i)    = mag(fetus_2099x(i,:),fetus_1233x(i,:));
    ampf2099y(i)    = mag(fetus_2099y(i,:),fetus_1233y(i,:));
    ampf2099z(i)    = mag(fetus_2099z(i,:),fetus_1233z(i,:));
    ampk1233x(i)    = mag(kopf_1233x(i,:),fetus_1233x(i,:));
    ampk1233y(i)    = mag(kopf_1233y(i,:),fetus_1233y(i,:));
    ampk1233z(i)    = mag(kopf_1233z(i,:),fetus_1233z(i,:));
    ampk1655x(i)    = mag(kopf_1655x(i,:),fetus_1233x(i,:));
    ampk1655y(i)    = mag(kopf_1655y(i,:),fetus_1233y(i,:));
    ampk1655z(i)    = mag(kopf_1655z(i,:),fetus_1233z(i,:));
    ampk2077x(i)    = mag(kopf_2077x(i,:),fetus_1233x(i,:));
    ampk2077y(i)    = mag(kopf_2077y(i,:),fetus_1233y(i,:));
    ampk2077z(i)    = mag(kopf_2077z(i,:),fetus_1233z(i,:));
    ampk2099x(i)    = mag(kopf_2099x(i,:),fetus_1233x(i,:));
    ampk2099y(i)    = mag(kopf_2099y(i,:),fetus_1233y(i,:));
    ampk2099z(i)    = mag(kopf_2099z(i,:),fetus_1233z(i,:));
    ampkk1655x(i)   = mag(kopf_1655x(i,:),kopf_1233x(i,:));
    ampkk1655y(i)   = mag(kopf_1655y(i,:),kopf_1233y(i,:));
    ampkk1655z(i)   = mag(kopf_1655z(i,:),kopf_1233z(i,:));
    ampkk2077x(i)   = mag(kopf_2077x(i,:),kopf_1233x(i,:));
    ampkk2077y(i)   = mag(kopf_2077y(i,:),kopf_1233y(i,:));
    ampkk2077z(i)   = mag(kopf_2077z(i,:),kopf_1233z(i,:));
    ampkk2099x(i)   = mag(kopf_2099x(i,:),kopf_1233x(i,:));
    ampkk2099y(i)   = mag(kopf_2099y(i,:),kopf_1233y(i,:));
    ampkk2099z(i)   = mag(kopf_2099z(i,:),kopf_1233z(i,:));
end;

ampf1233_D3x_cran_m = mean(ampf1233_D3x);
ampf1233_D3y_cran_m = mean(ampf1233_D3y);
ampf1233_D3z_cran_m = mean(ampf1233_D3z);
ampf1233_D2x_cran_m = mean(ampf1233_D2x);
ampf1233_D2y_cran_m = mean(ampf1233_D2y);
ampf1233_D2z_cran_m = mean(ampf1233_D2z);
ampf1655x_cran_m    = mean(ampf1655x);
ampf1655y_cran_m    = mean(ampf1655y);
ampf1655z_cran_m    = mean(ampf1655z);
ampf2077x_cran_m    = mean(ampf2077x);
ampf2077y_cran_m    = mean(ampf2077y);
ampf2077z_cran_m    = mean(ampf2077z);
ampf2099x_cran_m    = mean(ampf2099x);
ampf2099y_cran_m    = mean(ampf2099y);
ampf2099z_cran_m    = mean(ampf2099z);
ampk1233x_cran_m    = mean(ampk1233x);
ampk1233y_cran_m    = mean(ampk1233y);
ampk1233z_cran_m    = mean(ampk1233z);
ampk1655x_cran_m    = mean(ampk1655x);
ampk1655y_cran_m    = mean(ampk1655y);
ampk1655z_cran_m    = mean(ampk1655z);
ampk2077x_cran_m    = mean(ampk2077x);
ampk2077y_cran_m    = mean(ampk2077y);
ampk2077z_cran_m    = mean(ampk2077z);
ampk2099x_cran_m    = mean(ampk2099x);
ampk2099y_cran_m    = mean(ampk2099y);
ampk2099z_cran_m    = mean(ampk2099z);
ampkk1655x_cran_m   = mean(ampkk1655x);
ampkk1655y_cran_m   = mean(ampkk1655y);
ampkk1655z_cran_m   = mean(ampkk1655z);
ampkk2077x_cran_m   = mean(ampkk2077x);
ampkk2077y_cran_m   = mean(ampkk2077y);
ampkk2077z_cran_m   = mean(ampkk2077z);
ampkk2099x_cran_m   = mean(ampkk2099x);
ampkk2099y_cran_m   = mean(ampkk2099y);
ampkk2099z_cran_m   = mean(ampkk2099z);

ampf1233_D3x_cran_s = std(ampf1233_D3x);
ampf1233_D3y_cran_s = std(ampf1233_D3y);
ampf1233_D3z_cran_s = std(ampf1233_D3z);
ampf1233_D2x_cran_s = std(ampf1233_D2x);
ampf1233_D2y_cran_s = std(ampf1233_D2y);
ampf1233_D2z_cran_s = std(ampf1233_D2z);
ampf1655x_cran_s    = std(ampf1655x);
ampf1655y_cran_s    = std(ampf1655y);
ampf1655z_cran_s    = std(ampf1655z);
ampf2077x_cran_s    = std(ampf2077x);
ampf2077y_cran_s    = std(ampf2077y);
ampf2077z_cran_s    = std(ampf2077z);
ampf2099x_cran_s    = std(ampf2099x);
ampf2099y_cran_s    = std(ampf2099y);
ampf2099z_cran_s    = std(ampf2099z);
ampk1233x_cran_s    = std(ampk1233x);
ampk1233y_cran_s    = std(ampk1233y);
ampk1233z_cran_s    = std(ampk1233z);
ampk1655x_cran_s    = std(ampk1655x);
ampk1655y_cran_s    = std(ampk1655y);
ampk1655z_cran_s    = std(ampk1655z);
ampk2077x_cran_s    = std(ampk2077x);
ampk2077y_cran_s    = std(ampk2077y);
ampk2077z_cran_s    = std(ampk2077z);
ampk2099x_cran_s    = std(ampk2099x);
ampk2099y_cran_s    = std(ampk2099y);
ampk2099z_cran_s    = std(ampk2099z);
ampkk1655x_cran_s   = std(ampkk1655x);
ampkk1655y_cran_s   = std(ampkk1655y);
ampkk1655z_cran_s   = std(ampkk1655z);
ampkk2077x_cran_s   = std(ampkk2077x);
ampkk2077y_cran_s   = std(ampkk2077y);
ampkk2077z_cran_s   = std(ampkk2077z);
ampkk2099x_cran_s   = std(ampkk2099x);
ampkk2099y_cran_s   = std(ampkk2099y);
ampkk2099z_cran_s   = std(ampkk2099z);

mag_fetus_vernix_cran_x = [ampf1233_D3x_cran_m ampf1233_D2x_cran_m];
mag_fetus_vernix_cran_x_std = [ampf1233_D3x_cran_s ampf1233_D2x_cran_s];

mag_fetus_cran_x = [ampf1655x_cran_m
    ampf2077x_cran_m
    ampf2099x_cran_m
    ampk1233x_cran_m
    ampk1655x_cran_m
    ampk2077x_cran_m
    ampk2099x_cran_m];

mag_fetus_cran_x_std = [ampf1655x_cran_s
    ampf2077x_cran_s
    ampf2099x_cran_s
    ampk1233x_cran_s
    ampk1655x_cran_s
    ampk2077x_cran_s
    ampk2099x_cran_s];

mag_kopf_cran_x = [
    ampkk1655x_cran_m
    ampkk2077x_cran_m
    ampkk2099x_cran_m];

mag_kopf_cran_x_std = [
    ampkk1655x_cran_s
    ampkk2077x_cran_s
    ampkk2099x_cran_s];

mag_fetus_vernix_cran_y = [ampf1233_D3y_cran_m ampf1233_D2y_cran_m];
mag_fetus_vernix_cran_y_std = [ampf1233_D3y_cran_s ampf1233_D2y_cran_s];

mag_fetus_cran_y = [ampf1655y_cran_m
    ampf2077y_cran_m
    ampf2099y_cran_m
    ampk1233y_cran_m
    ampk1655y_cran_m
    ampk2077y_cran_m
    ampk2099y_cran_m];

mag_fetus_cran_y_std = [ampf1655y_cran_s
    ampf2077y_cran_s
    ampf2099y_cran_s
    ampk1233y_cran_s
    ampk1655y_cran_s
    ampk2077y_cran_s
    ampk2099y_cran_s];

mag_kopf_cran_y = [
    ampkk1655y_cran_m
    ampkk2077y_cran_m
    ampkk2099y_cran_m];

mag_kopf_cran_y_std = [
    ampkk1655y_cran_s
    ampkk2077y_cran_s
    ampkk2099y_cran_s];

mag_fetus_vernix_cran_z = [ampf1233_D3z_cran_m ampf1233_D2z_cran_m];
mag_fetus_vernix_cran_z_std = [ampf1233_D3z_cran_s ampf1233_D2z_cran_s];

mag_fetus_cran_z = [ampf1655z_cran_m
    ampf2077z_cran_m
    ampf2099z_cran_m
    ampk1233z_cran_m
    ampk1655z_cran_m
    ampk2077z_cran_m
    ampk2099z_cran_m];

mag_fetus_cran_z_std = [ampf1655z_cran_s
    ampf2077z_cran_s
    ampf2099z_cran_s
    ampk1233z_cran_s
    ampk1655z_cran_s
    ampk2077z_cran_s
    ampk2099z_cran_s];

mag_kopf_cran_z = [
    ampkk1655z_cran_m
    ampkk2077z_cran_m
    ampkk2099z_cran_m];

mag_kopf_cran_z_std = [
    ampkk1655z_cran_s
    ampkk2077z_cran_s
    ampkk2099z_cran_s];

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
    ccf1233_D2x(i)=rdm(fetus_1233_D2x(i,:),fetus_1233x(i,:));
    ccf1233_D2y(i)=rdm(fetus_1233_D2y(i,:),fetus_1233y(i,:));
    ccf1233_D2z(i)=rdm(fetus_1233_D2z(i,:),fetus_1233z(i,:));
    
    ccf1233_D3x(i)=rdm(fetus_1233_D3x(i,:),fetus_1233x(i,:));
    ccf1233_D3y(i)=rdm(fetus_1233_D3y(i,:),fetus_1233y(i,:));
    ccf1233_D3z(i)=rdm(fetus_1233_D3z(i,:),fetus_1233z(i,:));
    
    ccf1655x(i)=rdm(fetus_1655x(i,:),fetus_1233x(i,:));
    ccf1655y(i)=rdm(fetus_1655y(i,:),fetus_1233y(i,:));
    ccf1655z(i)=rdm(fetus_1655z(i,:),fetus_1233z(i,:));
    
    ccf2077x(i)=rdm(fetus_2077x(i,:),fetus_1233x(i,:));
    ccf2077y(i)=rdm(fetus_2077y(i,:),fetus_1233y(i,:));
    ccf2077z(i)=rdm(fetus_2077z(i,:),fetus_1233z(i,:));
    
    ccf2099x(i)=rdm(fetus_2099x(i,:),fetus_1233x(i,:));
    ccf2099y(i)=rdm(fetus_2099y(i,:),fetus_1233y(i,:));
    ccf2099z(i)=rdm(fetus_2099z(i,:),fetus_1233z(i,:));
    
    cck1233x(i)=rdm(kopf_1233x(i,:),fetus_1233x(i,:));
    cck1233y(i)=rdm(kopf_1233y(i,:),fetus_1233y(i,:));
    cck1233z(i)=rdm(kopf_1233z(i,:),fetus_1233z(i,:));
    
    cck1655x(i)=rdm(kopf_1655x(i,:),fetus_1233x(i,:));
    cck1655y(i)=rdm(kopf_1655y(i,:),fetus_1233y(i,:));
    cck1655z(i)=rdm(kopf_1655z(i,:),fetus_1233z(i,:));
    
    cck2077x(i)=rdm(kopf_2077x(i,:),fetus_1233x(i,:));
    cck2077y(i)=rdm(kopf_2077y(i,:),fetus_1233y(i,:));
    cck2077z(i)=rdm(kopf_2077z(i,:),fetus_1233z(i,:));
    
    cck2099x(i)=rdm(kopf_2099x(i,:),fetus_1233x(i,:));
    cck2099y(i)=rdm(kopf_2099y(i,:),fetus_1233y(i,:));
    cck2099z(i)=rdm(kopf_2099z(i,:),fetus_1233z(i,:));
    
    cckk1655x(i)=rdm(kopf_1655x(i,:),kopf_1233x(i,:));
    cckk1655y(i)=rdm(kopf_1655y(i,:),kopf_1233y(i,:));
    cckk1655z(i)=rdm(kopf_1655z(i,:),kopf_1233z(i,:));
    
    cckk2077x(i)=rdm(kopf_2077x(i,:),kopf_1233x(i,:));
    cckk2077y(i)=rdm(kopf_2077y(i,:),kopf_1233y(i,:));
    cckk2077z(i)=rdm(kopf_2077z(i,:),kopf_1233z(i,:));
    
    cckk2099x(i)=rdm(kopf_2099x(i,:),kopf_1233x(i,:));
    cckk2099y(i)=rdm(kopf_2099y(i,:),kopf_1233y(i,:));
    cckk2099z(i)=rdm(kopf_2099z(i,:),kopf_1233z(i,:));
end;

ccf1233_D3x_dors_m = mean(ccf1233_D3x);
ccf1233_D3y_dors_m = mean(ccf1233_D3y);
ccf1233_D3z_dors_m = mean(ccf1233_D3z);
ccf1233_D2x_dors_m = mean(ccf1233_D2x);
ccf1233_D2y_dors_m = mean(ccf1233_D2y);
ccf1233_D2z_dors_m = mean(ccf1233_D2z);
ccf1655x_dors_m = mean(ccf1655x);
ccf1655y_dors_m = mean(ccf1655y);
ccf1655z_dors_m = mean(ccf1655z);
ccf2077x_dors_m = mean(ccf2077x);
ccf2077y_dors_m = mean(ccf2077y);
ccf2077z_dors_m = mean(ccf2077z);
ccf2099x_dors_m = mean(ccf2099x);
ccf2099y_dors_m = mean(ccf2099y);
ccf2099z_dors_m = mean(ccf2099z);
cck1233x_dors_m = mean(cck1233x);
cck1233y_dors_m = mean(cck1233y);
cck1233z_dors_m = mean(cck1233z);
cck1655x_dors_m = mean(cck1655x);
cck1655y_dors_m = mean(cck1655y);
cck1655z_dors_m = mean(cck1655z);
cck2077x_dors_m = mean(cck2077x);
cck2077y_dors_m = mean(cck2077y);
cck2077z_dors_m = mean(cck2077z);
cck2099x_dors_m = mean(cck2099x);
cck2099y_dors_m = mean(cck2099y);
cck2099z_dors_m = mean(cck2099z);
cckk1655x_dors_m = mean(cckk1655x);
cckk1655y_dors_m = mean(cckk1655y);
cckk1655z_dors_m = mean(cckk1655z);
cckk2077x_dors_m = mean(cckk2077x);
cckk2077y_dors_m = mean(cckk2077y);
cckk2077z_dors_m = mean(cckk2077z);
cckk2099x_dors_m = mean(cckk2099x);
cckk2099y_dors_m = mean(cckk2099y);
cckk2099z_dors_m = mean(cckk2099z);

ccf1233_D3x_dors_s = std(ccf1233_D3x);
ccf1233_D3y_dors_s = std(ccf1233_D3y);
ccf1233_D3z_dors_s = std(ccf1233_D3z);
ccf1233_D2x_dors_s = std(ccf1233_D2x);
ccf1233_D2y_dors_s = std(ccf1233_D2y);
ccf1233_D2z_dors_s = std(ccf1233_D2z);
ccf1655x_dors_s    = std(ccf1655x);
ccf1655y_dors_s    = std(ccf1655y);
ccf1655z_dors_s    = std(ccf1655z);
ccf2077x_dors_s    = std(ccf2077x);
ccf2077y_dors_s    = std(ccf2077y);
ccf2077z_dors_s    = std(ccf2077z);
ccf2099x_dors_s    = std(ccf2099x);
ccf2099y_dors_s    = std(ccf2099y);
ccf2099z_dors_s    = std(ccf2099z);
cck1233x_dors_s    = std(cck1233x);
cck1233y_dors_s    = std(cck1233y);
cck1233z_dors_s    = std(cck1233z);
cck1655x_dors_s    = std(cck1655x);
cck1655y_dors_s    = std(cck1655y);
cck1655z_dors_s    = std(cck1655z);
cck2077x_dors_s    = std(cck2077x);
cck2077y_dors_s    = std(cck2077y);
cck2077z_dors_s    = std(cck2077z);
cck2099x_dors_s    = std(cck2099x);
cck2099y_dors_s    = std(cck2099y);
cck2099z_dors_s    = std(cck2099z);
cckk1655x_dors_s   = std(cckk1655x);
cckk1655y_dors_s   = std(cckk1655y);
cckk1655z_dors_s   = std(cckk1655z);
cckk2077x_dors_s   = std(cckk2077x);
cckk2077y_dors_s   = std(cckk2077y);
cckk2077z_dors_s   = std(cckk2077z);
cckk2099x_dors_s   = std(cckk2099x);
cckk2099y_dors_s   = std(cckk2099y);
cckk2099z_dors_s   = std(cckk2099z);

rdm_fetus_vernix_dors_x = [ccf1233_D3x_dors_m ccf1233_D2x_dors_m];
rdm_fetus_vernix_dors_x_std = [ccf1233_D3x_dors_s ccf1233_D2x_dors_s];

rdm_fetus_dors_x = [ccf1655x_dors_m
    ccf2077x_dors_m
    ccf2099x_dors_m
    cck1233x_dors_m
    cck1655x_dors_m
    cck2077x_dors_m
    cck2099x_dors_m];

rdm_fetus_dors_x_std = [ccf1655x_dors_s
    ccf2077x_dors_s
    ccf2099x_dors_s
    cck1233x_dors_s
    cck1655x_dors_s
    cck2077x_dors_s
    cck2099x_dors_s];

rdm_kopf_dors_x = [
    cckk1655x_dors_m
    cckk2077x_dors_m
    cckk2099x_dors_m];

rdm_kopf_dors_x_std = [
    cckk1655x_dors_s
    cckk2077x_dors_s
    cckk2099x_dors_s];

rdm_fetus_vernix_dors_y = [ccf1233_D3y_dors_m ccf1233_D2y_dors_m];
rdm_fetus_vernix_dors_y_std = [ccf1233_D3y_dors_s ccf1233_D2y_dors_s];

rdm_fetus_dors_y = [ccf1655y_dors_m
    ccf2077y_dors_m
    ccf2099y_dors_m
    cck1233y_dors_m
    cck1655y_dors_m
    cck2077y_dors_m
    cck2099y_dors_m];

rdm_fetus_dors_y_std = [ccf1655y_dors_s
    ccf2077y_dors_s
    ccf2099y_dors_s
    cck1233y_dors_s
    cck1655y_dors_s
    cck2077y_dors_s
    cck2099y_dors_s];

rdm_kopf_dors_y = [
    cckk1655y_dors_m
    cckk2077y_dors_m
    cckk2099y_dors_m];

rdm_kopf_dors_y_std = [
    cckk1655y_dors_s
    cckk2077y_dors_s
    cckk2099y_dors_s];

rdm_fetus_vernix_dors_z = [ccf1233_D3z_dors_m ccf1233_D2z_dors_m];
rdm_fetus_vernix_dors_z_std = [ccf1233_D3z_dors_s ccf1233_D2z_dors_s];

rdm_fetus_dors_z = [ccf1655z_dors_m
    ccf2077z_dors_m
    ccf2099z_dors_m
    cck1233z_dors_m
    cck1655z_dors_m
    cck2077z_dors_m
    cck2099z_dors_m];

rdm_fetus_dors_z_std = [ccf1655z_dors_s
    ccf2077z_dors_s
    ccf2099z_dors_s
    cck1233z_dors_s
    cck1655z_dors_s
    cck2077z_dors_s
    cck2099z_dors_s];

rdm_kopf_dors_z = [
    cckk1655z_dors_m
    cckk2077z_dors_m
    cckk2099z_dors_m];

rdm_kopf_dors_z_std = [
    cckk1655z_dors_s
    cckk2077z_dors_s
    cckk2099z_dors_s];

for i=1:1025
    ampf1233_D3x(i) = mag(fetus_1233_D3x(i,:), fetus_1233x(i,:));
    ampf1233_D3y(i) = mag(fetus_1233_D3y(i,:),fetus_1233y(i,:));
    ampf1233_D3z(i) = mag(fetus_1233_D3z(i,:),fetus_1233z(i,:));
    ampf1233_D2x(i) = mag(fetus_1233_D2x(i,:),fetus_1233x(i,:));
    ampf1233_D2y(i) = mag(fetus_1233_D2y(i,:),fetus_1233y(i,:));
    ampf1233_D2z(i) = mag(fetus_1233_D2z(i,:),fetus_1233z(i,:));
    ampf1655x(i)    = mag(fetus_1655x(i,:),fetus_1233x(i,:));
    ampf1655y(i)    = mag(fetus_1655y(i,:),fetus_1233y(i,:));
    ampf1655z(i)    = mag(fetus_1655z(i,:),fetus_1233z(i,:));
    ampf2077x(i)    = mag(fetus_2077x(i,:),fetus_1233x(i,:));
    ampf2077y(i)    = mag(fetus_2077y(i,:),fetus_1233y(i,:));
    ampf2077z(i)    = mag(fetus_2077z(i,:),fetus_1233z(i,:));
    ampf2099x(i)    = mag(fetus_2099x(i,:),fetus_1233x(i,:));
    ampf2099y(i)    = mag(fetus_2099y(i,:),fetus_1233y(i,:));
    ampf2099z(i)    = mag(fetus_2099z(i,:),fetus_1233z(i,:));
    ampk1233x(i)    = mag(kopf_1233x(i,:),fetus_1233x(i,:));
    ampk1233y(i)    = mag(kopf_1233y(i,:),fetus_1233y(i,:));
    ampk1233z(i)    = mag(kopf_1233z(i,:),fetus_1233z(i,:));
    ampk1655x(i)    = mag(kopf_1655x(i,:),fetus_1233x(i,:));
    ampk1655y(i)    = mag(kopf_1655y(i,:),fetus_1233y(i,:));
    ampk1655z(i)    = mag(kopf_1655z(i,:),fetus_1233z(i,:));
    ampk2077x(i)    = mag(kopf_2077x(i,:),fetus_1233x(i,:));
    ampk2077y(i)    = mag(kopf_2077y(i,:),fetus_1233y(i,:));
    ampk2077z(i)    = mag(kopf_2077z(i,:),fetus_1233z(i,:));
    ampk2099x(i)    = mag(kopf_2099x(i,:),fetus_1233x(i,:));
    ampk2099y(i)    = mag(kopf_2099y(i,:),fetus_1233y(i,:));
    ampk2099z(i)    = mag(kopf_2099z(i,:),fetus_1233z(i,:));
    ampkk1655x(i)   = mag(kopf_1655x(i,:),kopf_1233x(i,:));
    ampkk1655y(i)   = mag(kopf_1655y(i,:),kopf_1233y(i,:));
    ampkk1655z(i)   = mag(kopf_1655z(i,:),kopf_1233z(i,:));
    ampkk2077x(i)   = mag(kopf_2077x(i,:),kopf_1233x(i,:));
    ampkk2077y(i)   = mag(kopf_2077y(i,:),kopf_1233y(i,:));
    ampkk2077z(i)   = mag(kopf_2077z(i,:),kopf_1233z(i,:));
    ampkk2099x(i)   = mag(kopf_2099x(i,:),kopf_1233x(i,:));
    ampkk2099y(i)   = mag(kopf_2099y(i,:),kopf_1233y(i,:));
    ampkk2099z(i)   = mag(kopf_2099z(i,:),kopf_1233z(i,:));
end;

ampf1233_D3x_dors_m = mean(ampf1233_D3x);
ampf1233_D3y_dors_m = mean(ampf1233_D3y);
ampf1233_D3z_dors_m = mean(ampf1233_D3z);
ampf1233_D2x_dors_m = mean(ampf1233_D2x);
ampf1233_D2y_dors_m = mean(ampf1233_D2y);
ampf1233_D2z_dors_m = mean(ampf1233_D2z);
ampf1655x_dors_m    = mean(ampf1655x);
ampf1655y_dors_m    = mean(ampf1655y);
ampf1655z_dors_m    = mean(ampf1655z);
ampf2077x_dors_m    = mean(ampf2077x);
ampf2077y_dors_m    = mean(ampf2077y);
ampf2077z_dors_m    = mean(ampf2077z);
ampf2099x_dors_m    = mean(ampf2099x);
ampf2099y_dors_m    = mean(ampf2099y);
ampf2099z_dors_m    = mean(ampf2099z);
ampk1233x_dors_m    = mean(ampk1233x);
ampk1233y_dors_m    = mean(ampk1233y);
ampk1233z_dors_m    = mean(ampk1233z);
ampk1655x_dors_m    = mean(ampk1655x);
ampk1655y_dors_m    = mean(ampk1655y);
ampk1655z_dors_m    = mean(ampk1655z);
ampk2077x_dors_m    = mean(ampk2077x);
ampk2077y_dors_m    = mean(ampk2077y);
ampk2077z_dors_m    = mean(ampk2077z);
ampk2099x_dors_m    = mean(ampk2099x);
ampk2099y_dors_m    = mean(ampk2099y);
ampk2099z_dors_m    = mean(ampk2099z);
ampkk1655x_dors_m   = mean(ampkk1655x);
ampkk1655y_dors_m   = mean(ampkk1655y);
ampkk1655z_dors_m   = mean(ampkk1655z);
ampkk2077x_dors_m   = mean(ampkk2077x);
ampkk2077y_dors_m   = mean(ampkk2077y);
ampkk2077z_dors_m   = mean(ampkk2077z);
ampkk2099x_dors_m   = mean(ampkk2099x);
ampkk2099y_dors_m   = mean(ampkk2099y);
ampkk2099z_dors_m   = mean(ampkk2099z);

ampf1233_D3x_dors_s = std(ampf1233_D3x);
ampf1233_D3y_dors_s = std(ampf1233_D3y);
ampf1233_D3z_dors_s = std(ampf1233_D3z);
ampf1233_D2x_dors_s = std(ampf1233_D2x);
ampf1233_D2y_dors_s = std(ampf1233_D2y);
ampf1233_D2z_dors_s = std(ampf1233_D2z);
ampf1655x_dors_s    = std(ampf1655x);
ampf1655y_dors_s    = std(ampf1655y);
ampf1655z_dors_s    = std(ampf1655z);
ampf2077x_dors_s    = std(ampf2077x);
ampf2077y_dors_s    = std(ampf2077y);
ampf2077z_dors_s    = std(ampf2077z);
ampf2099x_dors_s    = std(ampf2099x);
ampf2099y_dors_s    = std(ampf2099y);
ampf2099z_dors_s    = std(ampf2099z);
ampk1233x_dors_s    = std(ampk1233x);
ampk1233y_dors_s    = std(ampk1233y);
ampk1233z_dors_s    = std(ampk1233z);
ampk1655x_dors_s    = std(ampk1655x);
ampk1655y_dors_s    = std(ampk1655y);
ampk1655z_dors_s    = std(ampk1655z);
ampk2077x_dors_s    = std(ampk2077x);
ampk2077y_dors_s    = std(ampk2077y);
ampk2077z_dors_s    = std(ampk2077z);
ampk2099x_dors_s    = std(ampk2099x);
ampk2099y_dors_s    = std(ampk2099y);
ampk2099z_dors_s    = std(ampk2099z);
ampkk1655x_dors_s   = std(ampkk1655x);
ampkk1655y_dors_s   = std(ampkk1655y);
ampkk1655z_dors_s   = std(ampkk1655z);
ampkk2077x_dors_s   = std(ampkk2077x);
ampkk2077y_dors_s   = std(ampkk2077y);
ampkk2077z_dors_s   = std(ampkk2077z);
ampkk2099x_dors_s   = std(ampkk2099x);
ampkk2099y_dors_s   = std(ampkk2099y);
ampkk2099z_dors_s   = std(ampkk2099z);

mag_fetus_vernix_dors_x = [ampf1233_D3x_dors_m ampf1233_D2x_dors_m];
mag_fetus_vernix_dors_x_std = [ampf1233_D3x_dors_s ampf1233_D2x_dors_s];

mag_fetus_dors_x = [ampf1655x_dors_m
    ampf2077x_dors_m
    ampf2099x_dors_m
    ampk1233x_dors_m
    ampk1655x_dors_m
    ampk2077x_dors_m
    ampk2099x_dors_m];

mag_fetus_dors_x_std = [ampf1655x_dors_s
    ampf2077x_dors_s
    ampf2099x_dors_s
    ampk1233x_dors_s
    ampk1655x_dors_s
    ampk2077x_dors_s
    ampk2099x_dors_s];

mag_kopf_dors_x = [
    ampkk1655x_dors_m
    ampkk2077x_dors_m
    ampkk2099x_dors_m];

mag_kopf_dors_x_std = [
    ampkk1655x_dors_s
    ampkk2077x_dors_s
    ampkk2099x_dors_s];

mag_fetus_vernix_dors_y = [ampf1233_D3y_dors_m ampf1233_D2y_dors_m];
mag_fetus_vernix_dors_y_std = [ampf1233_D3y_dors_s ampf1233_D2y_dors_s];

mag_fetus_dors_y = [ampf1655y_dors_m
    ampf2077y_dors_m
    ampf2099y_dors_m
    ampk1233y_dors_m
    ampk1655y_dors_m
    ampk2077y_dors_m
    ampk2099y_dors_m];

mag_fetus_dors_y_std = [ampf1655y_dors_s
    ampf2077y_dors_s
    ampf2099y_dors_s
    ampk1233y_dors_s
    ampk1655y_dors_s
    ampk2077y_dors_s
    ampk2099y_dors_s];

mag_kopf_dors_y = [
    ampkk1655y_dors_m
    ampkk2077y_dors_m
    ampkk2099y_dors_m];

mag_kopf_dors_y_std = [
    ampkk1655y_dors_s
    ampkk2077y_dors_s
    ampkk2099y_dors_s];

mag_fetus_vernix_dors_z = [ampf1233_D3z_dors_m ampf1233_D2z_dors_m];
mag_fetus_vernix_dors_z_std = [ampf1233_D3z_dors_s ampf1233_D2z_dors_s];

mag_fetus_dors_z = [ampf1655z_dors_m
    ampf2077z_dors_m
    ampf2099z_dors_m
    ampk1233z_dors_m
    ampk1655z_dors_m
    ampk2077z_dors_m
    ampk2099z_dors_m];

mag_fetus_dors_z_std = [ampf1655z_dors_s
    ampf2077z_dors_s
    ampf2099z_dors_s
    ampk1233z_dors_s
    ampk1655z_dors_s
    ampk2077z_dors_s
    ampk2099z_dors_s];

mag_kopf_dors_z = [
    ampkk1655z_dors_m
    ampkk2077z_dors_m
    ampkk2099z_dors_m];

mag_kopf_dors_z_std = [
    ampkk1655z_dors_s
    ampkk2077z_dors_s
    ampkk2099z_dors_s];

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
    ccf1233_D2x(i)=rdm(fetus_1233_D2x(i,:),fetus_1233x(i,:));
    ccf1233_D2y(i)=rdm(fetus_1233_D2y(i,:),fetus_1233y(i,:));
    ccf1233_D2z(i)=rdm(fetus_1233_D2z(i,:),fetus_1233z(i,:));
    
    ccf1233_D3x(i)=rdm(fetus_1233_D3x(i,:),fetus_1233x(i,:));
    ccf1233_D3y(i)=rdm(fetus_1233_D3y(i,:),fetus_1233y(i,:));
    ccf1233_D3z(i)=rdm(fetus_1233_D3z(i,:),fetus_1233z(i,:));
    
    ccf1655x(i)=rdm(fetus_1655x(i,:),fetus_1233x(i,:));
    ccf1655y(i)=rdm(fetus_1655y(i,:),fetus_1233y(i,:));
    ccf1655z(i)=rdm(fetus_1655z(i,:),fetus_1233z(i,:));
    
    ccf2077x(i)=rdm(fetus_2077x(i,:),fetus_1233x(i,:));
    ccf2077y(i)=rdm(fetus_2077y(i,:),fetus_1233y(i,:));
    ccf2077z(i)=rdm(fetus_2077z(i,:),fetus_1233z(i,:));
    
    ccf2099x(i)=rdm(fetus_2099x(i,:),fetus_1233x(i,:));
    ccf2099y(i)=rdm(fetus_2099y(i,:),fetus_1233y(i,:));
    ccf2099z(i)=rdm(fetus_2099z(i,:),fetus_1233z(i,:));
    
    cck1233x(i)=rdm(kopf_1233x(i,:),fetus_1233x(i,:));
    cck1233y(i)=rdm(kopf_1233y(i,:),fetus_1233y(i,:));
    cck1233z(i)=rdm(kopf_1233z(i,:),fetus_1233z(i,:));
    
    cck1655x(i)=rdm(kopf_1655x(i,:),fetus_1233x(i,:));
    cck1655y(i)=rdm(kopf_1655y(i,:),fetus_1233y(i,:));
    cck1655z(i)=rdm(kopf_1655z(i,:),fetus_1233z(i,:));
    
    cck2077x(i)=rdm(kopf_2077x(i,:),fetus_1233x(i,:));
    cck2077y(i)=rdm(kopf_2077y(i,:),fetus_1233y(i,:));
    cck2077z(i)=rdm(kopf_2077z(i,:),fetus_1233z(i,:));
    
    cck2099x(i)=rdm(kopf_2099x(i,:),fetus_1233x(i,:));
    cck2099y(i)=rdm(kopf_2099y(i,:),fetus_1233y(i,:));
    cck2099z(i)=rdm(kopf_2099z(i,:),fetus_1233z(i,:));
    
    cckk1655x(i)=rdm(kopf_1655x(i,:),kopf_1233x(i,:));
    cckk1655y(i)=rdm(kopf_1655y(i,:),kopf_1233y(i,:));
    cckk1655z(i)=rdm(kopf_1655z(i,:),kopf_1233z(i,:));
    
    cckk2077x(i)=rdm(kopf_2077x(i,:),kopf_1233x(i,:));
    cckk2077y(i)=rdm(kopf_2077y(i,:),kopf_1233y(i,:));
    cckk2077z(i)=rdm(kopf_2077z(i,:),kopf_1233z(i,:));
    
    cckk2099x(i)=rdm(kopf_2099x(i,:),kopf_1233x(i,:));
    cckk2099y(i)=rdm(kopf_2099y(i,:),kopf_1233y(i,:));
    cckk2099z(i)=rdm(kopf_2099z(i,:),kopf_1233z(i,:));
end;

ccf1233_D3x_sinis_m = mean(ccf1233_D3x);
ccf1233_D3y_sinis_m = mean(ccf1233_D3y);
ccf1233_D3z_sinis_m = mean(ccf1233_D3z);
ccf1233_D2x_sinis_m = mean(ccf1233_D2x);
ccf1233_D2y_sinis_m = mean(ccf1233_D2y);
ccf1233_D2z_sinis_m = mean(ccf1233_D2z);
ccf1655x_sinis_m = mean(ccf1655x);
ccf1655y_sinis_m = mean(ccf1655y);
ccf1655z_sinis_m = mean(ccf1655z);
ccf2077x_sinis_m = mean(ccf2077x);
ccf2077y_sinis_m = mean(ccf2077y);
ccf2077z_sinis_m = mean(ccf2077z);
ccf2099x_sinis_m = mean(ccf2099x);
ccf2099y_sinis_m = mean(ccf2099y);
ccf2099z_sinis_m = mean(ccf2099z);
cck1233x_sinis_m = mean(cck1233x);
cck1233y_sinis_m = mean(cck1233y);
cck1233z_sinis_m = mean(cck1233z);
cck1655x_sinis_m = mean(cck1655x);
cck1655y_sinis_m = mean(cck1655y);
cck1655z_sinis_m = mean(cck1655z);
cck2077x_sinis_m = mean(cck2077x);
cck2077y_sinis_m = mean(cck2077y);
cck2077z_sinis_m = mean(cck2077z);
cck2099x_sinis_m = mean(cck2099x);
cck2099y_sinis_m = mean(cck2099y);
cck2099z_sinis_m = mean(cck2099z);
cckk1655x_sinis_m = mean(cckk1655x);
cckk1655y_sinis_m = mean(cckk1655y);
cckk1655z_sinis_m = mean(cckk1655z);
cckk2077x_sinis_m = mean(cckk2077x);
cckk2077y_sinis_m = mean(cckk2077y);
cckk2077z_sinis_m = mean(cckk2077z);
cckk2099x_sinis_m = mean(cckk2099x);
cckk2099y_sinis_m = mean(cckk2099y);
cckk2099z_sinis_m = mean(cckk2099z);

ccf1233_D3x_sinis_s = std(ccf1233_D3x);
ccf1233_D3y_sinis_s = std(ccf1233_D3y);
ccf1233_D3z_sinis_s = std(ccf1233_D3z);
ccf1233_D2x_sinis_s = std(ccf1233_D2x);
ccf1233_D2y_sinis_s = std(ccf1233_D2y);
ccf1233_D2z_sinis_s = std(ccf1233_D2z);
ccf1655x_sinis_s    = std(ccf1655x);
ccf1655y_sinis_s    = std(ccf1655y);
ccf1655z_sinis_s    = std(ccf1655z);
ccf2077x_sinis_s    = std(ccf2077x);
ccf2077y_sinis_s    = std(ccf2077y);
ccf2077z_sinis_s    = std(ccf2077z);
ccf2099x_sinis_s    = std(ccf2099x);
ccf2099y_sinis_s    = std(ccf2099y);
ccf2099z_sinis_s    = std(ccf2099z);
cck1233x_sinis_s    = std(cck1233x);
cck1233y_sinis_s    = std(cck1233y);
cck1233z_sinis_s    = std(cck1233z);
cck1655x_sinis_s    = std(cck1655x);
cck1655y_sinis_s    = std(cck1655y);
cck1655z_sinis_s    = std(cck1655z);
cck2077x_sinis_s    = std(cck2077x);
cck2077y_sinis_s    = std(cck2077y);
cck2077z_sinis_s    = std(cck2077z);
cck2099x_sinis_s    = std(cck2099x);
cck2099y_sinis_s    = std(cck2099y);
cck2099z_sinis_s    = std(cck2099z);
cckk1655x_sinis_s   = std(cckk1655x);
cckk1655y_sinis_s   = std(cckk1655y);
cckk1655z_sinis_s   = std(cckk1655z);
cckk2077x_sinis_s   = std(cckk2077x);
cckk2077y_sinis_s   = std(cckk2077y);
cckk2077z_sinis_s   = std(cckk2077z);
cckk2099x_sinis_s   = std(cckk2099x);
cckk2099y_sinis_s   = std(cckk2099y);
cckk2099z_sinis_s   = std(cckk2099z);

rdm_fetus_vernix_sinis_x = [ccf1233_D3x_sinis_m ccf1233_D2x_sinis_m];
rdm_fetus_vernix_sinis_x_std = [ccf1233_D3x_sinis_s ccf1233_D2x_sinis_s];

rdm_fetus_sinis_x = [ccf1655x_sinis_m
    ccf2077x_sinis_m
    ccf2099x_sinis_m
    cck1233x_sinis_m
    cck1655x_sinis_m
    cck2077x_sinis_m
    cck2099x_sinis_m];

rdm_fetus_sinis_x_std = [ccf1655x_sinis_s
    ccf2077x_sinis_s
    ccf2099x_sinis_s
    cck1233x_sinis_s
    cck1655x_sinis_s
    cck2077x_sinis_s
    cck2099x_sinis_s];

rdm_kopf_sinis_x = [
    cckk1655x_sinis_m
    cckk2077x_sinis_m
    cckk2099x_sinis_m];

rdm_kopf_sinis_x_std = [
    cckk1655x_sinis_s
    cckk2077x_sinis_s
    cckk2099x_sinis_s];

rdm_fetus_vernix_sinis_y = [ccf1233_D3y_sinis_m ccf1233_D2y_sinis_m];
rdm_fetus_vernix_sinis_y_std = [ccf1233_D3y_sinis_s ccf1233_D2y_sinis_s];

rdm_fetus_sinis_y = [ccf1655y_sinis_m
    ccf2077y_sinis_m
    ccf2099y_sinis_m
    cck1233y_sinis_m
    cck1655y_sinis_m
    cck2077y_sinis_m
    cck2099y_sinis_m];

rdm_fetus_sinis_y_std = [ccf1655y_sinis_s
    ccf2077y_sinis_s
    ccf2099y_sinis_s
    cck1233y_sinis_s
    cck1655y_sinis_s
    cck2077y_sinis_s
    cck2099y_sinis_s];

rdm_kopf_sinis_y = [
    cckk1655y_sinis_m
    cckk2077y_sinis_m
    cckk2099y_sinis_m];

rdm_kopf_sinis_y_std = [
    cckk1655y_sinis_s
    cckk2077y_sinis_s
    cckk2099y_sinis_s];

rdm_fetus_vernix_sinis_z = [ccf1233_D3z_sinis_m ccf1233_D2z_sinis_m];
rdm_fetus_vernix_sinis_z_std = [ccf1233_D3z_sinis_s ccf1233_D2z_sinis_s];

rdm_fetus_sinis_z = [ccf1655z_sinis_m
    ccf2077z_sinis_m
    ccf2099z_sinis_m
    cck1233z_sinis_m
    cck1655z_sinis_m
    cck2077z_sinis_m
    cck2099z_sinis_m];

rdm_fetus_sinis_z_std = [ccf1655z_sinis_s
    ccf2077z_sinis_s
    ccf2099z_sinis_s
    cck1233z_sinis_s
    cck1655z_sinis_s
    cck2077z_sinis_s
    cck2099z_sinis_s];

rdm_kopf_sinis_z = [
    cckk1655z_sinis_m
    cckk2077z_sinis_m
    cckk2099z_sinis_m];

rdm_kopf_sinis_z_std = [
    cckk1655z_sinis_s
    cckk2077z_sinis_s
    cckk2099z_sinis_s];

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
% errorbar([2 3],rdm_fetus_vernix_cran_x,rdm_fetus_vernix_cran_x_std, 'Color', [0 0 0]);
% set(gca,'XTick',2:1:3); set(gca,'XTickLabel',2:1:3);
% set(gca,'fontsize',14, 'FontName','arial');
% title('RDM-Werte($\vec{e_{x}}$), Dipolrichtung cranial','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('RDM(Referenz: BEM-Modell 1)','interpreter','latex');
% subplot(3,3,2);
% errorbar([2 3],rdm_fetus_vernix_cran_y,rdm_fetus_vernix_cran_y_std, 'Color', [0 0 0]);
% set(gca,'XTick',2:1:3); set(gca,'XTickLabel',2:1:3);
% set(gca,'fontsize',14, 'FontName','arial');
% title('RDM-Werte($\vec{e_{y}}$), Dipolrichtung cranial','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('RDM(Referenz: BEM-Modell 1)','interpreter','latex');
% subplot(3,3,3);
% errorbar([2 3],rdm_fetus_vernix_cran_z,rdm_fetus_vernix_cran_z_std, 'Color', [0 0 0]);
% set(gca,'XTick',2:1:3); set(gca,'XTickLabel',2:1:3);
% set(gca,'fontsize',14, 'FontName','arial');
% title('RDM-Werte($\vec{e_{z}}$), Dipolrichtung cranial','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('RDM(Referenz: BEM-Modell 1)','interpreter','latex');
% 
% subplot(3,3,4);
% errorbar([2 3],rdm_fetus_vernix_dors_x,rdm_fetus_vernix_dors_x_std, 'Color', [0 0 0]);
% set(gca,'XTick',2:1:3); set(gca,'XTickLabel',2:1:3);
% set(gca,'fontsize',14, 'FontName','arial');
% title('RDM-Werte($\vec{e_{x}}$), Dipolrichtung dorsal','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('RDM(Referenz: BEM-Modell 1)','interpreter','latex');
% subplot(3,3,5);
% errorbar([2 3],rdm_fetus_vernix_dors_y,rdm_fetus_vernix_dors_y_std, 'Color', [0 0 0]);
% set(gca,'XTick',2:1:3); set(gca,'XTickLabel',2:1:3);
% set(gca,'fontsize',14, 'FontName','arial');
% title('RDM-Werte($\vec{e_{y}}$), Dipolrichtung dorsal','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('RDM(Referenz: BEM-Modell 1)','interpreter','latex');
% subplot(3,3,6);
% errorbar([2 3],rdm_fetus_vernix_dors_z,rdm_fetus_vernix_dors_z_std, 'Color', [0 0 0]);
% set(gca,'XTick',2:1:3); set(gca,'XTickLabel',2:1:3);
% set(gca,'fontsize',14, 'FontName','arial');
% title('RDM-Werte($\vec{e_{z}}$), Dipolrichtung dorsal','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('RDM(Referenz: BEM-Modell 1)','interpreter','latex');
% 
% subplot(3,3,7);
% errorbar([2 3],rdm_fetus_vernix_sinis_x,rdm_fetus_vernix_sinis_x_std, 'Color', [0 0 0]);
% set(gca,'XTick',2:1:3); set(gca,'XTickLabel',2:1:3);
% set(gca,'fontsize',14, 'FontName','arial');
% title('RDM-Werte($\vec{e_{x}}$), Dipolrichtung sinistral','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('RDM(Referenz: BEM-Modell 1)','interpreter','latex');
% subplot(3,3,8);
% errorbar([2 3],rdm_fetus_vernix_sinis_y,rdm_fetus_vernix_sinis_y_std, 'Color', [0 0 0]);
% set(gca,'XTick',2:1:3); set(gca,'XTickLabel',2:1:3);
% set(gca,'fontsize',14, 'FontName','arial');
% title('RDM-Werte($\vec{e_{y}}$), Dipolrichtung sinistral','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('RDM(Referenz: BEM-Modell 1)','interpreter','latex');
% subplot(3,3,9);
% errorbar([2 3],rdm_fetus_vernix_sinis_z,rdm_fetus_vernix_sinis_z_std, 'Color', [0 0 0]);
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
    ampf1233_D3x(i) = mag(fetus_1233_D3x(i,:), fetus_1233x(i,:));
    ampf1233_D3y(i) = mag(fetus_1233_D3y(i,:),fetus_1233y(i,:));
    ampf1233_D3z(i) = mag(fetus_1233_D3z(i,:),fetus_1233z(i,:));
    ampf1233_D2x(i) = mag(fetus_1233_D2x(i,:),fetus_1233x(i,:));
    ampf1233_D2y(i) = mag(fetus_1233_D2y(i,:),fetus_1233y(i,:));
    ampf1233_D2z(i) = mag(fetus_1233_D2z(i,:),fetus_1233z(i,:));
    ampf1655x(i)    = mag(fetus_1655x(i,:),fetus_1233x(i,:));
    ampf1655y(i)    = mag(fetus_1655y(i,:),fetus_1233y(i,:));
    ampf1655z(i)    = mag(fetus_1655z(i,:),fetus_1233z(i,:));
    ampf2077x(i)    = mag(fetus_2077x(i,:),fetus_1233x(i,:));
    ampf2077y(i)    = mag(fetus_2077y(i,:),fetus_1233y(i,:));
    ampf2077z(i)    = mag(fetus_2077z(i,:),fetus_1233z(i,:));
    ampf2099x(i)    = mag(fetus_2099x(i,:),fetus_1233x(i,:));
    ampf2099y(i)    = mag(fetus_2099y(i,:),fetus_1233y(i,:));
    ampf2099z(i)    = mag(fetus_2099z(i,:),fetus_1233z(i,:));
    ampk1233x(i)    = mag(kopf_1233x(i,:),fetus_1233x(i,:));
    ampk1233y(i)    = mag(kopf_1233y(i,:),fetus_1233y(i,:));
    ampk1233z(i)    = mag(kopf_1233z(i,:),fetus_1233z(i,:));
    ampk1655x(i)    = mag(kopf_1655x(i,:),fetus_1233x(i,:));
    ampk1655y(i)    = mag(kopf_1655y(i,:),fetus_1233y(i,:));
    ampk1655z(i)    = mag(kopf_1655z(i,:),fetus_1233z(i,:));
    ampk2077x(i)    = mag(kopf_2077x(i,:),fetus_1233x(i,:));
    ampk2077y(i)    = mag(kopf_2077y(i,:),fetus_1233y(i,:));
    ampk2077z(i)    = mag(kopf_2077z(i,:),fetus_1233z(i,:));
    ampk2099x(i)    = mag(kopf_2099x(i,:),fetus_1233x(i,:));
    ampk2099y(i)    = mag(kopf_2099y(i,:),fetus_1233y(i,:));
    ampk2099z(i)    = mag(kopf_2099z(i,:),fetus_1233z(i,:));
    ampkk1655x(i)   = mag(kopf_1655x(i,:),kopf_1233x(i,:));
    ampkk1655y(i)   = mag(kopf_1655y(i,:),kopf_1233y(i,:));
    ampkk1655z(i)   = mag(kopf_1655z(i,:),kopf_1233z(i,:));
    ampkk2077x(i)   = mag(kopf_2077x(i,:),kopf_1233x(i,:));
    ampkk2077y(i)   = mag(kopf_2077y(i,:),kopf_1233y(i,:));
    ampkk2077z(i)   = mag(kopf_2077z(i,:),kopf_1233z(i,:));
    ampkk2099x(i)   = mag(kopf_2099x(i,:),kopf_1233x(i,:));
    ampkk2099y(i)   = mag(kopf_2099y(i,:),kopf_1233y(i,:));
    ampkk2099z(i)   = mag(kopf_2099z(i,:),kopf_1233z(i,:));
end;

ampf1233_D3x_sinis_m = mean(ampf1233_D3x);
ampf1233_D3y_sinis_m = mean(ampf1233_D3y);
ampf1233_D3z_sinis_m = mean(ampf1233_D3z);
ampf1233_D2x_sinis_m = mean(ampf1233_D2x);
ampf1233_D2y_sinis_m = mean(ampf1233_D2y);
ampf1233_D2z_sinis_m = mean(ampf1233_D2z);
ampf1655x_sinis_m    = mean(ampf1655x);
ampf1655y_sinis_m    = mean(ampf1655y);
ampf1655z_sinis_m    = mean(ampf1655z);
ampf2077x_sinis_m    = mean(ampf2077x);
ampf2077y_sinis_m    = mean(ampf2077y);
ampf2077z_sinis_m    = mean(ampf2077z);
ampf2099x_sinis_m    = mean(ampf2099x);
ampf2099y_sinis_m    = mean(ampf2099y);
ampf2099z_sinis_m    = mean(ampf2099z);
ampk1233x_sinis_m    = mean(ampk1233x);
ampk1233y_sinis_m    = mean(ampk1233y);
ampk1233z_sinis_m    = mean(ampk1233z);
ampk1655x_sinis_m    = mean(ampk1655x);
ampk1655y_sinis_m    = mean(ampk1655y);
ampk1655z_sinis_m    = mean(ampk1655z);
ampk2077x_sinis_m    = mean(ampk2077x);
ampk2077y_sinis_m    = mean(ampk2077y);
ampk2077z_sinis_m    = mean(ampk2077z);
ampk2099x_sinis_m    = mean(ampk2099x);
ampk2099y_sinis_m    = mean(ampk2099y);
ampk2099z_sinis_m    = mean(ampk2099z);
ampkk1655x_sinis_m   = mean(ampkk1655x);
ampkk1655y_sinis_m   = mean(ampkk1655y);
ampkk1655z_sinis_m   = mean(ampkk1655z);
ampkk2077x_sinis_m   = mean(ampkk2077x);
ampkk2077y_sinis_m   = mean(ampkk2077y);
ampkk2077z_sinis_m   = mean(ampkk2077z);
ampkk2099x_sinis_m   = mean(ampkk2099x);
ampkk2099y_sinis_m   = mean(ampkk2099y);
ampkk2099z_sinis_m   = mean(ampkk2099z);

ampf1233_D3x_sinis_s = std(ampf1233_D3x);
ampf1233_D3y_sinis_s = std(ampf1233_D3y);
ampf1233_D3z_sinis_s = std(ampf1233_D3z);
ampf1233_D2x_sinis_s = std(ampf1233_D2x);
ampf1233_D2y_sinis_s = std(ampf1233_D2y);
ampf1233_D2z_sinis_s = std(ampf1233_D2z);
ampf1655x_sinis_s    = std(ampf1655x);
ampf1655y_sinis_s    = std(ampf1655y);
ampf1655z_sinis_s    = std(ampf1655z);
ampf2077x_sinis_s    = std(ampf2077x);
ampf2077y_sinis_s    = std(ampf2077y);
ampf2077z_sinis_s    = std(ampf2077z);
ampf2099x_sinis_s    = std(ampf2099x);
ampf2099y_sinis_s    = std(ampf2099y);
ampf2099z_sinis_s    = std(ampf2099z);
ampk1233x_sinis_s    = std(ampk1233x);
ampk1233y_sinis_s    = std(ampk1233y);
ampk1233z_sinis_s    = std(ampk1233z);
ampk1655x_sinis_s    = std(ampk1655x);
ampk1655y_sinis_s    = std(ampk1655y);
ampk1655z_sinis_s    = std(ampk1655z);
ampk2077x_sinis_s    = std(ampk2077x);
ampk2077y_sinis_s    = std(ampk2077y);
ampk2077z_sinis_s    = std(ampk2077z);
ampk2099x_sinis_s    = std(ampk2099x);
ampk2099y_sinis_s    = std(ampk2099y);
ampk2099z_sinis_s    = std(ampk2099z);
ampkk1655x_sinis_s   = std(ampkk1655x);
ampkk1655y_sinis_s   = std(ampkk1655y);
ampkk1655z_sinis_s   = std(ampkk1655z);
ampkk2077x_sinis_s   = std(ampkk2077x);
ampkk2077y_sinis_s   = std(ampkk2077y);
ampkk2077z_sinis_s   = std(ampkk2077z);
ampkk2099x_sinis_s   = std(ampkk2099x);
ampkk2099y_sinis_s   = std(ampkk2099y);
ampkk2099z_sinis_s   = std(ampkk2099z);

mag_fetus_vernix_sinis_x = [ampf1233_D3x_sinis_m ampf1233_D2x_sinis_m];
mag_fetus_vernix_sinis_x_std = [ampf1233_D3x_sinis_s ampf1233_D2x_sinis_s];

mag_fetus_sinis_x = [ampf1655x_sinis_m
    ampf2077x_sinis_m
    ampf2099x_sinis_m
    ampk1233x_sinis_m
    ampk1655x_sinis_m
    ampk2077x_sinis_m
    ampk2099x_sinis_m];

mag_fetus_sinis_x_std = [ampf1655x_sinis_s
    ampf2077x_sinis_s
    ampf2099x_sinis_s
    ampk1233x_sinis_s
    ampk1655x_sinis_s
    ampk2077x_sinis_s
    ampk2099x_sinis_s];

mag_kopf_sinis_x = [
    ampkk1655x_sinis_m
    ampkk2077x_sinis_m
    ampkk2099x_sinis_m];

mag_kopf_sinis_x_std = [
    ampkk1655x_sinis_s
    ampkk2077x_sinis_s
    ampkk2099x_sinis_s];

mag_fetus_vernix_sinis_y = [ampf1233_D3y_sinis_m ampf1233_D2y_sinis_m];
mag_fetus_vernix_sinis_y_std = [ampf1233_D3y_sinis_s ampf1233_D2y_sinis_s];

mag_fetus_sinis_y = [ampf1655y_sinis_m
    ampf2077y_sinis_m
    ampf2099y_sinis_m
    ampk1233y_sinis_m
    ampk1655y_sinis_m
    ampk2077y_sinis_m
    ampk2099y_sinis_m];

mag_fetus_sinis_y_std = [ampf1655y_sinis_s
    ampf2077y_sinis_s
    ampf2099y_sinis_s
    ampk1233y_sinis_s
    ampk1655y_sinis_s
    ampk2077y_sinis_s
    ampk2099y_sinis_s];

mag_kopf_sinis_y = [
    ampkk1655y_sinis_m
    ampkk2077y_sinis_m
    ampkk2099y_sinis_m];

mag_kopf_sinis_y_std = [
    ampkk1655y_sinis_s
    ampkk2077y_sinis_s
    ampkk2099y_sinis_s];

mag_fetus_vernix_sinis_z = [ampf1233_D3z_sinis_m ampf1233_D2z_sinis_m];
mag_fetus_vernix_sinis_z_std = [ampf1233_D3z_sinis_s ampf1233_D2z_sinis_s];

mag_fetus_sinis_z = [ampf1655z_sinis_m
    ampf2077z_sinis_m
    ampf2099z_sinis_m
    ampk1233z_sinis_m
    ampk1655z_sinis_m
    ampk2077z_sinis_m
    ampk2099z_sinis_m];

mag_fetus_sinis_z_std = [ampf1655z_sinis_s
    ampf2077z_sinis_s
    ampf2099z_sinis_s
    ampk1233z_sinis_s
    ampk1655z_sinis_s
    ampk2077z_sinis_s
    ampk2099z_sinis_s];

mag_kopf_sinis_z = [
    ampkk1655z_sinis_m
    ampkk2077z_sinis_m
    ampkk2099z_sinis_m];

mag_kopf_sinis_z_std = [
    ampkk1655z_sinis_s
    ampkk2077z_sinis_s
    ampkk2099z_sinis_s];

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
% errorbar([2 3],mag_fetus_vernix_cran_x,mag_fetus_vernix_cran_x_std, 'Color', [0 0 0]);
% set(gca,'XTick',2:1:3); set(gca,'XTickLabel',2:1:3);
% set(gca,'fontsize',14, 'FontName','arial');
% title('MAG-Werte($\vec{e_{x}}$), Dipolrichtung cranial','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('MAG(Referenz: BEM-Modell 1)','interpreter','latex');
% subplot(3,3,2);
% errorbar([2 3],mag_fetus_vernix_cran_y,mag_fetus_vernix_cran_y_std, 'Color', [0 0 0]);
% set(gca,'XTick',2:1:3); set(gca,'XTickLabel',2:1:3);
% set(gca,'fontsize',14, 'FontName','arial');
% title('MAG-Werte($\vec{e_{y}}$), Dipolrichtung cranial','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('MAG(Referenz: BEM-Modell 1)','interpreter','latex');
% subplot(3,3,3);
% errorbar([2 3],mag_fetus_vernix_cran_z,mag_fetus_vernix_cran_z_std, 'Color', [0 0 0]);
% set(gca,'XTick',2:1:3); set(gca,'XTickLabel',2:1:3);
% set(gca,'fontsize',14, 'FontName','arial');
% title('MAG-Werte($\vec{e_{z}}$), Dipolrichtung cranial','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('MAG(Referenz: BEM-Modell 1)','interpreter','latex');
% 
% subplot(3,3,4);
% errorbar([2 3],mag_fetus_vernix_dors_x,mag_fetus_vernix_dors_x_std, 'Color', [0 0 0]);
% set(gca,'XTick',2:1:3); set(gca,'XTickLabel',2:1:3);
% set(gca,'fontsize',14, 'FontName','arial');
% title('MAG-Werte($\vec{e_{x}}$), Dipolrichtung dorsal','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('MAG(Referenz: BEM-Modell 1)','interpreter','latex');
% subplot(3,3,5);
% errorbar([2 3],mag_fetus_vernix_dors_y,mag_fetus_vernix_dors_y_std, 'Color', [0 0 0]);
% set(gca,'XTick',2:1:3); set(gca,'XTickLabel',2:1:3);
% set(gca,'fontsize',14, 'FontName','arial');
% title('MAG-Werte($\vec{e_{y}}$), Dipolrichtung dorsal','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('MAG(Referenz: BEM-Modell 1)','interpreter','latex');
% subplot(3,3,6);
% errorbar([2 3],mag_fetus_vernix_dors_z,mag_fetus_vernix_dors_z_std, 'Color', [0 0 0]);
% set(gca,'XTick',2:1:3); set(gca,'XTickLabel',2:1:3);
% set(gca,'fontsize',14, 'FontName','arial');
% title('MAG-Werte($\vec{e_{z}}$), Dipolrichtung dorsal','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('MAG(Referenz: BEM-Modell 1)','interpreter','latex');
% 
% subplot(3,3,7);
% errorbar([2 3],mag_fetus_vernix_sinis_x,mag_fetus_vernix_sinis_x_std, 'Color', [0 0 0]);
% set(gca,'XTick',2:1:3); set(gca,'XTickLabel',2:1:3);
% set(gca,'fontsize',14, 'FontName','arial');
% title('MAG-Werte($\vec{e_{x}}$), Dipolrichtung sinistral','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('MAG(Referenz: BEM-Modell 1)','interpreter','latex');
% subplot(3,3,8);
% errorbar([2 3],mag_fetus_vernix_sinis_y,mag_fetus_vernix_sinis_y_std, 'Color', [0 0 0]);
% set(gca,'XTick',2:1:3); set(gca,'XTickLabel',2:1:3);
% set(gca,'fontsize',14, 'FontName','arial');
% title('MAG-Werte($\vec{e_{y}}$), Dipolrichtung sinistral','interpreter','latex');
% set(gca,'fontsize',10, 'FontName','arial');
% xlabel('BEM-Modell','interpreter','latex');
% ylabel('MAG(Referenz: BEM-Modell 1)','interpreter','latex');
% subplot(3,3,9);
% errorbar([2 3],mag_fetus_vernix_sinis_z,mag_fetus_vernix_sinis_z_std, 'Color', [0 0 0]);
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

[~,norm1,mag1] = curry_dip_read('result_f_fetus_1233_1025_cran.dip',1025);

n_f_fetus_1233_1025_cran = mag1{1};

mag_f_fetus_1233_1025_cran_m = mean(mag1{1});
mag_f_fetus_1233_1025_cran_s = std(mag1{1});

phi_f_fetus_1233_1025_cran=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];
bvec=[0,0,1];
for i=1:1025
    phi_f_fetus_1233_1025_cran(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

[~,norm1,mag1] = curry_dip_read('result_f_fetus_1233_1025_D3_cran.dip',1025);

n_f_fetus_1233_1025_D3_cran = mag1{1};

mag_f_fetus_1233_1025_D3_cran_m = mean(mag1{1});
mag_f_fetus_1233_1025_D3_cran_s = std(mag1{1});

phi_f_fetus_1233_1025_D3_cran=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];
bvec=[0,0,1];
for i=1:1025
    phi_f_fetus_1233_1025_D3_cran(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

[~,norm1,mag1] = curry_dip_read('result_f_fetus_1233_1025_D2_cran.dip',1025);

n_f_fetus_1233_1025_D2_cran = mag1{1};

mag_f_fetus_1233_1025_D2_cran_m = mean(mag1{1});
mag_f_fetus_1233_1025_D2_cran_s = std(mag1{1});

phi_f_fetus_1233_1025_D2_cran=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];
bvec=[0,0,1];
for i=1:1025
    phi_f_fetus_1233_1025_D2_cran(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

[~,norm1,mag1] = curry_dip_read('result_f_fetus_1655_1025_cran.dip',1025);

n_f_fetus_1655_1025_cran = mag1{1};

mag_f_fetus_1655_1025_cran_m = mean(mag1{1});
mag_f_fetus_1655_1025_cran_s = std(mag1{1});

phi_f_fetus_1655_1025_cran=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];

bvec=[0,0,1];
for i=1:1025
    phi_f_fetus_1655_1025_cran(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

[~,norm1,mag1] = curry_dip_read('result_f_fetus_2077_1025_cran.dip',1025);

n_f_fetus_2077_1025_cran = mag1{1};

mag_f_fetus_2077_1025_cran_m = mean(mag1{1});
mag_f_fetus_2077_1025_cran_s = std(mag1{1});

phi_f_fetus_2077_1025_cran=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];

bvec=[0,0,1];
for i=1:1025
    phi_f_fetus_2077_1025_cran(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

[~,norm1,mag1] = curry_dip_read('result_f_fetus_2099_1025_cran.dip',1025);

n_f_fetus_2099_1025_cran = mag1{1};

mag_f_fetus_2099_1025_cran_m = mean(mag1{1});
mag_f_fetus_2099_1025_cran_s = std(mag1{1});

phi_f_fetus_2099_1025_cran=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];

bvec=[0,0,1];
for i=1:1025
    phi_f_fetus_2099_1025_cran(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

[~,norm1,mag1] = curry_dip_read('result_f_kopf_1233_1025_cran.dip',1025);

n_f_kopf_1233_1025_cran = mag1{1};

mag_f_kopf_1233_1025_cran_m = mean(mag1{1});
mag_f_kopf_1233_1025_cran_s = std(mag1{1});

phi_f_kopf_1233_1025_cran=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];

bvec=[0,0,1];
for i=1:1025
    phi_f_kopf_1233_1025_cran(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

[~,norm1,mag1] = curry_dip_read('result_f_kopf_1655_1025_cran.dip',1025);

n_f_kopf_1655_1025_cran = mag1{1};

mag_f_kopf_1655_1025_cran_m = mean(mag1{1});
mag_f_kopf_1655_1025_cran_s = std(mag1{1});

phi_f_kopf_1655_1025_cran=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];

bvec=[0,0,1];
for i=1:1025
    phi_f_kopf_1655_1025_cran(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

[~,norm1,mag1] = curry_dip_read('result_f_kopf_2077_1025_cran.dip',1025);

n_f_kopf_2077_1025_cran = mag1{1};

mag_f_kopf_2077_1025_cran_m = mean(mag1{1});
mag_f_kopf_2077_1025_cran_s = std(mag1{1});

phi_f_kopf_2077_1025_cran=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];

bvec=[0,0,1];
for i=1:1025
    phi_f_kopf_2077_1025_cran(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

[~,norm1,mag1] = curry_dip_read('result_f_kopf_2099_1025_cran.dip',1025);

n_f_kopf_2099_1025_cran = mag1{1};

mag_f_kopf_2099_1025_cran_m = mean(mag1{1});
mag_f_kopf_2099_1025_cran_s = std(mag1{1});

phi_f_kopf_2099_1025_cran=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];

bvec=[0,1,0];
for i=1:1025
    phi_f_kopf_2099_1025_cran(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

[~,norm1,mag1] = curry_dip_read('result_f_fetus_1233_1025_dors.dip',1025);

n_f_fetus_1233_1025_dors = mag1{1};

mag_f_fetus_1233_1025_dors_m = mean(mag1{1});
mag_f_fetus_1233_1025_dors_s = std(mag1{1});

phi_f_fetus_1233_1025_dors=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];
bvec=[0,1,0];
for i=1:1025
    phi_f_fetus_1233_1025_dors(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

[~,norm1,mag1] = curry_dip_read('result_f_fetus_1233_1025_D3_dors.dip',1025);

n_f_fetus_1233_1025_D3_dors = mag1{1};

mag_f_fetus_1233_1025_D3_dors_m = mean(mag1{1});
mag_f_fetus_1233_1025_D3_dors_s = std(mag1{1});

phi_f_fetus_1233_1025_D3_dors=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];
bvec=[0,1,0];
for i=1:1025
    phi_f_fetus_1233_1025_D3_dors(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

[~,norm1,mag1] = curry_dip_read('result_f_fetus_1233_1025_D2_dors.dip',1025);

n_f_fetus_1233_1025_D2_dors = mag1{1};

mag_f_fetus_1233_1025_D2_dors_m = mean(mag1{1});
mag_f_fetus_1233_1025_D2_dors_s = std(mag1{1});

phi_f_fetus_1233_1025_D2_dors=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];
bvec=[0,1,0];
for i=1:1025
    phi_f_fetus_1233_1025_D2_dors(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

[~,norm1,mag1] = curry_dip_read('result_f_fetus_1655_1025_dors.dip',1025);

n_f_fetus_1655_1025_dors = mag1{1};

mag_f_fetus_1655_1025_dors_m = mean(mag1{1});
mag_f_fetus_1655_1025_dors_s = std(mag1{1});

phi_f_fetus_1655_1025_dors=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];

bvec=[0,1,0];
for i=1:1025
    phi_f_fetus_1655_1025_dors(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

[~,norm1,mag1] = curry_dip_read('result_f_fetus_2077_1025_dors.dip',1025);

n_f_fetus_2077_1025_dors = mag1{1};

mag_f_fetus_2077_1025_dors_m = mean(mag1{1});
mag_f_fetus_2077_1025_dors_s = std(mag1{1});

phi_f_fetus_2077_1025_dors=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];

bvec=[0,1,0];
for i=1:1025
    phi_f_fetus_2077_1025_dors(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

[~,norm1,mag1] = curry_dip_read('result_f_fetus_2099_1025_dors.dip',1025);

n_f_fetus_2099_1025_dors = mag1{1};

mag_f_fetus_2099_1025_dors_m = mean(mag1{1});
mag_f_fetus_2099_1025_dors_s = std(mag1{1});

phi_f_fetus_2099_1025_dors=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];

bvec=[0,1,0];
for i=1:1025
    phi_f_fetus_2099_1025_dors(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

[~,norm1,mag1] = curry_dip_read('result_f_kopf_1233_1025_dors.dip',1025);

n_f_kopf_1233_1025_dors = mag1{1};

mag_f_kopf_1233_1025_dors_m = mean(mag1{1});
mag_f_kopf_1233_1025_dors_s = std(mag1{1});

phi_f_kopf_1233_1025_dors=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];

bvec=[0,1,0];
for i=1:1025
    phi_f_kopf_1233_1025_dors(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

[~,norm1,mag1] = curry_dip_read('result_f_kopf_1655_1025_dors.dip',1025);

n_f_kopf_1655_1025_dors = mag1{1};

mag_f_kopf_1655_1025_dors_m = mean(mag1{1});
mag_f_kopf_1655_1025_dors_s = std(mag1{1});

phi_f_kopf_1655_1025_dors=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];

bvec=[0,1,0];
for i=1:1025
    phi_f_kopf_1655_1025_dors(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

[~,norm1,mag1] = curry_dip_read('result_f_kopf_2077_1025_dors.dip',1025);

n_f_kopf_2077_1025_dors = mag1{1};

mag_f_kopf_2077_1025_dors_m = mean(mag1{1});
mag_f_kopf_2077_1025_dors_s = std(mag1{1});

phi_f_kopf_2077_1025_dors=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];

bvec=[0,1,0];
for i=1:1025
    phi_f_kopf_2077_1025_dors(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

[~,norm1,mag1] = curry_dip_read('result_f_kopf_2099_1025_dors.dip',1025);

n_f_kopf_2099_1025_dors = mag1{1};

mag_f_kopf_2099_1025_dors_m = mean(mag1{1});
mag_f_kopf_2099_1025_dors_s = std(mag1{1});

phi_f_kopf_2099_1025_dors=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];

bvec=[0,1,0];
for i=1:1025
    phi_f_kopf_2099_1025_dors(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

[~,norm1,mag1] = curry_dip_read('result_f_fetus_1233_1025_sinis.dip',1025);

n_f_fetus_1233_1025_sinis = mag1{1};

mag_f_fetus_1233_1025_sinis_m = mean(mag1{1});
mag_f_fetus_1233_1025_sinis_s = std(mag1{1});

phi_f_fetus_1233_1025_sinis=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];
bvec=[1,0,0];
for i=1:1025
    phi_f_fetus_1233_1025_sinis(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

[~,norm1,mag1] = curry_dip_read('result_f_fetus_1233_1025_D3_sinis.dip',1025);

n_f_fetus_1233_1025_D3_sinis = mag1{1};

mag_f_fetus_1233_1025_D3_sinis_m = mean(mag1{1});
mag_f_fetus_1233_1025_D3_sinis_s = std(mag1{1});

phi_f_fetus_1233_1025_D3_sinis=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];
bvec=[1,0,0];
for i=1:1025
    phi_f_fetus_1233_1025_D3_sinis(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

[~,norm1,mag1] = curry_dip_read('result_f_fetus_1233_1025_D2_sinis.dip',1025);

n_f_fetus_1233_1025_D2_sinis = mag1{1};

mag_f_fetus_1233_1025_D2_sinis_m = mean(mag1{1});
mag_f_fetus_1233_1025_D2_sinis_s = std(mag1{1});

phi_f_fetus_1233_1025_D2_sinis=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];
bvec=[1,0,0];
for i=1:1025
    phi_f_fetus_1233_1025_D2_sinis(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

[~,norm1,mag1] = curry_dip_read('result_f_fetus_1655_1025_sinis.dip',1025);

n_f_fetus_1655_1025_sinis = mag1{1};

mag_f_fetus_1655_1025_sinis_m = mean(mag1{1});
mag_f_fetus_1655_1025_sinis_s = std(mag1{1});

phi_f_fetus_1655_1025_sinis=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];

bvec=[1,0,0];
for i=1:1025
    phi_f_fetus_1655_1025_sinis(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

[~,norm1,mag1] = curry_dip_read('result_f_fetus_2077_1025_sinis.dip',1025);

n_f_fetus_2077_1025_sinis = mag1{1};

mag_f_fetus_2077_1025_sinis_m = mean(mag1{1});
mag_f_fetus_2077_1025_sinis_s = std(mag1{1});

phi_f_fetus_2077_1025_sinis=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];

bvec=[1,0,0];
for i=1:1025
    phi_f_fetus_2077_1025_sinis(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

[~,norm1,mag1] = curry_dip_read('result_f_fetus_2099_1025_sinis.dip',1025);

n_f_fetus_2099_1025_sinis = mag1{1};

mag_f_fetus_2099_1025_sinis_m = mean(mag1{1});
mag_f_fetus_2099_1025_sinis_s = std(mag1{1});

phi_f_fetus_2099_1025_sinis=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];

bvec=[1,0,0];
for i=1:1025
    phi_f_fetus_2099_1025_sinis(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

[~,norm1,mag1] = curry_dip_read('result_f_kopf_1233_1025_sinis.dip',1025);

n_f_kopf_1233_1025_sinis = mag1{1};

mag_f_kopf_1233_1025_sinis_m = mean(mag1{1});
mag_f_kopf_1233_1025_sinis_s = std(mag1{1});

phi_f_kopf_1233_1025_sinis=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];

bvec=[1,0,0];
for i=1:1025
    phi_f_kopf_1233_1025_sinis(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

[~,norm1,mag1] = curry_dip_read('result_f_kopf_1655_1025_sinis.dip',1025);

n_f_kopf_1655_1025_sinis = mag1{1};

mag_f_kopf_1655_1025_sinis_m = mean(mag1{1});
mag_f_kopf_1655_1025_sinis_s = std(mag1{1});

phi_f_kopf_1655_1025_sinis=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];

bvec=[1,0,0];
for i=1:1025
    phi_f_kopf_1655_1025_sinis(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

[~,norm1,mag1] = curry_dip_read('result_f_kopf_2077_1025_sinis.dip',1025);

n_f_kopf_2077_1025_sinis = mag1{1};

mag_f_kopf_2077_1025_sinis_m = mean(mag1{1});
mag_f_kopf_2077_1025_sinis_s = std(mag1{1});

phi_f_kopf_2077_1025_sinis=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];

bvec=[1,0,0];
for i=1:1025
    phi_f_kopf_2077_1025_sinis(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

[loc1,norm1,mag1] = curry_dip_read('result_f_kopf_2099_1025_sinis.dip',1025);

n_f_kopf_2099_1025_sinis =mag1{1};

mag_f_kopf_2099_1025_sinis_m = mean(mag1{1});
mag_f_kopf_2099_1025_sinis_s = std(mag1{1});

phi_f_kopf_2099_1025_sinis=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];

bvec=[1,0,0];
for i=1:1025
    phi_f_kopf_2099_1025_sinis(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

phi_f_kopf_2099_1025_sinis_m = mean(phi_f_kopf_2099_1025_sinis);
phi_f_kopf_2099_1025_sinis_s = std(phi_f_kopf_2099_1025_sinis);

% figure;
% subplot(1,3,1);
% hist(phi_f_fetus_1233_1025_cran);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung cranial', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% subplot(1,3,2);
% hist(phi_f_fetus_1233_1025_dors);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung dorsal', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% subplot(1,3,3);
% hist(phi_f_fetus_1233_1025_sinis);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung sinistral', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% 
% figure;
% subplot(1,3,1);
% hist(phi_f_fetus_1233_1025_D3_cran);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung cranial', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% subplot(1,3,2);
% hist(phi_f_fetus_1233_1025_D3_dors);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung dorsal', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% subplot(1,3,3);
% hist(phi_f_fetus_1233_1025_D3_sinis);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung sinistral', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% 
% figure;
% subplot(1,3,1);
% hist(phi_f_fetus_1233_1025_D2_cran);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung cranial', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% subplot(1,3,2);
% hist(phi_f_fetus_1233_1025_D2_dors);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung dorsal', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% subplot(1,3,3);
% hist(phi_f_fetus_1233_1025_D2_sinis);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung sinistral', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% 
% figure;
% subplot(1,3,1);
% hist(phi_f_fetus_1655_1025_cran);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung cranial', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% subplot(1,3,2);
% hist(phi_f_fetus_1655_1025_dors);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung dorsal', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% subplot(1,3,3);
% hist(phi_f_fetus_1655_1025_sinis);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung sinistral', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% 
% figure;
% subplot(1,3,1);
% hist(phi_f_fetus_2077_1025_cran);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung cranial', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% subplot(1,3,2);
% hist(phi_f_fetus_2077_1025_dors);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung dorsal', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% subplot(1,3,3);
% hist(phi_f_fetus_2077_1025_sinis);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung sinistral', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% 
% figure;
% subplot(1,3,1);
% hist(phi_f_fetus_2099_1025_cran);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung cranial', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% subplot(1,3,2);
% hist(phi_f_fetus_2099_1025_dors);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung dorsal', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% subplot(1,3,3);
% hist(phi_f_fetus_2099_1025_sinis);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung sinistral', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% 
% figure;
% subplot(1,3,1);
% hist(phi_f_kopf_1233_1025_cran);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung cranial', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% subplot(1,3,2);
% hist(phi_f_kopf_1233_1025_dors);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung dorsal', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% subplot(1,3,3);
% hist(phi_f_kopf_1233_1025_sinis);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung sinistral', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% 
% figure;
% subplot(1,3,1);
% hist(phi_f_kopf_1655_1025_cran);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung cranial', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% subplot(1,3,2);
% hist(phi_f_kopf_1655_1025_dors);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung dorsal', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% subplot(1,3,3);
% hist(phi_f_kopf_1655_1025_sinis);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung sinistral', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% 
% figure;
% subplot(1,3,1);
% hist(phi_f_kopf_2077_1025_cran);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung cranial', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% subplot(1,3,2);
% hist(phi_f_kopf_2077_1025_dors);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung dorsal', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% subplot(1,3,3);
% hist(phi_f_kopf_2077_1025_sinis);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung sinistral', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% 
% figure;
% subplot(1,3,1);
% hist(phi_f_kopf_2099_1025_cran);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung cranial', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% subplot(1,3,2);
% hist(phi_f_kopf_2099_1025_dors);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung dorsal', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% subplot(1,3,3);
% hist(phi_f_kopf_2099_1025_sinis);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Orientierungsfehler, Referenzorientierung sinistral', 'interpreter', 'latex');
% xlabel('Orientierungsfehler in deg', 'interpreter', 'latex');
% 
% figure;
% subplot(1,3,1);
% hist(n_f_fetus_1233_1025_cran);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung cranial', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% subplot(1,3,2);
% hist(n_f_fetus_1233_1025_dors);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung dorsal', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% subplot(1,3,3);
% hist(n_f_fetus_1233_1025_sinis);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung sinistral', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% 
% figure;
% subplot(1,3,1);
% hist(n_f_fetus_1233_1025_D3_cran);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung cranial', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% subplot(1,3,2);
% hist(n_f_fetus_1233_1025_D3_dors);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung dorsal', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% subplot(1,3,3);
% hist(n_f_fetus_1233_1025_D3_sinis);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung sinistral', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% 
% figure;
% subplot(1,3,1);
% hist(n_f_fetus_1233_1025_D2_cran);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung cranial', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% subplot(1,3,2);
% hist(n_f_fetus_1233_1025_D2_dors);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung dorsal', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% subplot(1,3,3);
% hist(n_f_fetus_1233_1025_D2_sinis);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung sinistral', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% 
% figure;
% subplot(1,3,1);
% hist(n_f_fetus_1655_1025_cran);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung cranial', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% subplot(1,3,2);
% hist(n_f_fetus_1655_1025_dors);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung dorsal', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% subplot(1,3,3);
% hist(n_f_fetus_1655_1025_sinis);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung sinistral', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% 
% figure;
% subplot(1,3,1);
% hist(n_f_fetus_2077_1025_cran);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung cranial', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% subplot(1,3,2);
% hist(n_f_fetus_2077_1025_dors);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung dorsal', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% subplot(1,3,3);
% hist(n_f_fetus_2077_1025_sinis);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung sinistral', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% 
% figure;
% subplot(1,3,1);
% hist(n_f_fetus_2099_1025_cran);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung cranial', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% subplot(1,3,2);
% hist(n_f_fetus_2099_1025_dors);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung dorsal', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% subplot(1,3,3);
% hist(n_f_fetus_2099_1025_sinis);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung sinistral', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% 
% figure;
% subplot(1,3,1);
% hist(n_f_kopf_1233_1025_cran);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung cranial', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% subplot(1,3,2);
% hist(n_f_kopf_1233_1025_dors);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung dorsal', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% subplot(1,3,3);
% hist(n_f_kopf_1233_1025_sinis);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung sinistral', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% 
% figure;
% subplot(1,3,1);
% hist(n_f_kopf_1655_1025_cran);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung cranial', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% subplot(1,3,2);
% hist(n_f_kopf_1655_1025_dors);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung dorsal', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% subplot(1,3,3);
% hist(n_f_kopf_1655_1025_sinis);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung sinistral', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% 
% figure;
% subplot(1,3,1);
% hist(n_f_kopf_2077_1025_cran);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung cranial', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% subplot(1,3,2);
% hist(n_f_kopf_2077_1025_dors);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung dorsal', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% subplot(1,3,3);
% hist(n_f_kopf_2077_1025_sinis);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung sinistral', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% 
% figure;
% subplot(1,3,1);
% hist(n_f_kopf_2099_1025_cran);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung cranial', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% subplot(1,3,2);
% hist(n_f_kopf_2099_1025_dors);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung dorsal', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');
% subplot(1,3,3);
% hist(n_f_kopf_2099_1025_sinis);
% h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); h = findobj(gca,'Type','patch'); set(h,'FaceColor','black','EdgeColor','w'); title('Histogramm der Amplitudenfaktoren, Referenzorientierung sinistral', 'interpreter', 'latex');
% xlabel('Amplitudenfaktor', 'interpreter', 'latex');

% ohne obere Sensoren
% ...(:,1:56);
