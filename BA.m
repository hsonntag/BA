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

format long
%printf('#m=1, S=0');
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

ccf1233_D3x_cran_v = var(ccf1233_D3x);
ccf1233_D3y_cran_v = var(ccf1233_D3y);
ccf1233_D3z_cran_v = var(ccf1233_D3z);
ccf1233_D2x_cran_v = var(ccf1233_D2x);
ccf1233_D2y_cran_v = var(ccf1233_D2y);
ccf1233_D2z_cran_v = var(ccf1233_D2z);
ccf1655x_cran_v    = var(ccf1655x);
ccf1655y_cran_v    = var(ccf1655y);
ccf1655z_cran_v    = var(ccf1655z);
ccf2077x_cran_v    = var(ccf2077x);
ccf2077y_cran_v    = var(ccf2077y);
ccf2077z_cran_v    = var(ccf2077z);
ccf2099x_cran_v    = var(ccf2099x);
ccf2099y_cran_v    = var(ccf2099y);
ccf2099z_cran_v    = var(ccf2099z);
cck1233x_cran_v    = var(cck1233x);
cck1233y_cran_v    = var(cck1233y);
cck1233z_cran_v    = var(cck1233z);
cck1655x_cran_v    = var(cck1655x);
cck1655y_cran_v    = var(cck1655y);
cck1655z_cran_v    = var(cck1655z);
cck2077x_cran_v    = var(cck2077x);
cck2077y_cran_v    = var(cck2077y);
cck2077z_cran_v    = var(cck2077z);
cck2099x_cran_v    = var(cck2099x);
cck2099y_cran_v    = var(cck2099y);
cck2099z_cran_v    = var(cck2099z);
cckk1655x_cran_v   = var(cckk1655x);
cckk1655y_cran_v   = var(cckk1655y);
cckk1655z_cran_v   = var(cckk1655z);
cckk2077x_cran_v   = var(cckk2077x);
cckk2077y_cran_v   = var(cckk2077y);
cckk2077z_cran_v   = var(cckk2077z);
cckk2099x_cran_v   = var(cckk2099x);
cckk2099y_cran_v   = var(cckk2099y);
cckk2099z_cran_v   = var(cckk2099z);

[1.1   ccf1233_D3x_cran_m ccf1233_D3x_cran_v;
1.2   ccf1233_D3y_cran_m ccf1233_D3y_cran_v;
1.3   ccf1233_D3z_cran_m ccf1233_D3z_cran_v;
2.1   ccf1233_D2x_cran_m ccf1233_D2x_cran_v;
2.2   ccf1233_D2y_cran_m ccf1233_D2y_cran_v;
2.3   ccf1233_D2z_cran_m ccf1233_D2z_cran_v;
3.1   ccf1655x_cran_m    ccf1655x_cran_v;
3.2   ccf1655y_cran_m    ccf1655y_cran_v;
3.3   ccf1655z_cran_m    ccf1655z_cran_v;
4.1   ccf2077x_cran_m    ccf2077x_cran_v;
4.2   ccf2077y_cran_m    ccf2077y_cran_v;
4.3   ccf2077z_cran_m    ccf2077z_cran_v;
5.1   ccf2099x_cran_m    ccf2099x_cran_v;
5.2   ccf2099y_cran_m    ccf2099y_cran_v;
5.3   ccf2099z_cran_m    ccf2099z_cran_v;
6.1   cck1233x_cran_m    cck1233x_cran_v;
6.2   cck1233y_cran_m    cck1233y_cran_v;
6.3   cck1233z_cran_m    cck1233z_cran_v;
7.1   cck1655x_cran_m    cck1655x_cran_v;
7.2   cck1655y_cran_m    cck1655y_cran_v;
7.3   cck1655z_cran_m    cck1655z_cran_v;
8.1   cck2077x_cran_m    cck2077x_cran_v;
8.2   cck2077y_cran_m    cck2077y_cran_v;
8.3   cck2077z_cran_m    cck2077z_cran_v;
9.1   cck2099x_cran_m    cck2099x_cran_v;
9.2   cck2099y_cran_m    cck2099y_cran_v;
9.3   cck2099z_cran_m    cck2099z_cran_v;
10.1   cckk1655x_cran_m  cckk1655x_cran_v;
10.2   cckk1655y_cran_m  cckk1655y_cran_v;
10.3   cckk1655z_cran_m  cckk1655z_cran_v;
11.1   cckk2077x_cran_m  cckk2077x_cran_v;
11.2   cckk2077y_cran_m  cckk2077y_cran_v;
11.3   cckk2077z_cran_m  cckk2077z_cran_v;
12.1   cckk2099x_cran_m  cckk2099x_cran_v;
12.2   cckk2099y_cran_m  cckk2099y_cran_v;
12.3   cckk2099z_cran_m  cckk2099z_cran_v]

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

ampf1233_D3x_cran_v = var(ampf1233_D3x);
ampf1233_D3y_cran_v = var(ampf1233_D3y);
ampf1233_D3z_cran_v = var(ampf1233_D3z);
ampf1233_D2x_cran_v = var(ampf1233_D2x);
ampf1233_D2y_cran_v = var(ampf1233_D2y);
ampf1233_D2z_cran_v = var(ampf1233_D2z);
ampf1655x_cran_v    = var(ampf1655x);
ampf1655y_cran_v    = var(ampf1655y);
ampf1655z_cran_v    = var(ampf1655z);
ampf2077x_cran_v    = var(ampf2077x);
ampf2077y_cran_v    = var(ampf2077y);
ampf2077z_cran_v    = var(ampf2077z);
ampf2099x_cran_v    = var(ampf2099x);
ampf2099y_cran_v    = var(ampf2099y);
ampf2099z_cran_v    = var(ampf2099z);
ampk1233x_cran_v    = var(ampk1233x);
ampk1233y_cran_v    = var(ampk1233y);
ampk1233z_cran_v    = var(ampk1233z);
ampk1655x_cran_v    = var(ampk1655x);
ampk1655y_cran_v    = var(ampk1655y);
ampk1655z_cran_v    = var(ampk1655z);
ampk2077x_cran_v    = var(ampk2077x);
ampk2077y_cran_v    = var(ampk2077y);
ampk2077z_cran_v    = var(ampk2077z);
ampk2099x_cran_v    = var(ampk2099x);
ampk2099y_cran_v    = var(ampk2099y);
ampk2099z_cran_v    = var(ampk2099z);
ampkk1655x_cran_v   = var(ampkk1655x);
ampkk1655y_cran_v   = var(ampkk1655y);
ampkk1655z_cran_v   = var(ampkk1655z);
ampkk2077x_cran_v   = var(ampkk2077x);
ampkk2077y_cran_v   = var(ampkk2077y);
ampkk2077z_cran_v   = var(ampkk2077z);
ampkk2099x_cran_v   = var(ampkk2099x);
ampkk2099y_cran_v   = var(ampkk2099y);
ampkk2099z_cran_v   = var(ampkk2099z);

[1.1   ampf1233_D3x_cran_m ampf1233_D3x_cran_v;
1.2   ampf1233_D3y_cran_m ampf1233_D3y_cran_v;
1.3   ampf1233_D3z_cran_m ampf1233_D3z_cran_v;
2.1   ampf1233_D2x_cran_m ampf1233_D2x_cran_v;
2.2   ampf1233_D2y_cran_m ampf1233_D2y_cran_v;
2.3   ampf1233_D2z_cran_m ampf1233_D2z_cran_v;
3.1   ampf1655x_cran_m    ampf1655x_cran_v;
3.2   ampf1655y_cran_m    ampf1655y_cran_v;
3.3   ampf1655z_cran_m    ampf1655z_cran_v;
4.1   ampf2077x_cran_m    ampf2077x_cran_v;
4.2   ampf2077y_cran_m    ampf2077y_cran_v;
4.3   ampf2077z_cran_m    ampf2077z_cran_v;
5.1   ampf2099x_cran_m    ampf2099x_cran_v;
5.2   ampf2099y_cran_m    ampf2099y_cran_v;
5.3   ampf2099z_cran_m    ampf2099z_cran_v;
6.1   ampk1233x_cran_m    ampk1233x_cran_v;
6.2   ampk1233y_cran_m    ampk1233y_cran_v;
6.3   ampk1233z_cran_m    ampk1233z_cran_v;
7.1   ampk1655x_cran_m    ampk1655x_cran_v;
7.2   ampk1655y_cran_m    ampk1655y_cran_v;
7.3   ampk1655z_cran_m    ampk1655z_cran_v;
8.1   ampk2077x_cran_m    ampk2077x_cran_v;
8.2   ampk2077y_cran_m    ampk2077y_cran_v;
8.3   ampk2077z_cran_m    ampk2077z_cran_v;
9.1   ampk2099x_cran_m    ampk2099x_cran_v;
9.2   ampk2099y_cran_m    ampk2099y_cran_v;
9.3   ampk2099z_cran_m    ampk2099z_cran_v;
10.1   ampkk1655x_cran_m  ampkk1655x_cran_v;
10.2   ampkk1655y_cran_m  ampkk1655y_cran_v;
10.3   ampkk1655z_cran_m  ampkk1655z_cran_v;
11.1   ampkk2077x_cran_m  ampkk2077x_cran_v;
11.2   ampkk2077y_cran_m  ampkk2077y_cran_v;
11.3   ampkk2077z_cran_m  ampkk2077z_cran_v;
12.1   ampkk2099x_cran_m  ampkk2099x_cran_v;
12.2   ampkk2099y_cran_m  ampkk2099y_cran_v;
12.3   ampkk2099z_cran_m  ampkk2099z_cran_v]

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

%printf('#m=2, S=0');

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

%CC=[ccf1233_D3x_m ccf1233_D3y_m ccf1233_D3z_m;
%    ccf1233_D2x_m ccf1233_D2y_m ccf1233_D2z_m;
%    ccf1655x_m ccf1655y_m ccf1655z_m;
%    ccf2077x_m ccf2077y_m ccf2077z_m;
%    ccf2099x_m ccf2099y_m ccf2099z_m;
%    cck1233x_m cck1233y_m cck1233z_m;
%    cck1655x_m cck1655y_m cck1655z_m;
%    cck2077x_m cck2077y_m cck2077z_m;
%    cck2099x_m cck2099y_m cck2099z_m;
%    cckk1655x_m cckk1655y_m cckk1655z_m;
%    cckk2077x_m cckk2077y_m cckk2077z_m;
%    cckk2099x_m cckk2099y_m cckk2099z_m]

ccf1233_D3x_dors_v = var(ccf1233_D3x);
ccf1233_D3y_dors_v = var(ccf1233_D3y);
ccf1233_D3z_dors_v = var(ccf1233_D3z);
ccf1233_D2x_dors_v = var(ccf1233_D2x);
ccf1233_D2y_dors_v = var(ccf1233_D2y);
ccf1233_D2z_dors_v = var(ccf1233_D2z);
ccf1655x_dors_v    = var(ccf1655x);
ccf1655y_dors_v    = var(ccf1655y);
ccf1655z_dors_v    = var(ccf1655z);
ccf2077x_dors_v    = var(ccf2077x);
ccf2077y_dors_v    = var(ccf2077y);
ccf2077z_dors_v    = var(ccf2077z);
ccf2099x_dors_v    = var(ccf2099x);
ccf2099y_dors_v    = var(ccf2099y);
ccf2099z_dors_v    = var(ccf2099z);
cck1233x_dors_v    = var(cck1233x);
cck1233y_dors_v    = var(cck1233y);
cck1233z_dors_v    = var(cck1233z);
cck1655x_dors_v    = var(cck1655x);
cck1655y_dors_v    = var(cck1655y);
cck1655z_dors_v    = var(cck1655z);
cck2077x_dors_v    = var(cck2077x);
cck2077y_dors_v    = var(cck2077y);
cck2077z_dors_v    = var(cck2077z);
cck2099x_dors_v    = var(cck2099x);
cck2099y_dors_v    = var(cck2099y);
cck2099z_dors_v    = var(cck2099z);
cckk1655x_dors_v   = var(cckk1655x);
cckk1655y_dors_v   = var(cckk1655y);
cckk1655z_dors_v   = var(cckk1655z);
cckk2077x_dors_v   = var(cckk2077x);
cckk2077y_dors_v   = var(cckk2077y);
cckk2077z_dors_v   = var(cckk2077z);
cckk2099x_dors_v   = var(cckk2099x);
cckk2099y_dors_v   = var(cckk2099y);
cckk2099z_dors_v   = var(cckk2099z);

[1.1   ccf1233_D3x_dors_m ccf1233_D3x_dors_v;
1.2   ccf1233_D3y_dors_m ccf1233_D3y_dors_v;
1.3   ccf1233_D3z_dors_m ccf1233_D3z_dors_v;
2.1   ccf1233_D2x_dors_m ccf1233_D2x_dors_v;
2.2   ccf1233_D2y_dors_m ccf1233_D2y_dors_v;
2.3   ccf1233_D2z_dors_m ccf1233_D2z_dors_v;
3.1   ccf1655x_dors_m    ccf1655x_dors_v;
3.2   ccf1655y_dors_m    ccf1655y_dors_v;
3.3   ccf1655z_dors_m    ccf1655z_dors_v;
4.1   ccf2077x_dors_m    ccf2077x_dors_v;
4.2   ccf2077y_dors_m    ccf2077y_dors_v;
4.3   ccf2077z_dors_m    ccf2077z_dors_v;
5.1   ccf2099x_dors_m    ccf2099x_dors_v;
5.2   ccf2099y_dors_m    ccf2099y_dors_v;
5.3   ccf2099z_dors_m    ccf2099z_dors_v;
6.1   cck1233x_dors_m    cck1233x_dors_v;
6.2   cck1233y_dors_m    cck1233y_dors_v;
6.3   cck1233z_dors_m    cck1233z_dors_v;
7.1   cck1655x_dors_m    cck1655x_dors_v;
7.2   cck1655y_dors_m    cck1655y_dors_v;
7.3   cck1655z_dors_m    cck1655z_dors_v;
8.1   cck2077x_dors_m    cck2077x_dors_v;
8.2   cck2077y_dors_m    cck2077y_dors_v;
8.3   cck2077z_dors_m    cck2077z_dors_v;
9.1   cck2099x_dors_m    cck2099x_dors_v;
9.2   cck2099y_dors_m    cck2099y_dors_v;
9.3   cck2099z_dors_m    cck2099z_dors_v;
10.1   cckk1655x_dors_m  cckk1655x_dors_v;
10.2   cckk1655y_dors_m  cckk1655y_dors_v;
10.3   cckk1655z_dors_m  cckk1655z_dors_v;
11.1   cckk2077x_dors_m  cckk2077x_dors_v;
11.2   cckk2077y_dors_m  cckk2077y_dors_v;
11.3   cckk2077z_dors_m  cckk2077z_dors_v;
12.1   cckk2099x_dors_m  cckk2099x_dors_v;
12.2   cckk2099y_dors_m  cckk2099y_dors_v;
12.3   cckk2099z_dors_m  cckk2099z_dors_v]

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

ampf1233_D3x_dors_v = var(ampf1233_D3x);
ampf1233_D3y_dors_v = var(ampf1233_D3y);
ampf1233_D3z_dors_v = var(ampf1233_D3z);
ampf1233_D2x_dors_v = var(ampf1233_D2x);
ampf1233_D2y_dors_v = var(ampf1233_D2y);
ampf1233_D2z_dors_v = var(ampf1233_D2z);
ampf1655x_dors_v    = var(ampf1655x);
ampf1655y_dors_v    = var(ampf1655y);
ampf1655z_dors_v    = var(ampf1655z);
ampf2077x_dors_v    = var(ampf2077x);
ampf2077y_dors_v    = var(ampf2077y);
ampf2077z_dors_v    = var(ampf2077z);
ampf2099x_dors_v    = var(ampf2099x);
ampf2099y_dors_v    = var(ampf2099y);
ampf2099z_dors_v    = var(ampf2099z);
ampk1233x_dors_v    = var(ampk1233x);
ampk1233y_dors_v    = var(ampk1233y);
ampk1233z_dors_v    = var(ampk1233z);
ampk1655x_dors_v    = var(ampk1655x);
ampk1655y_dors_v    = var(ampk1655y);
ampk1655z_dors_v    = var(ampk1655z);
ampk2077x_dors_v    = var(ampk2077x);
ampk2077y_dors_v    = var(ampk2077y);
ampk2077z_dors_v    = var(ampk2077z);
ampk2099x_dors_v    = var(ampk2099x);
ampk2099y_dors_v    = var(ampk2099y);
ampk2099z_dors_v    = var(ampk2099z);
ampkk1655x_dors_v   = var(ampkk1655x);
ampkk1655y_dors_v   = var(ampkk1655y);
ampkk1655z_dors_v   = var(ampkk1655z);
ampkk2077x_dors_v   = var(ampkk2077x);
ampkk2077y_dors_v   = var(ampkk2077y);
ampkk2077z_dors_v   = var(ampkk2077z);
ampkk2099x_dors_v   = var(ampkk2099x);
ampkk2099y_dors_v   = var(ampkk2099y);
ampkk2099z_dors_v   = var(ampkk2099z);

[1.1   ampf1233_D3x_dors_m ampf1233_D3x_dors_v;
1.2   ampf1233_D3y_dors_m ampf1233_D3y_dors_v;
1.3   ampf1233_D3z_dors_m ampf1233_D3z_dors_v;
2.1   ampf1233_D2x_dors_m ampf1233_D2x_dors_v;
2.2   ampf1233_D2y_dors_m ampf1233_D2y_dors_v;
2.3   ampf1233_D2z_dors_m ampf1233_D2z_dors_v;
3.1   ampf1655x_dors_m    ampf1655x_dors_v;
3.2   ampf1655y_dors_m    ampf1655y_dors_v;
3.3   ampf1655z_dors_m    ampf1655z_dors_v;
4.1   ampf2077x_dors_m    ampf2077x_dors_v;
4.2   ampf2077y_dors_m    ampf2077y_dors_v;
4.3   ampf2077z_dors_m    ampf2077z_dors_v;
5.1   ampf2099x_dors_m    ampf2099x_dors_v;
5.2   ampf2099y_dors_m    ampf2099y_dors_v;
5.3   ampf2099z_dors_m    ampf2099z_dors_v;
6.1   ampk1233x_dors_m    ampk1233x_dors_v;
6.2   ampk1233y_dors_m    ampk1233y_dors_v;
6.3   ampk1233z_dors_m    ampk1233z_dors_v;
7.1   ampk1655x_dors_m    ampk1655x_dors_v;
7.2   ampk1655y_dors_m    ampk1655y_dors_v;
7.3   ampk1655z_dors_m    ampk1655z_dors_v;
8.1   ampk2077x_dors_m    ampk2077x_dors_v;
8.2   ampk2077y_dors_m    ampk2077y_dors_v;
8.3   ampk2077z_dors_m    ampk2077z_dors_v;
9.1   ampk2099x_dors_m    ampk2099x_dors_v;
9.2   ampk2099y_dors_m    ampk2099y_dors_v;
9.3   ampk2099z_dors_m    ampk2099z_dors_v;
10.1   ampkk1655x_dors_m  ampkk1655x_dors_v;
10.2   ampkk1655y_dors_m  ampkk1655y_dors_v;
10.3   ampkk1655z_dors_m  ampkk1655z_dors_v;
11.1   ampkk2077x_dors_m  ampkk2077x_dors_v;
11.2   ampkk2077y_dors_m  ampkk2077y_dors_v;
11.3   ampkk2077z_dors_m  ampkk2077z_dors_v;
12.1   ampkk2099x_dors_m  ampkk2099x_dors_v;
12.2   ampkk2099y_dors_m  ampkk2099y_dors_v;
12.3   ampkk2099z_dors_m  ampkk2099z_dors_v]

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

%printf('#m=3, S=0');

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

 ccf1233_D3x_sinis_v = var(ccf1233_D3x);
 ccf1233_D3y_sinis_v = var(ccf1233_D3y);
 ccf1233_D3z_sinis_v = var(ccf1233_D3z);
 ccf1233_D2x_sinis_v = var(ccf1233_D2x);
 ccf1233_D2y_sinis_v = var(ccf1233_D2y);
 ccf1233_D2z_sinis_v = var(ccf1233_D2z);
 ccf1655x_sinis_v    = var(ccf1655x);
 ccf1655y_sinis_v    = var(ccf1655y);
 ccf1655z_sinis_v    = var(ccf1655z);
 ccf2077x_sinis_v    = var(ccf2077x);
 ccf2077y_sinis_v    = var(ccf2077y);
 ccf2077z_sinis_v    = var(ccf2077z);
 ccf2099x_sinis_v    = var(ccf2099x);
 ccf2099y_sinis_v    = var(ccf2099y);
 ccf2099z_sinis_v    = var(ccf2099z);
 cck1233x_sinis_v    = var(cck1233x);
 cck1233y_sinis_v    = var(cck1233y);
 cck1233z_sinis_v    = var(cck1233z);
 cck1655x_sinis_v    = var(cck1655x);
 cck1655y_sinis_v    = var(cck1655y);
 cck1655z_sinis_v    = var(cck1655z);
 cck2077x_sinis_v    = var(cck2077x);
 cck2077y_sinis_v    = var(cck2077y);
 cck2077z_sinis_v    = var(cck2077z);
 cck2099x_sinis_v    = var(cck2099x);
 cck2099y_sinis_v    = var(cck2099y);
 cck2099z_sinis_v    = var(cck2099z);
 cckk1655x_sinis_v   = var(cckk1655x);
 cckk1655y_sinis_v   = var(cckk1655y);
 cckk1655z_sinis_v   = var(cckk1655z);
 cckk2077x_sinis_v   = var(cckk2077x);
 cckk2077y_sinis_v   = var(cckk2077y);
 cckk2077z_sinis_v   = var(cckk2077z);
 cckk2099x_sinis_v   = var(cckk2099x);
 cckk2099y_sinis_v   = var(cckk2099y);
 cckk2099z_sinis_v   = var(cckk2099z);

[1.1   ccf1233_D3x_sinis_m ccf1233_D3x_sinis_v;
 1.2   ccf1233_D3y_sinis_m ccf1233_D3y_sinis_v;
 1.3   ccf1233_D3z_sinis_m ccf1233_D3z_sinis_v;
 2.1   ccf1233_D2x_sinis_m ccf1233_D2x_sinis_v;
 2.2   ccf1233_D2y_sinis_m ccf1233_D2y_sinis_v;
 2.3   ccf1233_D2z_sinis_m ccf1233_D2z_sinis_v;
 3.1   ccf1655x_sinis_m    ccf1655x_sinis_v;
 3.2   ccf1655y_sinis_m    ccf1655y_sinis_v;
 3.3   ccf1655z_sinis_m    ccf1655z_sinis_v;
 4.1   ccf2077x_sinis_m    ccf2077x_sinis_v;
 4.2   ccf2077y_sinis_m    ccf2077y_sinis_v;
 4.3   ccf2077z_sinis_m    ccf2077z_sinis_v;
 5.1   ccf2099x_sinis_m    ccf2099x_sinis_v;
 5.2   ccf2099y_sinis_m    ccf2099y_sinis_v;
 5.3   ccf2099z_sinis_m    ccf2099z_sinis_v;
 6.1   cck1233x_sinis_m    cck1233x_sinis_v;
 6.2   cck1233y_sinis_m    cck1233y_sinis_v;
 6.3   cck1233z_sinis_m    cck1233z_sinis_v;
 7.1   cck1655x_sinis_m    cck1655x_sinis_v;
 7.2   cck1655y_sinis_m    cck1655y_sinis_v;
 7.3   cck1655z_sinis_m    cck1655z_sinis_v;
 8.1   cck2077x_sinis_m    cck2077x_sinis_v;
 8.2   cck2077y_sinis_m    cck2077y_sinis_v;
 8.3   cck2077z_sinis_m    cck2077z_sinis_v;
 9.1   cck2099x_sinis_m    cck2099x_sinis_v;
 9.2   cck2099y_sinis_m    cck2099y_sinis_v;
 9.3   cck2099z_sinis_m    cck2099z_sinis_v;
 10.1   cckk1655x_sinis_m  cckk1655x_sinis_v;
 10.2   cckk1655y_sinis_m  cckk1655y_sinis_v;
 10.3   cckk1655z_sinis_m  cckk1655z_sinis_v;
 11.1   cckk2077x_sinis_m  cckk2077x_sinis_v;
 11.2   cckk2077y_sinis_m  cckk2077y_sinis_v;
 11.3   cckk2077z_sinis_m  cckk2077z_sinis_v;
 12.1   cckk2099x_sinis_m  cckk2099x_sinis_v;
 12.2   cckk2099y_sinis_m  cckk2099y_sinis_v;
 12.3   cckk2099z_sinis_m  cckk2099z_sinis_v]

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

 ampf1233_D3x_sinis_v = var(ampf1233_D3x);
 ampf1233_D3y_sinis_v = var(ampf1233_D3y);
 ampf1233_D3z_sinis_v = var(ampf1233_D3z);
 ampf1233_D2x_sinis_v = var(ampf1233_D2x);
 ampf1233_D2y_sinis_v = var(ampf1233_D2y);
 ampf1233_D2z_sinis_v = var(ampf1233_D2z);
 ampf1655x_sinis_v    = var(ampf1655x);
 ampf1655y_sinis_v    = var(ampf1655y);
 ampf1655z_sinis_v    = var(ampf1655z);
 ampf2077x_sinis_v    = var(ampf2077x);
 ampf2077y_sinis_v    = var(ampf2077y);
 ampf2077z_sinis_v    = var(ampf2077z);
 ampf2099x_sinis_v    = var(ampf2099x);
 ampf2099y_sinis_v    = var(ampf2099y);
 ampf2099z_sinis_v    = var(ampf2099z);
 ampk1233x_sinis_v    = var(ampk1233x);
 ampk1233y_sinis_v    = var(ampk1233y);
 ampk1233z_sinis_v    = var(ampk1233z);
 ampk1655x_sinis_v    = var(ampk1655x);
 ampk1655y_sinis_v    = var(ampk1655y);
 ampk1655z_sinis_v    = var(ampk1655z);
 ampk2077x_sinis_v    = var(ampk2077x);
 ampk2077y_sinis_v    = var(ampk2077y);
 ampk2077z_sinis_v    = var(ampk2077z);
 ampk2099x_sinis_v    = var(ampk2099x);
 ampk2099y_sinis_v    = var(ampk2099y);
 ampk2099z_sinis_v    = var(ampk2099z);
 ampkk1655x_sinis_v   = var(ampkk1655x);
 ampkk1655y_sinis_v   = var(ampkk1655y);
 ampkk1655z_sinis_v   = var(ampkk1655z);
 ampkk2077x_sinis_v   = var(ampkk2077x);
 ampkk2077y_sinis_v   = var(ampkk2077y);
 ampkk2077z_sinis_v   = var(ampkk2077z);
 ampkk2099x_sinis_v   = var(ampkk2099x);
 ampkk2099y_sinis_v   = var(ampkk2099y);
 ampkk2099z_sinis_v   = var(ampkk2099z);

[1.1   ampf1233_D3x_sinis_m ampf1233_D3x_sinis_v;
 1.2   ampf1233_D3y_sinis_m ampf1233_D3y_sinis_v;
 1.3   ampf1233_D3z_sinis_m ampf1233_D3z_sinis_v;
 2.1   ampf1233_D2x_sinis_m ampf1233_D2x_sinis_v;
 2.2   ampf1233_D2y_sinis_m ampf1233_D2y_sinis_v;
 2.3   ampf1233_D2z_sinis_m ampf1233_D2z_sinis_v;
 3.1   ampf1655x_sinis_m    ampf1655x_sinis_v;
 3.2   ampf1655y_sinis_m    ampf1655y_sinis_v;
 3.3   ampf1655z_sinis_m    ampf1655z_sinis_v;
 4.1   ampf2077x_sinis_m    ampf2077x_sinis_v;
 4.2   ampf2077y_sinis_m    ampf2077y_sinis_v;
 4.3   ampf2077z_sinis_m    ampf2077z_sinis_v;
 5.1   ampf2099x_sinis_m    ampf2099x_sinis_v;
 5.2   ampf2099y_sinis_m    ampf2099y_sinis_v;
 5.3   ampf2099z_sinis_m    ampf2099z_sinis_v;
 6.1   ampk1233x_sinis_m    ampk1233x_sinis_v;
 6.2   ampk1233y_sinis_m    ampk1233y_sinis_v;
 6.3   ampk1233z_sinis_m    ampk1233z_sinis_v;
 7.1   ampk1655x_sinis_m    ampk1655x_sinis_v;
 7.2   ampk1655y_sinis_m    ampk1655y_sinis_v;
 7.3   ampk1655z_sinis_m    ampk1655z_sinis_v;
 8.1   ampk2077x_sinis_m    ampk2077x_sinis_v;
 8.2   ampk2077y_sinis_m    ampk2077y_sinis_v;
 8.3   ampk2077z_sinis_m    ampk2077z_sinis_v;
 9.1   ampk2099x_sinis_m    ampk2099x_sinis_v;
 9.2   ampk2099y_sinis_m    ampk2099y_sinis_v;
 9.3   ampk2099z_sinis_m    ampk2099z_sinis_v;
 10.1   ampkk1655x_sinis_m  ampkk1655x_sinis_v;
 10.2   ampkk1655y_sinis_m  ampkk1655y_sinis_v;
 10.3   ampkk1655z_sinis_m  ampkk1655z_sinis_v;
 11.1   ampkk2077x_sinis_m  ampkk2077x_sinis_v;
 11.2   ampkk2077y_sinis_m  ampkk2077y_sinis_v;
 11.3   ampkk2077z_sinis_m  ampkk2077z_sinis_v;
 12.1   ampkk2099x_sinis_m  ampkk2099x_sinis_v;
 12.2   ampkk2099y_sinis_m  ampkk2099y_sinis_v;
 12.3   ampkk2099z_sinis_m  ampkk2099z_sinis_v]

[loc1,norm1,mag1] = curry_dip_read('result_fetus_2077_1025_sinis_x.dip',1025);

n = hist(mag1{1});

mean(mag1{1})
var(mag1{1})

phi=zeros(1025,1);
avec = [norm1{1,1}, norm1{1,2}, norm1{1,3}];
probe = avec(1,:);
bvec=[1,0,0];
for i=1:1025
phi(i)=acosd(dot(avec(i,:),bvec)/(sqrt(sum(avec(i,:).^2)*sum(bvec.^2))));
end

% ohne obere Sensoren
fetus_2099x=fetus_2099x(:,1:56);
fetus_2099y=fetus_2099y(:,1:56);
fetus_2099z=fetus_2099z(:,1:56);

fetus_2077x=fetus_2077x(:,1:56);
fetus_2077y=fetus_2077y(:,1:56);
fetus_2077z=fetus_2077z(:,1:56);

fetus_1655x=fetus_1655x(:,1:56);
fetus_1655y=fetus_1655y(:,1:56);
fetus_1655z=fetus_1655z(:,1:56);

fetus_1233x=fetus_1233x(:,1:56);
fetus_1233y=fetus_1233y(:,1:56);
fetus_1233z=fetus_1233z(:,1:56);

kopf_2099x=kopf_2099x(:,1:56);
kopf_2099y=kopf_2099y(:,1:56);
kopf_2099z=kopf_2099z(:,1:56);

kopf_2077x=kopf_2077x(:,1:56);
kopf_2077y=kopf_2077y(:,1:56);
kopf_2077z=kopf_2077z(:,1:56);

kopf_1655x=kopf_1655x(:,1:56);
kopf_1655y=kopf_1655y(:,1:56);
kopf_1655z=kopf_1655z(:,1:56);

kopf_1233x=kopf_1233x(:,1:56);
kopf_1233y=kopf_1233y(:,1:56);
kopf_1233z=kopf_1233z(:,1:56);

%ccf1233_D3_m = mean (ccf1233_D3x_cran_m, ccf1233_D3y_cran_m, ccf1233_D3z_cran_m, ccf1233_D3x_dors_m, ccf1233_D3y_dors_m, ccf1233_D3z_dors_m, ccf1233_D3x_sinis_m, ccf1233_D3y_sinis_m, ccf1233_D3z_sinis_m)
