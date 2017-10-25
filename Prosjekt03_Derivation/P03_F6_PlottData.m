%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% P0X_F6_PlottData.m
% 
% Denne plasseres enten i while-løkka eller rett etterpå
%
% Husk syntaksen: plot(Tid(1:k),data(1:k))  
% Dette for å få samme opplevelse når online=0 siden
% hele datasettet (1:end) eksisterer i den lagrede .mat fila
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(fig1)
subplot(2,1,1)
plot(Tid(1:k),Lys(1:k),'r');
hold on
plot(Tid(1:k), LysFiltrert_IIR(1:k), 'b')
xlabel('Tid [sek]')
legend('Lys', 'LysFiltrert\_IRR')
title('Lys')

subplot(2,1,2)
plot(Tid(2:k),LysDerivert(1:k-1)) % LysDerivert er beregnet for k-1
axis([0 12 -2500 2500])
xlabel('Tid [sek]')
legend('LysDerivert')
title('LysDerivert')


%---------------------------------------------------
% tegn nå (viktig kommando)
%---------------------------------------------------
drawnow

