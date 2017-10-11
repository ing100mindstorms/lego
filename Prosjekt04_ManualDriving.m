%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Prosjekt0X_.....
%
% Hensikten med programmet er ....  
% F�lgende sensorer brukes.....
% Programmet beregner .....
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


clear; close all               % Alltid lurt � rydde opp f�rst
online=1;                      % Er du koplet til NXT eller ikke?
filename = 'P04_ManualDriving.mat'; % Navnet p� datafilen n�r online=0. 

P04_F1_InitializeNXT 
P04_F2_GetFirstMeasurement
while ~JoyMainSwitch
    P04_F3_GetNewMeasurement
    P04_F4_MathCalculations    
    P04_F5_CalculateAndSetMotorPower
    P04_F6_PlottData   % kan flyttes til etter while-l�kka 
end
P04_F7_CloseMotorsAndSensors




