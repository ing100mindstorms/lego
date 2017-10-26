%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Prosjekt0X_.....
%
% Hensikten med programmet er ....  
% F�lgende sensorer brukes.....
% Programmet beregner .....
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Kp = 0.1; %Proposjonalitet forsterkning - Dvs hvor intenst PID skal korrigere
Ki = 0.0; %Integral forsterkning - Dvs hvor lenge PID skal v�re i "error mode" (hindrer offset)
Kd = 0.0; %Derivat forsterkning - Dvs hvor raskt PID skal reagere til nye verdier

clear; close all               % Alltid lurt � rydde opp f�rst
online=1;                      % Er du koplet til NXT eller ikke?
filename = 'P26_DataNavn.mat'; % Navnet p� datafilen n�r online=0. 

P26_F1_InitializeNXT 
P26_F2_GetFirstMeasurement
while ~JoyMainSwitch
    P26_F3_GetNewMeasurement
    P26_F4_MathCalculations    
    P26_F5_CalculateAndSetMotorPower
    P26_F6_PlottData   % kan flyttes til etter while-l�kka
    if Lys(k)> 620
        disp(HvorVinglete(end));
        break
    end
end



P26_F7_CloseMotorsAndSensors




