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
filename = 'P13_Sampling.mat'; % Navnet p� datafilen n�r online=0. 

P13_F1_InitializeNXT 
P13_F2_GetFirstMeasurement
while ~JoyMainSwitch
    P13_F3_GetNewMeasurement
    P13_F4_MathCalculations    
    P13_F5_CalculateAndSetMotorPower
end

P12_F6_PlottData   % kan flyttes til etter while-l�kka
P12_F7_CloseMotorsAndSensors




