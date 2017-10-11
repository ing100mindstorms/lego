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
filename = 'P02_DataNavn.mat'; % Navnet på datafilen når online=0. 

P02_F1_InitializeNXT 
P02_F2_GetFirstMeasurement
while ~JoyMainSwitch
    P02_F3_GetNewMeasurement
    P02_F4_MathCalculations    
    P02_F5_CalculateAndSetMotorPower
    P02_F6_PlottData   % kan flyttes til etter while-løkka 
end



P02_F7_CloseMotorsAndSensors




