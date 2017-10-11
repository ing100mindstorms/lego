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


plot(Tid(1:k),Lys(1:k))
hold on
plot(Tid(1:k),LysFiltrert_FIR(1:k),'r','Linewidth',1.5);
 plot(Tid(1:k),LysFiltrert_IIR(1:k),'g','Linewidth',1.5);
  title ('Lysmåling og filtrerte verdier')
  xlabel('Tid [sek]')
  ylabel('Lys')
 %legend('Lys (blå)','LysFiltrert(FIR) (rød)','LysFiltrert(IIR) (Grønn)')
% % ['LysFiltrert_FIR, m=',num2str(m)],
% % ['LysFiltrert_IIR, alfa=',num2str(alfa)])
%---------------------------------------------------
drawnow




