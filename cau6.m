syms it itn t vt vtn R C Vi

it = dsolve('R*C*Dit + it = 0','it(0) = Vi/R')
vt = 1/C*int(it,0,t)

figure(1), grid on, hold on;
itn = subs(it,[R C Vi],[1e3 1e-6 1])
hl1 = ezplot(itn, [0, 0.05]);
itn = subs(it,[R C Vi],[5e3 1e-6 1])
hl2 = ezplot(itn, [0, 0.05]);
itn = subs(it,[R C Vi],[10e3 1e-6 1])
hl3 = ezplot(itn, [0, 0.05]);
ax1 = gca;
set(ax1,'Xlim',[0 0.05]);
set(ax1,'Ylim',[0 10e-4]);
set(ax1,'XColor','k','YColor','k');
set(get(ax1,'XLabel'),'String','Time - s', 'FontSize', 18);
set(get(ax1,'YLabel'),'String','Current - A', 'FontSize', 18);
set(ax1,'FontSize',12);
set(ax1,'Box','On');
set(hl1,'LineWidth',2);
set(hl1,'LineStyle','-');
set(hl1,'Color','r');
set(hl2,'LineWidth',2);
set(hl2,'LineStyle','--');
set(hl2,'Color','b');
set(hl3,'LineWidth',2);
set(hl3,'LineStyle','-.');
set(hl3,'Color','k');
legend('R= 1 k\Omega',...
       'R= 5 k\Omega',...
       'R= 10 k\Omega',...
       'Location','northeast')

figure(2), grid on, hold on;
vtn = subs(vt,[R C Vi],[1e3 1e-6 1])
hl1 = ezplot(vtn, [0, 0.05]);
vtn = subs(vt,[R C Vi],[5e3 1e-6 1])
hl2 = ezplot(vtn, [0, 0.05]);
vtn = subs(vt,[R C Vi],[10e3 1e-6 1])
hl3 = ezplot(vtn, [0, 0.05]);
ax1 = gca;
set(ax1,'Xlim',[0 0.05]);
set(ax1,'Ylim',[0 1.1]);
set(ax1,'XColor','k','YColor','k');
set(get(ax1,'XLabel'),'String','Time - s', 'FontSize', 18);
set(get(ax1,'YLabel'),'String','Voltage - V', 'FontSize', 18);
set(ax1,'FontSize',12);
set(ax1,'Box','On');
set(hl1,'LineWidth',2);
set(hl1,'LineStyle','-');
set(hl1,'Color','r');
set(hl2,'LineWidth',2);
set(hl2,'LineStyle','--');
set(hl2,'Color','b');
set(hl3,'LineWidth',2);
set(hl3,'LineStyle','-.');
set(hl3,'Color','k');
legend('R= 1 k\Omega',...
       'R= 5 k\Omega',...
       'R= 10 k\Omega',...
       'Location','southeast')

figure(3), grid on, hold on;
vtn = subs(Vi-vt,[R C Vi],[1e3 1e-6 1])
hl1 = ezplot(vtn, [0, 0.05]);
vtn = subs(Vi-vt,[R C Vi],[5e3 1e-6 1])
hl2 = ezplot(vtn, [0, 0.05]);
vtn = subs(Vi-vt,[R C Vi],[10e3 1e-6 1])
hl3 = ezplot(vtn, [0, 0.05]);
ax1 = gca;
set(ax1,'Xlim',[0 0.05]);
set(ax1,'Ylim',[0 1.1]);
set(ax1,'XColor','k','YColor','k');
set(get(ax1,'XLabel'),'String','Time - s', 'FontSize', 18);
set(get(ax1,'YLabel'),'String','Voltage - V', 'FontSize', 18);
set(ax1,'FontSize',12);
set(ax1,'Box','On');
set(hl1,'LineWidth',2);
set(hl1,'LineStyle','-');
set(hl1,'Color','r');
set(hl2,'LineWidth',2);
set(hl2,'LineStyle','--');
set(hl2,'Color','b');
set(hl3,'LineWidth',2);
set(hl3,'LineStyle','-.');
set(hl3,'Color','k');
legend('R= 1 k\Omega',...
       'R= 5 k\Omega',...
       'R= 10 k\Omega',...
       'Location','northeast')

