   %> @file rdm.m
   %> @brief returns relative difference measure of two vectors
   % ======================================================================
   %> @brief RDM calculates the relative difference measure of two vectors
   %>
   %> RDM(M,R) returns the relative difference measure, a metrics for the change in topology, of two vectors with real elements.
   %>
   %> @param meas Measured vector with real elements
   %> @param ref Reference vector with real elements
   %>
   %> @retval rdm relative difference measure of the two given input vecotors
   % ======================================================================
function [rdm] = rdm (meas, ref)

rdm = sqrt (sum ( (meas/(sqrt (dot (meas, meas))) - ref/(sqrt (dot (ref, ref)))).^2));
