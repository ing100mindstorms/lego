%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% P0X_F5_CalculateAndSetMotorPower.m
% 
% Beregner hvordan motorene skal bevege seg
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%------------------------------------------------
% Definer parametre til å beregne motorpådrag. 
%------------------------------------------------
skalering = 50/2^15;  % konvertering fra 2^15 til 100%
a = 0.11;
b = 0.01;
c=1;
%------------------------------------------------
% Beregner motorpådrag og lagrer i datavektor
% (slett for de motorene du ikke bruker og lag egen kode)
%------------------------------------------------
% PowerA(k) = round(skalering*JoyForover(k));
% PowerB(k) = floor(a*Lys(k));
% PowerC(k) = ceil(b*Tid(k));

if JoyH(k)>0
PowerB(k) = round(c*skalering*JoyForover(k));
PowerC(k) = round(c*skalering*JoyForover(k)-abs(skalering*JoyH(k)));

else
PowerB(k) = round(c*skalering*JoyForover(k)-abs(skalering*JoyH(k)));
PowerC(k) = round(c*skalering*JoyForover(k));

end
(k) = round(skalering*JoyH(k));
% PowerB(k) = round(skalering*JoyH(k));
% PowerC


if online
    
    %------------------------------------------------
    % Setter HELTALL powerdata mot NXT (-100 -> +100)
    % (slett de du ikke bruker)
    %------------------------------------------------
%     motorA.Power = PowerA(k);
    motorB.Power = PowerB(k);
    motorC.Power = PowerC(k);
    
%     motorA.SendToNXT();
    motorB.SendToNXT();
    motorC.SendToNXT();
else
    %------------------------------------------------
    % simulerer NXT-Matlab kommunikasjon i online=0
    %------------------------------------------------
    pause(0.01) 
end
