function [  ] = plot_errorbar( X,Y,E,LineSpec )
%PLOT_ERRORBAR Summary of this function goes here
%   Detailed explanation goes here
hold on;
plot(X,Y,LineSpec);
stem(X,Y+E,LineSpec);
stem(X,Y-E,LineSpec);
end

