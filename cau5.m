syms t t1 iC iC1 vC
iC = 2.5*t*(heaviside(t) - heaviside(t-2e-3))+...
    5e-3*(heaviside(t-2e-3) - heaviside(t-4e-3))+...
    ((-10e-3)*sin(500*pi*t))*(heaviside(t-4e-3) - heaviside(t-6e-3));
figure(1), grid on, hold on;
hl1 = ezplot(iC, [-2e-3 8e-3])

ax1 = gca;
set(ax1,'XColor','k','YColor','k');
set(get(ax1,'XLabel'),'String','Time - s', 'FontSize', 18);
set(get(ax1,'YLabel'),'String','Current - A', 'FontSize', 18);
set(ax1,'FontSize',12);
set(ax1,'Box','On');
set(hl1,'LineWidth',2);
set(hl1,'LineStyle','-');
set(hl1,'Color','k');
iCt = 2.5*t1*(heaviside(t1) - heaviside(t1-2e-3))+...
    5e-3*(heaviside(t1-2e-3) - heaviside(t1-4e-3))+...
    ((-10e-3)*sin(500*pi*t1))*(heaviside(t1-4e-3) - heaviside(t1-6e-3));
vC = 2e6*int(iC,t1,0,t);

figure(2), grid on, hold on;
hl1 = ezplot(vC, [-2e-3 8e-3])

ax1 = gca;
set(ax1,'XColor','k','YColor','k');
set(get(ax1,'XLabel'),'String','Time - s', 'FontSize', 18);
set(get(ax1,'YLabel'),'String','Voltage - V', 'FontSize', 18);
set(ax1,'FontSize',12);
set(ax1,'Box','On');
set(hl1,'LineWidth',2);
set(hl1,'LineStyle','-');
set(hl1,'Color','k');
