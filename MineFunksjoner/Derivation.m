% Secant derivation
% Derivation(FunctionValues, TimeStep) use the
% following values of the discrete index k-1:
% - FunctionValues (the function values to be derivated)
% - TimeStep (time difference between discrete index k and k-1)
% to calculate the derivation value at discrete index k-1.
function [Secant] = Derivation(FunctionValues, TimeStep)
    Secant = (FunctionValues(2) - FunctionValues(1))/TimeStep;
end