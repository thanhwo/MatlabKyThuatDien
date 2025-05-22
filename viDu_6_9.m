clear all
R1 = 90; R2 = 10; R3 = 100
L = 100e-3; C = 1e-7
f = logspace(1,5,4000);
w = 2*pi*f;
H = R3./(R1+R3+1./(i*w*C + 1./(R2 + i*w*L)));
semilogx(f,20*log10(abs(H)));
grid on
