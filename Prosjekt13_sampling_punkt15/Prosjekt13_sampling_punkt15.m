%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Prosjekt0X_.....
%
% Hensikten med programmet er ....  
% Følgende sensorer brukes.....
% Programmet beregner .....
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear; close all               % Alltid lurt å rydde opp først
online=1;                      % Er du koplet til NXT eller ikke?
filename = 'P13_Sampling2.mat'; % Navnet på datafilen når online=0. 

P13_F1_InitializeNXT 
P13_F2_GetFirstMeasurement
while ~JoyMainSwitch
    P13_F3_GetNewMeasurement
    P13_F4_MathCalculations    
    P13_F5_CalculateAndSetMotorPower
    if(Tid(k)>80)
        break
    end
end

P13_F6_PlottData   % kan flyttes til etter while-løkka
save('P13_Sampling2.mat','Tid','Lys')
P13_F7_CloseMotorsAndSensors




