%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Prosjekt0X_.....
%
% Hensikten med programmet er ....  
% Følgende sensorer brukes.....
% Programmet beregner .....
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


clear; close all               % Alltid lurt å rydde opp først
online=1;                      % Er du koplet til NXT eller ikke?
filename = 'P04_ManualDriving.mat'; % Navnet på datafilen når online=0. 

P04_F1_InitializeNXT 
P04_F2_GetFirstMeasurement
while ~JoyMainSwitch
    P04_F3_GetNewMeasurement
    P04_F4_MathCalculations    
    P04_F5_CalculateAndSetMotorPower
    P04_F6_PlottData   % kan flyttes til etter while-løkka 
end
P04_F7_CloseMotorsAndSensors




