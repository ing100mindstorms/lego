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
filename = 'P04_DataNavn.mat'; % Navnet p� datafilen n�r online=0. 

P04_F1_InitializeNXT 
P04_F2_GetFirstMeasurement
while ~JoyMainSwitch
    P04_F3_GetNewMeasurement
    P04_F4_MathCalculations    
    P04_F5_CalculateAndSetMotorPower
    P04_F6_PlottData   % kan flyttes til etter while-l�kka
    if Lys(k)> 620
        break
    end
end



P04_F7_CloseMotorsAndSensors




