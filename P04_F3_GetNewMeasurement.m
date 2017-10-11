%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% P0X_F3_GetNewMeasurement.m
% 
% Leser inn nye data fra NXT og styrestikke 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%---------------------------------------------------
% �ker diskret tellevariabel (felles for online=0=1)
%---------------------------------------------------
k=k+1;  


if online
    %------------------------------------------------
    % tid g�tt siden f�rste m�ling
    %------------------------------------------------
    Tid(k) = toc;                

    %------------------------------------------------
    % hent ny m�ling (slett de du ikke bruker)
    %------------------------------------------------
%     Lys(k)     = GetLight(SENSOR_Y);   
%     Lyd(k)     = GetSound(SENSOR_Y);   
%     Bryter(k)  = GetSwitch(SENSOR_Y);   
%     Avstand(k) = GetUltrasonic(SENSOR_Y);    
% 
%     %------------------------------------------------
%     % flatt akselerometer (slett om du ikke bruker)
%     %------------------------------------------------
%     Tilt(:,k) = double(GetAbsoluteIMU_Tilt(SENSOR_Y));   
%     Aks(:,k)  = double(GetAbsoluteIMU_Acc(SENSOR_Y));

    %------------------------------------------------
    % LEGO akselerometer (slett om du ikke bruker)
    %------------------------------------------------
%     AksLEGO(:,k) = GetAccelerator(SENSOR_Y);

    %------------------------------------------------
    % hent m�ling av motorposisjoner (slett om du ikke bruker)
    %------------------------------------------------
%     InfoMotorA = motorA.ReadFromNXT();  
    InfoMotorB = motorB.ReadFromNXT();  
    InfoMotorC = motorC.ReadFromNXT();  
    
%     PosMotorA(k) = InfoMotorA.Position;
    PosMotorB(k) = InfoMotorB.Position;
    PosMotorC(k) = InfoMotorC.Position;
    
    %------------------------------------------------
    % sp�r etter nye data fra styrestikke
    % Utvid selv med andre knapper og akser
    %------------------------------------------------
    joystick      = joymex2('query',0);  
    JoyMainSwitch = joystick.buttons(1);
    JoyForover(k) = -double(joystick.axes(2)); 
    
    JoyH(k) = -double(joystick.axes(1));

    
else
    %------------------------------------------------
    % online=0 
    % n�r k er like stor som antall m�linger simuleres
    % det at bryter p� styrestikke trykkes inn
    %------------------------------------------------
    if k==numel(Lys)
        JoyMainSwitch=1; 
    end
end
