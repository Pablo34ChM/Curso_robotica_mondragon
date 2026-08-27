L1 = 3;
L2 = 3;
puntos = 50;

theta1_deg = [linspace(0, 45, puntos), 45 * ones(1, puntos)];
theta2_deg = [zeros(1, puntos), linspace(0, 45, puntos)];

figure;
hold on; 
axis equal;
grid on;
xlim([-(L1+L2+1), (L1+L2+1)]);
ylim([-(L1+L2+1), (L1+L2+1)]);
xlabel('X'); ylabel('Y');

hBrazo = plot([0 0 0], [0 0 0], '-o', 'LineWidth', 3, 'MarkerSize', 8, 'Color', 'b');

for k = 1:length(theta1_deg)
    q1 = deg2rad(theta1_deg(k));
    q2 = deg2rad(theta2_deg(k));
    
    T01 = RotZ(q1);
    T12 = Traslacion(L1, 0, 0) * RotZ(q2);
    T02 = T01 * T12;
    
    P0 = [0; 0; 0; 1];
    P1 = T01 * [L1; 0; 0; 1];
    P2 = T02 * [L2; 0; 0; 1];
    
    set(hBrazo, 'XData', [P0(1), P1(1), P2(1)], 'YData', [P0(2), P1(2), P2(2)]);
    drawnow;
    pause(0.02);
end

function T = Traslacion(tx, ty, tz)
    T = [1 0 0 tx;
         0 1 0 ty;
         0 0 1 tz;
         0 0 0  1];
end

function R = RotZ(theta)
    R = [cos(theta) -sin(theta)  0  0;
         sin(theta)  cos(theta)  0  0;
         0           0           1  0;
         0           0           0  1];
end