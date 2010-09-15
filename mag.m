   %> @file mag.m
   %> @brief returns magnitude ratio of two vectors
   % ======================================================================
   %> @brief MAG calculates the ratio of magnitude between two vectors
   %>
   %> MAG(M,R) returns the ratio of magnitude, a metrics for the change in magnitude, between two vectors with real elements.
   %>
   %> @param meas Measured vector with real elements
   %> @param ref Reference vector with real elements
   %>
   %> @retval mag magnitude ratio of the two given input vecotors
   % ======================================================================
function [mag] = mag (meas, ref)

mag = sqrt (sum (meas.^2)/sum (ref.^2));
