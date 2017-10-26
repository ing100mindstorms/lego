%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Prosjekt0X_.....
%
% Hensikten med programmet er ....  
% Følgende sensorer brukes.....
% Programmet beregner .....
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

lengde = 1.5;
radius = 2.8;

clear; close all               % Alltid lurt å rydde opp først
online=1;                      % Er du koplet til NXT eller ikke?
filename = 'P11_px300_power10.mat'; % Navnet på datafilen når online=0. 

P11_F1_InitializeNXT 
P11_F2_GetFirstMeasurement
while ~JoyMainSwitch
    P11_F3_GetNewMeasurement
    P11_F4_MathCalculations    
    P11_F5_CalculateAndSetMotorPower
    if(Tid(k) > 5)
        break
    end
end

P11_F6_PlottData   % kan flyttes til etter while-løkka
save('P11_px300_power10.mat','Tid','Lys','PosMotorB','PosMotorC')
P11_F7_CloseMotorsAndSensors
