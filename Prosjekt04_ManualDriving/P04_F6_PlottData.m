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

% if length(Tid(1:k))>40
%     LysFiltrert_IIR(1:k) = decimate(LysFiltrert_IIR(1:k),4);
%     Lys(1:k) = decimate(Lys(1:k),4);
%     LysDerivert(1:k) = decimate(LysDerivert(1:k),4);
%     LysAvvik(1:k) = decimate(LysAvvik(1:k),4);
%     HvorVinglete(1:k) = decimate(HvorVinglete(1:k),4);
%     Score(1:k) = decimate(Score(1:k),4);
% end

figure(fig1)
subplot(3,2,1)
plot(Tid(1:k), Lys(1:k),'b');
hold on
refline([0,nullpunktet]);
plot(Tid(1:k), LysFiltrert_IIR(1:k),'r');
xlabel('Tid [sek]')
ylabel('Lys')
title ('Lysmåling og filtrerte verdier')
hold off

subplot(3,2,2)
plot(Tid(1:k-1),LysDerivert(1:k-1),'r');
xlabel('Tid [sek]')
ylabel('LysDerivert')
title('Deriverte av filtrert lysmåling')

subplot(3,2,3)
plot(Tid(1:k),LysAvvik(1:k),'b'); 
xlabel('Tid [sek]')
ylabel('LysAvvik')
title('LysAvvik')

subplot(3,2,4)
plot(Tid(1:k), HvorVinglete(1:k),'g');
xlabel('Tid [sek]');
title('HvorVinglete')

subplot(3,2,5)
plot(Tid(1:k), LysIntegrert(1:k), 'b')
hold on
plot(Tid(1:k), HvorVinglete(1:k), 'g');
hold off
xlabel('Tid [sek]');
title('HvorVinglete og LysIntegrert');

%---------------------------------------------------
drawnow




