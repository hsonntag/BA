function [rdm] = rdm (meas, ref)

rdm = sqrt (sum ( (meas/(sqrt (dot (meas, meas))) - ref/(sqrt (dot (ref, ref)))).^2));
