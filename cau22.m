clear all, close all,
syms t v p

v = 100*cos(100*pi*t);
p = v^2 / 50;

figure(1);
subplot(2,1,1); grid on; hold on;
hl1 = ezplot(v,[0 70e-3]);

ax1 = gca;
set(ax1,'Xlim',[0 70e-3],'Ylim',[-110 110],'XColor','k','YColor','k');
xlabel('Time - ms', 'FontSize', 18);
ylabel('Voltage - V', 'FontSize', 18);
set(ax1,'FontSize',14,'Box','On');
set(hl1,'LineWidth',2.5);
set(hl1,'LineStyle','-');
set(hl1,'Color','b');

subplot(2,1,2); grid on; hold on;
hl1 = ezplot(p,[0 100e-3]);

ax1 = gca;
set(ax1,'Xlim',[0 70e-3],'Ylim',[0 210],'XColor','k','YColor','k');
xlabel('Time - ms', 'FontSize', 18);
ylabel('Power - W', 'FontSize', 18);
set(ax1,'FontSize',14,'Box','On');
set(hl1,'LineWidth',2.5);
set(hl1,'LineStyle','-');
set(hl1,'Color','b');
