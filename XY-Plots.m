set(0,'DefaultAxesFontSize',20,'DefaultAxesFontName','Times New Roman','DefaultAxesFontWeight','bold','DefaultLineLineWidth',3,'DefaultAxesLineWidth',1)


L=find(Data.time==.3995);
L1=find(Data.time==.151);

figure

subplot(3,2,1)
plot(Data.time(L1:L), (Data.signals(2).values(L1:L,1)),'b')
hold on
% plot(Data.time(L1:L), (Data.signals(1).values(L1:L,2)),'g')
% hold on
plot(Data.time(L1:L), (Data.signals(2).values(L1:L,2)),'r--')
ylabel('V_G_r_i_d (p.u.)')
grid on
% XLIM=[0 9];
% xlim(XLIM)
YLIM=[-0.05 1.05];
ylim(YLIM)
% title('Test4: Operating mode variation')
legend('|V+|','|V-|')
% xlabel('Time (s)')
alldatacursors = findall(gcf,'type','hggroup')
set(alldatacursors,'FontSize',30)
set(alldatacursors,'FontName','Times')

subplot(3,2,3)
plot(Data.time(L1:L), (Data.signals(1).values(L1:L,1)),'b')
hold on
% plot(Data.time(L1:L), (Data.signals(2).values(L1:L,2)),'g')
% hold on
plot(Data.time(L1:L), (Data.signals(1).values(L1:L,2)),'r--')
ylabel('V_P_C_C (p.u.)')
grid on
% XLIM=[0 9];
% xlim(XLIM)
YLIM=[-0.05 1.1];
ylim(YLIM)
% title('Test4: Operating mode variation')
legend('|V+|','|V-|')
% xlabel('Time (s)')


subplot(3,2,5)
plot(Data.time(L1:L), (Data.signals(3).values(L1:L,2)),'g','LineWidth',2)
hold on
plot(Data.time(L1:L), (Data.signals(3).values(L1:L,3)),'r','LineWidth',2)
hold on
plot(Data.time(L1:L), (Data.signals(3).values(L1:L,1)),'b','LineWidth',2)
ylabel('V_P_C_C (p.u.)')
grid on
% XLIM=[0 9];
% xlim(XLIM)
YLIM=[-1.2 1.2];
ylim(YLIM)
% title('Test4: Operating mode variation')
% legend('Reference signal','State-feedback result','Robust result')
% xlabel('Time (s)')


subplot(3,2,2)
plot(Data.time(L1:L), (Data.signals(4).values(L1:L,2)),'g','LineWidth',2)
hold on
plot(Data.time(L1:L), (Data.signals(4).values(L1:L,3)),'r','LineWidth',2)
hold on
plot(Data.time(L1:L), (Data.signals(4).values(L1:L,1)),'b','LineWidth',2)
ylabel('I_P_C_C (p.u.)')
grid on
% XLIM=[0 9];
% xlim(XLIM)
YLIM=[-2 2];
ylim(YLIM)
% title('Test4: Operating mode variation')
% legend('Reference signal','State-feedback result','Robust result')
% xlabel('Time (s)')


subplot(3,2,4)
plot(Data.time(L1:L), (Data.signals(5).values(L1:L,2)),'r--','LineWidth',3)
hold on
plot(Data.time(L1:L), (Data.signals(5).values(L1:L,1)),'k','LineWidth',2)
ylabel([' P (MW) '; 'Q (MVAR)'])
grid on
% XLIM=[0 9];
% xlim(XLIM)
YLIM=[-1.5 2];
ylim(YLIM)
% title('Test4: Operating mode variation')
legend('Q','P')
xlabel('Time (s)')

