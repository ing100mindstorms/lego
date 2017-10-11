function [FilteredValue] = FIR_filter(Measurement,NoOfMeas)

% Finite Impulse Response filter.

% LysFiltrert_FIR(k) = 1/m*sum(Lys((k+1-m):k))
% Measurement=current measurementvector
% NoOfMeas = the amount of old values to use for filtering

FilteredValue = (1/NoOfMeas)*sum(Measurement);
end

    