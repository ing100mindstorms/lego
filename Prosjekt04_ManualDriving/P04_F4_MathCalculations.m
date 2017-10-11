%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% P0X_F4_MathCalculations.m
% 
% Her programmerer du beregninger som skal gjøres
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%------------------------------------------------
% Definer parametre som brukes i beregningene. 
%------------------------------------------------

Ts(k-1) = Tid(k)-Tid(k-1); % beregn tidsskritt i sekund
LysAvvik(k) = Lys(k)-nullpunkt; % beregn avvik fra nullpunkt

LysIntegrert(k) = EulerForward(LysIntegrert(k-1), LysAvvik(k), Ts(k-1)); % numerisk integrasjon,

alfa = 0.5; % alpha i IIR-filter
LysFiltrert_IIR(k) = IIR_filter(LysFiltrert_IIR(k-1), Lys(k), alfa); %Filtrerer

LysDerivert(k-1) = Derivation(LysFiltrert_IIR(k-1:k),Ts(k-1));  %Deriverte av Lysfiltrert signal

HvorVinglete(k) = EulerForward(HvorVinglete(k-1), abs(LysAvvik(k)), Ts(k-1)); %Alltid positiv numerisk integrasjon
Score(k) = Tid(k) * 10 + HvorVinglete(k); %Regner ut score