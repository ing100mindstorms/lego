%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% P0X_F5_CalculateAndSetMotorPower.m
% 
% Beregner hvordan motorene skal bevege seg
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
skalering = 25/2^15;  % konvertering fra 2^15 til 100%
a = 0.11;
b = 0.01;
c=1;

JUICE=15;
Brems=-2;

%------------------------------------------------
% Beregner motorpådrag og lagrer i datavektor
% (slett for de motorene du ikke bruker og lag egen kode)
%------------------------------------------------
% PowerA(k) = round(skalering*JoyForover(k));
% PowerB(k) = floor(a*Lys(k));
% PowerC(k) = ceil(b*Tid(k));

% For example, to find 50 apples as a percentage of 1250 apples,
% first compute the ratio ?50?1250 = 0.04, and then multiply by 100
% to obtain 4%.
 
% PowerB(k)=PowerB(k)
% PowerC(k)=PowerC(k)

PowerB(1) = my;
PowerC(1) = my;

PowerB(k) = round(PowerB(k-1) + PID(k));
PowerC(k) = round(PowerC(k-1) - PID(k));


if online
    
    %------------------------------------------------
    % Setter HELTALL powerdata mot NXT (-100 -> +100)
    % (slett de du ikke bruker)
    %------------------------------------------------
%     motorA.Power = PowerA(k);


    motorB.Power = PowerB(k);
    motorC.Power = PowerC(k);
%     
%     motorA.SendToNXT();
    motorB.SendToNXT();
    motorC.SendToNXT();
else
    %------------------------------------------------
    % simulerer NXT-Matlab kommunikasjon i online=0
    %------------------------------------------------
    pause(0.01) 
end
