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

alfa = 0.5; % alpha i IIR-filter
UltraLydFiltrert_IIR(k) = IIR_filter(UltraLydFiltrert_IIR(k-1), Lys(k), alfa); %Filtrerer

UltraLydDerivert(k-1) = Derivation(LysFiltrert_IIR(k-1:k),Ts(k-1));  %Deriverte av UltraLydfiltrert signal

AbsoluttAkselerometer(k) = sqr(sum(abs(AksLEGO(:,k))));     %Beregner absolutt (lengde) verdi av akselerometervektor (x,y,z)
AkselerometerIntegrert(k) = EulerForward(AkselerometerIntegrert(k-1), AbsoluttAkselerometer(k), Ts(k-1)); %Integrerer Akselerometeret

motorHastighetB(k) = motorSpeedCalculator(PosMotorB(k), Ts(k-1), radius); %Beregner hastighet utifra motorposisjon
motorHastighetC(k) = motorSpeedCalculator(PosMotorC(k), Ts(k-1), radius); %Beregner hastighet utifra motorposisjon

%Tar gjennomsnitthastighet mellom de to forskjellige motorene
%Denne kan fjernes hvis man trenger hastigheten separat til begge motorone
%et annet prosjekt.
motorHastighet(k) = (motorHastighetB(k) + motorHastighetC(k)) / 2;