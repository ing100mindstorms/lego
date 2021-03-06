%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% P0X_F2_GetFirstMeasurement.m
% 
% F�r tak i f�rste m�ling fra NXT med tilh�rende tidspunkt.
% Definerer variable som skal brukes.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if online==1
    
    %------------------------------------------------
    % setter diskret tellevariabel
    % starter stoppeklokka og setter Tid(1)=0
    %------------------------------------------------
    k=1;
    tic
    Tid(k) = 0;              

    %------------------------------------------------
    % hent f�rste m�ling fra sensorene (slett de du ikke bruker)
    %------------------------------------------------
    Lys(k)     = GetLight(SENSOR_3);   
    
    
    %------------------------------------------------
    % sp�r etter data fra styrestikke 
    % Utvid selv med andre knapper og akser
    %------------------------------------------------
    joystick      = joymex2('query',0);    
    JoyMainSwitch = joystick.buttons(1);
    JoyForover(k) = -double(joystick.axes(2)); % 2^15 frem, -2^15 bak
    %-----------------------------------------------------
    % HUSK AT ALLE LOGGEDE DATA DU TAR VARE P� HER I ONLINE=1 
    % M� V�RE MED I SAVE KOMMANDOEN FOR BRUK I ONLINE=0 
    %
    % For � ta vare p� alt som er definert i denne malen 
    % er kommandoen slik (du m� ta bort og legge til 
    % i forhold til ditt prosjekt):
    %
    % save('P0X_DataNavn.mat','Tid','Lys','Lyd',...
    %       'Bryter','Avstand','Tilt','Aks','AksLEGO',...
    %       'PosMotorA','PosMotorB','PosMotorC',...
    %       'JoyForover')
    %
    % Dersom du: 
    %   - ikke skal benytte loggede data i ONLINE=0 men bare
    %     lage figurer av resultatene du har oppn�dd i ONLINE=1,
    %   - eller dersom du i ONLINE=0 har jobbet med kode og f�tt
    %     resultater som du vil dokumentere med figurer,  
    % b�r du lagre hele workspace f.eks. med kommandoen:
    %
    % save('P0X_DataNavn_figur1.mat')
    %
    %-----------------------------------------------------

else
    %------------------------------------------------
    % Dersom online=0 lastes datafil. Dersom datafilen
    % feilaktig innholder online=1 og f.eks. k=1521 
    % fra kj�ringen, settes for sikkerhets skyld
    % online=0 og k=1. 
    % Lat som om styrestikken er i bruk ved � sette 
    % JoyMainSwitch=0
    %------------------------------------------------
    load(filename)     
    online=0;         
    k=1;              
    JoyMainSwitch=0;  
end

%----------------------------------------------------
% Definer datavektorer og parametre.
% Denne koden er felles for online=0=1
% 
% NB: Husk at k=2 i neste script P0X_F3_GetNewMeasurement.m. 
% Det er derfor viktig at de datavektorene som ikke skal 
% v�re 0 i f�rste element, initialiseres her!!!
%----------------------------------------------------
nullpunkt = Lys(k);

LysFiltrert_IIR(k) = Lys(1); % lik f�rste m�ling

%-----------------------------------------------------------
% Initialiser figur fig1 (legg til flere figurer etterhvert)
%-----------------------------------------------------------
fig1=figure;

