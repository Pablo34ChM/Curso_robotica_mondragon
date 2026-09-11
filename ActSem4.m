L1 = 3.0;
L2 = 2.0;

dt = 0.03;
t_fase1 = 0:dt:2.5;
t_fase2 = 0:dt:2.5;

tau1 = t_fase1 / t_fase1(end);
theta1_f1 = (pi/4) * (0.5 * (1 - cos(pi * tau1)));
theta2_f1 = zeros(size(t_fase1));

tau2 = t_fase2 / t_fase2(end);
theta1_f2 = (pi/4) * ones(size(t_fase2));
theta2_f2 = (pi/3) * (0.5 * (1 - cos(pi * tau2)));

theta1 = [theta1_f1, theta1_f2];
theta2 = [theta2_f1, theta2_f2];
N = length(theta1);

x1 = L1 * cos(theta1);
y1 = L1 * sin(theta1);
x2 = x1 + L2 * cos(theta1 + theta2);
y2 = y1 + L2 * sin(theta1 + theta2);

figure('Color', 'k');
ax = axes;
hold(ax, 'on');
axis(ax, 'equal', 'off'); 
xlim(ax, [-0.5, L1 + L2 + 0.5]);
ylim(ax, [-0.5, L1 + L2 + 0.5]);

h_brazo = plot(ax, [0, 0, 0], [0, 0, 0], '-o', ...
    'LineWidth', 5, ...
    'Color', [0.2 0.7 1.0], ...
    'MarkerSize', 8, ...
    'MarkerFaceColor', 'y', ...
    'MarkerEdgeColor', 'w');

for k = 1:N
    h_brazo.XData = [0, x1(k), x2(k)];
    h_brazo.YData = [0, y1(k), y2(k)];
    drawnow;
end