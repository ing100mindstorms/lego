%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Prosjekt0X_.....
%
% Hensikten med programmet er ....  
% Følgende sensorer brukes.....
% Programmet beregner .....
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


clear; close all               % Alltid lurt å rydde opp først
online=0;                      % Er du koplet til NXT eller ikke?
filename = 'P04_DataNavn.mat'; % Navnet på datafilen når online=0. 

P04_F1_InitializeNXT 
P04_F2_GetFirstMeasurement
while ~JoyMainSwitch
    P04_F3_GetNewMeasurement
    P04_F4_MathCalculations    
    P04_F5_CalculateAndSetMotorPower
    P04_F6_PlottData   % kan flyttes til etter while-løkka
    if Lys(k)> 620
        break
    end
end



P04_F7_CloseMotorsAndSensors




