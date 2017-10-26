%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% P0X_F7_CloseMotorsAndSensors.m
% 
% Fil nr 7 som kalles i hovedfil. 
%
% Stenger ned koplinger til NXT og sletter bestemte variable
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if online  
    %----------------------------------------------------------------
    % slett variable som ikke skal være med i lagret fil
    %----------------------------------------------------------------
    clear online k    

    %----------------------------------------------------------------
    % Stopp motorer og steng ned sensorer (slett de du ikke bruker)
    %----------------------------------------------------------------
    %motorA.Stop;            % Stopp motorer
    motorB.Stop;            % Stopp motorer
    motorC.Stop;            % Stopp motorer
    %CloseSensor(SENSOR_1);  % Steng ned sensor 1
    %CloseSensor(SENSOR_2);  % Steng ned sensor 2
    CloseSensor(SENSOR_3);  % Steng ned sensor 3
    %CloseSensor(SENSOR_4);  % Steng ned sensor 4

    %----------------------------------------------------------------
    % Lukk kopling til NXT og styrestikke
    %----------------------------------------------------------------
    COM_CloseNXT(handle); 
    clear handle      % Clear handle to avoid warnings when online=0
    clear joymex2     % Clear MEX-file to release joystick

    %----------------------------------------------------------------
    % Sletter NXTMotor-objektene 
    %----------------------------------------------------------------
    clear motorA motorB motorC
end

