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
filename = 'P11_DataNavn.mat'; % Navnet p� datafilen n�r online=0. 

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

P11_F6_PlottData   % kan flyttes til etter while-l�kka
P11_F7_CloseMotorsAndSensors




