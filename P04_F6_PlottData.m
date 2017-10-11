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
plot(Tid(1:k),PowerB(1:k));
xlabel('Tid [sek]')
title('PowerB')

subplot(2,2,2)
plot(Tid(1:k),PosMotorB(1:k));
xlabel('Tid [sek]')
title('PosMotorB')

figure(fig1)
subplot(2,2,3)
plot(Tid(1:k),PowerC(1:k));
xlabel('Tid [sek]')
title('PowerC')

subplot(2,2,4)
plot(Tid(1:k),PosMotorC(1:k));
xlabel('Tid [sek]')
title('PosMotorC')
% 
% 
% subplot(2,2,3)
% plot(Tid(1:k),Lys(1:k)); 
% xlabel('Tid [sek]')
% title('Lys')

%---------------------------------------------------
% tegn nå (viktig kommando)
%---------------------------------------------------
drawnow

