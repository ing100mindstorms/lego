%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% P0X_F3_GetNewMeasurement.m
% 
% Leser inn nye data fra NXT og styrestikke 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%---------------------------------------------------
% øker diskret tellevariabel (felles for online=0=1)
%---------------------------------------------------
k=k+1;  


if online
    %------------------------------------------------
    % tid gått siden første måling
    %------------------------------------------------
    Tid(k) = toc;                

    %------------------------------------------------
    % hent ny måling (slett de du ikke bruker)
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
    % hent måling av motorposisjoner (slett om du ikke bruker)
    %------------------------------------------------
%     InfoMotorA = motorA.ReadFromNXT();  
    InfoMotorB = motorB.ReadFromNXT();  
    InfoMotorC = motorC.ReadFromNXT();  
    
%     PosMotorA(k) = InfoMotorA.Position;
    PosMotorB(k) = InfoMotorB.Position;
    PosMotorC(k) = InfoMotorC.Position;
    
    %------------------------------------------------
    % spør etter nye data fra styrestikke
    % Utvid selv med andre knapper og akser
    %------------------------------------------------
    joystick      = joymex2('query',0);  
    JoyMainSwitch = joystick.buttons(1);
    JoyForover(k) = -double(joystick.axes(2)); 
    
    JoyH(k) = -double(joystick.axes(1));

    
else
    %------------------------------------------------
    % online=0 
    % når k er like stor som antall målinger simuleres
    % det at bryter på styrestikke trykkes inn
    %------------------------------------------------
    if k==numel(Lys)
        JoyMainSwitch=1; 
    end
end
