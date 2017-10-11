function [Secant] = Derivation(FunctionValues, TimeStep)

%%%%
    Secant = (FunctionValues(1) - FunctionValues(2))/TimeStep;
end