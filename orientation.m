function [ angle ] = orientation( orig_vec, rec_vec )
%ORIENTATION angle between two vectors
%   ORIENTATION(O,R) returns the angle, in degrees, of the two vectors with real elements.

angle = acosd(dot(rec_vec,orig_vec)/(sqrt(sum(rec_vec.^2)*sum(orig_vec.^2))));
end

