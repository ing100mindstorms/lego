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
filename = 'P11_DataNavn.mat'; % Navnet på datafilen når online=0. 

P11_F1_InitializeNXT 
P11_F2_GetFirstMeasurement
while ~JoyMainSwitch
    P11_F3_GetNewMeasurement
    P11_F4_MathCalculations    
    P11_F5_CalculateAndSetMotorPower
    if(Tid(k) > 10)
        break
    end
end

P11_F6_PlottData   % kan flyttes til etter while-løkka
P11_F7_CloseMotorsAndSensors




