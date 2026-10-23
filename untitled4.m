x = input('X final: ');
y = input('Y final: ');
L1 = input('Longitud eslabón 1: ');
L2 = input('Longitud eslabón 2: ');
codo = input('Codo arriba (1) o abajo (2): ');

r = sqrt(x^2 + y^2);
if r > (L1 + L2), error('Fuera de alcance'); end

alpha = acos((L1^2 + r^2 - L2^2) / (2 * L1 * r));
gamma = acos((L1^2 + L2^2 - r^2) / (2 * L1 * L2));
beta = atan2(y, x);

if codo == 1
    t1 = beta + alpha; t2 = gamma - pi; 
else
    t1 = beta - alpha; t2 = pi - gamma; 
end

fprintf('Theta 1: %.2f° \nTheta 2: %.2f°\n', rad2deg(t1), rad2deg(t2));

figure; axis([-(L1+L2), (L1+L2), -(L1+L2), (L1+L2)]); grid on; hold on;
plot([-1, 1], [-1, -1], 'k-', [0, 0], [-1, 0], 'k-', 'LineWidth', 3);
plot(x, y, 'g*', 'MarkerSize', 10);
brazo = plot([0,0,0], [0,0,0], '-or', 'LineWidth', 3, 'MarkerFaceColor', 'r');

for i = 1:50
    t1_i = (i/50) * t1; t2_i = (i/50) * t2;
    x1 = L1 * cos(t1_i); y1 = L1 * sin(t1_i);
    x2 = x1 + L2 * cos(t1_i + t2_i); y2 = y1 + L2 * sin(t1_i + t2_i);
    set(brazo, 'XData', [0, x1, x2], 'YData', [0, y1, y2]);
    pause(0.04);
end