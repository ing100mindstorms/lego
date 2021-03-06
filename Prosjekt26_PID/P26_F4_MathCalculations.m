%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% P0X_F4_MathCalculations.m
% 
% Her programmerer du beregninger som skal gj�res
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%------------------------------------------------
% Definer parametre som brukes i beregningene. 
%------------------------------------------------



Kp = 0.2; %Proposjonalitet forsterkning - Dvs hvor intenst PID skal korrigere
Ki = 0.01; %Integral forsterkning - Dvs hvor lenge PID skal v�re i "error mode" (hindrer offset)
Kd = 0.0; %Derivat forsterkning - Dvs hvor raskt PID skal reagere til nye verdier


Ts(k-1) = Tid(k)-Tid(k-1); % beregn tidsskritt i sekund
LysAvvik(k) = Lys(k)-nullpunkt; % beregn avvik fra nullpunkt

LysIntegrert(k) = EulerForward(LysIntegrert(k-1), LysAvvik(k), Ts(k-1)); % numerisk integrasjon,

alfa = 0.5; % alpha i IIR-filter
LysFiltrert_IIR(k) = IIR_filter(LysFiltrert_IIR(k-1), Lys(k), alfa); %Filtrerer

LysDerivert(k-1) = Derivation(LysFiltrert_IIR(k-1:k),Ts(k-1));  %Deriverte av Lysfiltrert signal

HvorVinglete(k) = EulerForward(HvorVinglete(k-1), abs(LysAvvik(k)), Ts(k-1)); %Alltid positiv numerisk integrasjon
Score(k) = Tid(k) * 10 + HvorVinglete(k); %Regner ut score

%-----------------------------------------------------------
% PID
%-----------------------------------------------------------
% Variabler i formler:
% e(t) : avvik mellom m�lt verdi og �nsket verdi ved tid 't'
% Kp : Proposjonal forsterkning
% Ki : Integral forsterkning
% Kd : Derivat forsterkning
% my : basisp�drag
%-----------------------------------------------------------


%Basisp�drag, senker farten ved h�y LysAvvik 
%Maks lysm�ling f�r break i hovedprogrammet er 620 og teoretisk
%maksverdi til Lysavvik er 310 (620/2 = 310), men siden den kan bli
%plassert d�rlig, settes makstaket til 360.
my(k) = 20 * (1 - abs(LysAvvik(k))/200); 

%----- Kalkulasjoner ---------------------------------------
P(k) = Kp * LysAvvik(k); %'Proposjonal'-delen i PID. Formel: P = Kp * e(t)
I(k) = Ki * LysIntegrert(k); %'Integral'-delen i PID. Formel: I = Ki * integral(e(t))
D(k) = Kd * LysDerivert(k-1); %'Derivert'-delen i PID. Formel: D = Kd * derivert(e(t))

PID(k) = P(k) + I(k) + D(k); %PID