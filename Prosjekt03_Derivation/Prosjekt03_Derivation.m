%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Prosjekt0X_.....
%
% Hensikten med programmet er ....  
% F�lgende sensorer brukes.....
% Programmet beregner .....
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


clear; close all               % Alltid lurt � rydde opp f�rst
online=0;                      % Er du koplet til NXT eller ikke?
filename = 'P03_DataNavn.mat'; % Navnet p� datafilen n�r online=0. 

P03_F1_InitializeNXT 
P03_F2_GetFirstMeasurement
while ~JoyMainSwitch
    P03_F3_GetNewMeasurement
    P03_F4_MathCalculations    
    P03_F5_CalculateAndSetMotorPower
    P03_F6_PlottData   % kan flyttes til etter while-l�kka 
end
P03_F7_CloseMotorsAndSensors




