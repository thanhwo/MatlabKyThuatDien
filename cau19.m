clear all; close all;
syms it t R L Vi

% Giải phương trình vi phân: L*Dit + R*it = Vi
Dit = diff(it,t);
it = dsolve(L*Dit + R*it == Vi, it(0)==0);
vt = L*diff(it,t);   % điện áp qua cuộn cảm

% --- Figure 1: Dòng điện ---
figure(1); grid on; hold on;
itn = subs(it,[R L Vi],[10 0.001 100]); hl1 = ezplot(itn,[0,0.05]);
itn = subs(it,[R L Vi],[50 0.001 100]); hl2 = ezplot(itn,[0,0.05]);
itn = subs(it,[R L Vi],[100 0.001 100]); hl3 = ezplot(itn,[0,0.05]);

ax1 = gca;
set(ax1,'Xlim',[0 0.05],'Ylim',[0 11],'XColor','k','YColor','k');
xlabel('Time - s', 'FontSize', 18);
ylabel('Current - A', 'FontSize', 18);
set(ax1,'FontSize',14,'Box','On');
set(hl1,'LineWidth',3,'LineStyle','-','Color','r');
set(hl2,'LineWidth',3,'LineStyle','--','Color','b');
set(hl3,'LineWidth',3,'LineStyle','-.','Color','k');
legend('R= 10 \Omega','R= 50 \Omega','R= 100 \Omega','Location','northwest');

% --- Figure 2: Điện áp ---
figure(2); grid on; hold on;
vtn = subs(vt,[R L Vi],[10 0.001 100]); hl1 = ezplot(vtn,[0,0.05]);
vtn = subs(vt,[R L Vi],[50 0.001 100]); hl2 = ezplot(vtn,[0,0.05]);
vtn = subs(vt,[R L Vi],[100 0.001 100]); hl3 = ezplot(vtn,[0,0.05]);

ax1 = gca;
set(ax1,'Xlim',[0 0.05],'Ylim',[0 11],'XColor','k','YColor','k');
xlabel('Time - s', 'FontSize', 18);
ylabel('Voltage - V', 'FontSize', 18);
set(ax1,'FontSize',14,'Box','On');
set(hl1,'LineWidth',3,'LineStyle','-','Color','r');
set(hl2,'LineWidth',3,'LineStyle','--','Color','b');
set(hl3,'LineWidth',3,'LineStyle','-.','Color','k');
legend('R= 10 \Omega','R= 50 \Omega','R= 100 \Omega','Location','northeast');
