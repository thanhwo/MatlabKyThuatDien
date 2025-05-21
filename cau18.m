close all; clear all;
syms v1(t) v2(t)

% Giải hệ phương trình vi phân
[v1Sol, v2Sol] = dsolve(...
    diff(v1) + 2*v1 - v2 == 10, ...
    diff(v2) + 2*v2 - v1 == 0, ...
    v1(0) == 0, ...
    v2(0) == 0);

% Vẽ đồ thị đáp ứng
figure(1); grid on; hold on;
hl1 = fplot(v1Sol, [0 10]);
hl2 = fplot(v2Sol, [0 10]);

xlabel('Thời gian (s)', 'FontSize', 12);
ylabel('Điện áp (V)', 'FontSize', 12);
title('Đáp ứng điện áp v1 và v2 theo thời gian', 'FontSize', 14);
legend('v1', 'v2', 'Location', 'best');
set(gca, 'FontSize', 12, 'Box', 'on');
