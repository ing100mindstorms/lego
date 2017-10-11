%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% P0X_F4_MathCalculations.m
% 
% Her programmerer du beregninger som skal gjøres
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%------------------------------------------------
% Definer parametre som brukes i beregningene. 
%------------------------------------------------
n=1;
m = 20; % antall målinger i FIR-filter
alfa = 0.5; % parameter i IIR-filter
% LysFiltrert_FIR(k) = sum(FIR_filter(Lys(k+1-n),m));
% LysFiltrert_IIR(k) = alfa*....

% Uses k instead of m until k is bigger than m
if k<m
    M=k;
else
    M=m;
end

LysFiltrert_FIR(k)=FIR_filter(Lys((k+1-M):k),M);
LysFiltrert_IIR(k)=IIR_filter(Lys(k),LysFiltrert_IIR(k - 1),alfa);

