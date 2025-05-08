syms vx ix vC vL vxn ixn vCn vLn k a w t L C
ix = k*t^2*exp(-a*t)*sin(w*t);
ixn = subs(ix, [k a w], [3 2 1]);
figure(1), grid on, hold on
hl1 = ezplot(ixn, [0 10])

ax1 = gca;
set(ax1,'Xlim',[0 10]);
set(ax1,'Ylim',[-0.1 0.4]);
set(ax1,'XColor','k','YColor','k');
set(get(ax1,'XLabel'),'String','Time - s', 'FontSize', 18);
set(get(ax1,'YLabel'),'String','Current - A', 'FontSize', 18);
set(ax1,'FontSize',14);
set(ax1,'Box','On');
set(hl1,'LineWidth',2);
set(hl1,'LineStyle','-');
set(hl1,'Color','k');

vL = L*diff(ix,t);
vL = simplify(vL);
pretty(vL);

vC = (1/C)*int(ix,t);
vx = vC + vL;
vLn = subs(vL, [k a w L C], [3 2 1 0.5 1]);
vCn = subs(vC, [k a w L C], [3 2 1 0.5 1]);
vxn = subs(vx, [k a w L C], [3 2 1 0.5 1]);

figure(2), grid on, hold on
hl1 = ezplot(vLn, [0 10])
hl2 = ezplot(vCn, [0 10])
hl3 = ezplot(vxn, [0 10])

ax1 = gca;
set(ax1,'Xlim',[0 10]);
set(ax1,'Ylim',[-0.6 0.3]);
set(ax1,'XColor','k','YColor','k');
set(get(ax1,'XLabel'),'String','Time - s', 'FontSize', 18);
set(get(ax1,'YLabel'),'String','Voltage - V', 'FontSize', 18);
set(ax1,'FontSize',14);
set(ax1,'Box','On');
set(hl1,'LineWidth',2);
set(hl1,'LineStyle','-');
set(hl1,'Color','k');

set(hl2,'LineWidth',2);
set(hl2,'LineStyle','--');
set(hl2,'Color','k');

set(hl3,'LineWidth',2);
set(hl3,'LineStyle','-.');
set(hl3,'Color','k');

