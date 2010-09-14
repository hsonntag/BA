   % ======================================================================
   %> @brief ORIENTATION calculates the angle between two vectors
   %>
   %> ORIENTATION(O,R) returns the angle, in degrees, of two vectors with real elements.
   %>
   %> @param orig_vec Original vector with real elements
   %> @param rec_vec Reconstructed vector with real elements
   %>
   %> @retval angle angle between the two given input vecotors in degrees
   % ======================================================================
function [ angle ] = orientation( orig_vec, rec_vec )
%ORIENTATION angle between two vectors
%   ORIENTATION(O,R) returns the angle, in degrees, of the two vectors with real elements.

angle = acosd(dot(rec_vec,orig_vec)/(sqrt(sum(rec_vec.^2)*sum(orig_vec.^2))));
end

