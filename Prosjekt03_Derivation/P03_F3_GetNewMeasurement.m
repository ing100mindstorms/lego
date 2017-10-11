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
    Lys(k)     = GetLight(SENSOR_3);     

    %------------------------------------------------
    % spør etter nye data fra styrestikke
    % Utvid selv med andre knapper og akser
    %------------------------------------------------
    joystick      = joymex2('query',0);  
    JoyMainSwitch = joystick.buttons(1);
    JoyForover(k) = -double(joystick.axes(2)); 
    
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
