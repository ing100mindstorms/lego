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
filename = 'P26_DataNavn.mat'; % Navnet p� datafilen n�r online=0. 

P26_F1_InitializeNXT 
P26_F2_GetFirstMeasurement
while ~JoyMainSwitch
    P26_F3_GetNewMeasurement
    P26_F4_MathCalculations    
    if Lys(k)> 600
        disp(HvorVinglete(end));
        break
    end
    P26_F5_CalculateAndSetMotorPower
    P26_F6_PlottData   % kan flyttes til etter while-l�kka
end


save('P26_Kp05.mat','Tid','Lys')
P26_F7_CloseMotorsAndSensors




