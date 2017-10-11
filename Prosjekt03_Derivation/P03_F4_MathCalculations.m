%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% P0X_F4_MathCalculations.m
% 
% Her programmerer du beregninger som skal gjøres
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Ts(k-1) = Tid(k)-Tid(k-1); % beregn tidsskritt i sekund
alfa = 0.5; % alpha i IIR-filter
LysFiltrert_IIR(k)=IIR_filter(Lys(k),LysFiltrert_IIR(k - 1),alfa);
LysDerivert(k-1) = Derivation(LysFiltrert_IIR(k-1:k),Ts(k-1));
%------------------------------------------------
% Definer parametre som brukes i beregningene. 
%------------------------------------------------

