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
    Lys(k)     = GetLight(SENSOR_3);     

    %------------------------------------------------
    % sp�r etter nye data fra styrestikke
    % Utvid selv med andre knapper og akser
    %------------------------------------------------
    joystick      = joymex2('query',0);  
    JoyMainSwitch = joystick.buttons(1);
    JoyForover(k) = -double(joystick.axes(2)); 
    
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
