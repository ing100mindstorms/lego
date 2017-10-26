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

alfa = 0.5; % alpha i IIR-filter
LysFiltrert_IIR(k) = IIR_filter(LysFiltrert_IIR(k-1), Lys(k), alfa); %Filtrerer

LysDerivert(k-1) = Derivation(LysFiltrert_IIR(k-1:k),Ts(k-1));  %Deriverte av Lysfiltrert signal

if(LysDerivert(k-1)< -1000 && lysDerivert(k-2) > -1000) %%Sjekker om det er ny stripe
    tidspunkt(end + 1) = Ts(k-1);
    hastighet(end + 1) = lengde / (tidspunkt(end) - tidspunkt(end - 1)); %Beregner hastighet utifra avbruddsignal fra lyssensor
end

motorHastighetB(k) = motorSpeedCalculator(PosMotorB(k), Ts(k-1), radius); %Beregner hastighet utifra motorposisjon
motorHastighetC(k) = motorSpeedCalculator(PosMotorC(k), Ts(k-1), radius); %Beregner hastighet utifra motorposisjon

%Tar gjennomsnitthastighet mellom de to forskjellige motorene
%Denne kan fjernes hvis man trenger hastigheten separat til begge motorone
%et annet prosjekt.
motorHastighet(k) = (motorHastighetB(k) + motorHastighetC(k)) / 2;