function [mag] = mag (meas, ref)

mag = sqrt (sum (meas.^2)/sum (ref.^2));
