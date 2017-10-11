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
filename = 'P0X_DataNavn.mat'; % Navnet på datafilen når online=0. 

P0X_F1_InitializeNXT 
P0X_F2_GetFirstMeasurement
while ~JoyMainSwitch
    P0X_F3_GetNewMeasurement
    P0X_F4_MathCalculations    
    P0X_F5_CalculateAndSetMotorPower
    P0X_F6_PlottData   % kan flyttes til etter while-løkka 
end
P0X_F7_CloseMotorsAndSensors




