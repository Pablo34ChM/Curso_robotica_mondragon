x_ef = input('Introduce la coordenada X del efector final (efx): ');
y_ef = input('Introduce la coordenada Y del efector final (efy): ');
L1 = input('Introduce la longitud del eslabón 1 (Longb1): ');
L2 = input('Introduce la longitud del eslabón 2 (Long 2): ');

% Cálculos geométricos
r = sqrt(x_ef^2 + y_ef^2);

% Verificación de alcance
if r > (L1 + L2) || r < abs(L1 - L2)
    error('El punto está fuera del espacio de trabajo del robot.');
end

beta = atan2(y_ef, x_ef);

% Ley de cosenos para ángulos internos
alpha = acos((L1^2 + r^2 - L2^2) / (2 * L1 * r));
gamma = acos((L1^2 + L2^2 - r^2) / (2 * L1 * L2));

% Cálculo de Theta 1 y Theta 2 (Codo abajo según la imagen)
theta1 = beta - alpha;
theta2 = pi - gamma; % 180 grados = pi radianes

% Mostrar resultados en grados
fprintf('Theta 1: %.2f grados\n', rad2deg(theta1));
fprintf('Theta 2: %.2f grados\n', rad2deg(theta2));

% --- Animación ---
% Posiciones de las articulaciones
x0 = 0; y0 = 0;
x1 = L1 * cos(theta1);
y1 = L1 * sin(theta1);
x2 = x_ef;
y2 = y_ef;

figure;
axis([-(L1+L2), (L1+L2), -(L1+L2), (L1+L2)]);
grid on; hold on;
title('Animación del Brazo Robótico (Codo Abajo)');
xlabel('X'); ylabel('Y');

% Dibujar base
plot(x0, y0, 'ks', 'MarkerSize', 10, 'MarkerFaceColor', 'k');

% Animación del movimiento (interpolación lineal simple)
frames = 50;
for i = 1:frames
    t1_anim = (i/frames) * theta1;
    t2_anim = (i/frames) * theta2;

    x1_a = L1 * cos(t1_anim);
    y1_a = L1 * sin(t1_anim);

    x2_a = x1_a + L2 * cos(t1_anim + t2_anim);
    y2_a = y1_a + L2 * sin(t1_anim + t2_anim);

    if exist('brazo', 'var')
        delete(brazo);
        delete(articulacion);
    end

    % Dibujar eslabones y articulación intermedia
    brazo = plot([x0, x1_a, x2_a], [y0, y1_a, y2_a], '-o', 'LineWidth', 4, 'Color', 'b');
    articulacion = plot(x1_a, y1_a, 'ro', 'MarkerSize', 6, 'MarkerFaceColor', 'r');

    pause(0.05);
end

% Marcar el efector final
plot(x2, y2, 'g*', 'MarkerSize', 10);