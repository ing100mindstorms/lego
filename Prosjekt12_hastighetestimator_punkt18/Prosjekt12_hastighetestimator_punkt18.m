%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Prosjekt0X_.....
%
% Hensikten med programmet er ....  
% Følgende sensorer brukes.....
% Programmet beregner .....
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

lengde = 5;
radius = 5.6;

clear; close all               % Alltid lurt å rydde opp først
online=0;                      % Er du koplet til NXT eller ikke?
filename = 'P12_DataNavn.mat'; % Navnet på datafilen når online=0. 

P12_F1_InitializeNXT 
P12_F2_GetFirstMeasurement
while ~JoyMainSwitch
    P12_F3_GetNewMeasurement
    P12_F4_MathCalculations    
    P12_F5_CalculateAndSetMotorPower
    
    end
end

P12_F6_PlottData   % kan flyttes til etter while-løkka
P12_F7_CloseMotorsAndSensors




