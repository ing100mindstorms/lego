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
subplot(2,2,1)
plot(Tid(1:k),Lys(1:k)); 
xlabel('Tid [sek]')
title('Lys')

subplot(2,2,1)
plot(Tid(1:k-1),LysDerivert(1:k-1)) % LysDerivert er beregnet for k-1
xlabel('Tid [sek]')
titlel('LysDerivert')

%---------------------------------------------------
% tegn nå (viktig kommando)
%---------------------------------------------------
drawnow

