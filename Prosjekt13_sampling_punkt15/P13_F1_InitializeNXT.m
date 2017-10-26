%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% P0X_F1_InitializeNXT.m
%
% Initialiserer NXT'en med sensorer og motorer, 
% samt styrestikken. Kun aktuelt i online=1.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if online
    %------------------------------------------------
    % Initialiser NXT
    %------------------------------------------------
    COM_CloseNXT('all')
    handle = COM_OpenNXT();
    COM_SetDefaultNXT(handle);
    
    %------------------------------------------------
    % Initialiser sensorer (slett de du ikke bruker)
    %------------------------------------------------
    OpenLight(SENSOR_3,'ACTIVE') % ACTIVE/DEACTIVE
%     OpenSound(SENSOR_Y,'DB')     % DB eller DBA
%     OpenSwitch(SENSOR_Y)
 %    OpenUltrasonic(SENSOR_3)
 %    OpenAccelerator(SENSOR_4)
%     
    %------------------------------------------------
    % Initialiser motorer (slett de du ikke bruker)
    %------------------------------------------------
%     motorA = NXTMotor('A');
%     motorA.ResetPosition();
% 
%    motorB = NXTMotor('B');
%    motorB.ResetPosition();

  %  motorC = NXTMotor('C');
 %   motorC.ResetPosition();


    %------------------------------------------------
    % Initialiser styrestikke
    %------------------------------------------------
    clear joymex2
    joymex2('open',0);

end
