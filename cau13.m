close all; clear all;
syms vc(t) R L C vi

% Phương trình vi phân mạch RLC: 
% d2vc/dt2 + (R/L)*dvc/dt + (1/(L*C))*vc = (1/(L*C))*vi
ode = diff(vc, t, 2) + (R/L)*diff(vc, t) + (1/(L*C))*vc == (1/(L*C))*vi;
cond1 = vc(0) == 0;
dvc = diff(vc, t);           % Tách riêng đạo hàm bậc 1
cond2 = dvc(0) == 0;

% Giải phương trình vi phân với điều kiện ban đầu
vcSol = dsolve(ode, cond1, cond2);

% ===== Vẽ biểu đồ với các giá trị R khác nhau =====
figure(1); grid on; hold on;

% R = 30 Ohm
vcn1 = subs(vcSol, [R L C vi], [10 10e-3 1e-6 10]);
fplot(vcn1, [0 0.003], 'b--', 'LineWidth', 2);

% R = 100 Ohm
vcn2 = subs(vcSol, [R L C vi], [100 10e-3 1e-6 10]);
fplot(vcn2, [0 0.003], 'r-.', 'LineWidth', 2);

% R = 200 Ohm (gần tới hạn)
vcn3 = subs(vcSol, [R L C vi], [200 + 1e-10 10e-3 1e-6 10]);
fplot(vcn3, [0 0.003], 'g-', 'LineWidth', 2);

% R = 300 Ohm (quá tắt)
vcn4 = subs(vcSol, [R L C vi], [300 10e-3 1e-6 10]);
fplot(vcn4, [0 0.003], 'm-', 'LineWidth', 2);

% R = 500 Ohm (quá tắt mạnh)
vcn5 = subs(vcSol, [R L C vi], [500 10e-3 1e-6 10]);
fplot(vcn5, [0 0.003], 'k-', 'LineWidth', 2);

% Thiết lập đồ thị
xlabel('Thời gian (s)', 'FontSize', 12);
ylabel('Điện áp trên tụ VC (V)', 'FontSize', 12);
title('Đáp ứng điện áp VC với các giá trị R khác nhau', 'FontSize', 14);
legend(...
    'R = 10 Ω (dao động tắt dần)', ...
    'R = 100 Ω', ...
    'R = 200 Ω (tới hạn)', ...
    'R = 300 Ω', ...
    'R = 500 Ω (quá tắt mạnh)', ...
    'Location', 'best');
set(gca, 'FontSize', 12, 'Box', 'on');
