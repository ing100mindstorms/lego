function [FilteredValue] = IIR_filter(Measurement,oldvalue,Alfa)
% Infinite Impulse Response filter

% LysF iltrert_IIR(k) = ?·Lys(k) + (1 ? ?)·LysF iltrert_IIR(k ? 1)
% Measurement=current measurement
% Oldvalue=previous filteredvalue
% Alfa is a value between 0 and 1 deciding how much it weighs last
% measurement

FilteredValue = Alfa*Measurement+(1-Alfa)*oldvalue;

end