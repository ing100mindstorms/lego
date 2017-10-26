%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Prosjekt0X_.....
%
% Hensikten med programmet er ....  
% F�lgende sensorer brukes.....
% Programmet beregner .....
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

lengde = 5;
radius = 5.6;

clear; close all               % Alltid lurt � rydde opp f�rst
online=0;                      % Er du koplet til NXT eller ikke?
filename = 'P12_DataNavn.mat'; % Navnet p� datafilen n�r online=0. 

P12_F1_InitializeNXT 
P12_F2_GetFirstMeasurement
while ~JoyMainSwitch
    P12_F3_GetNewMeasurement
    P12_F4_MathCalculations    
    P12_F5_CalculateAndSetMotorPower
    
    end
end

P12_F6_PlottData   % kan flyttes til etter while-l�kka
P12_F7_CloseMotorsAndSensors




