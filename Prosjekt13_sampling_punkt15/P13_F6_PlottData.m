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

% figure(fig1)
% subplot(2,2,1)
% plot(Tid(1:k),PowerA(1:k));
% xlabel('Tid [sek]')
% title('PowerA')
% 
% subplot(2,2,2)
% plot(Tid(1:k),PosMotorA(1:k));
% xlabel('Tid [sek]')
% title('PosMotorA')
% 
% subplot(2,2,3)
% plot(Tid(1:k),Lys(1:k)); 
% xlabel('Tid [sek]')
% title('Lys')

%---------------------------------------------------
% tegn nå (viktig kommando)

figure(fig1)
sample = 50;
plot(Tid(10:k),Lys(10:k),'b');
hold on
plot(Tid(10:sample:k),Lys(10:sample:k),'-r*');
hold off
xlabel('Tid [sek]')
title(['’Blå: Opprinnelig lyssignal. ', ...
'Rød: Samplet lyssignal (hver ',num2str(sample),'. lysmåling)'])
%---------------------------------------------------
drawnow



