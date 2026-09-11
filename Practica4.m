clc;
clear;
close all;

% Entrada de longitudes de los eslabones
L1 = input('Introduce la longitud del primer eslabon [m]: ');
L2 = input('Introduce la longitud del 2do eslabon [m]: ');
L3 = input('Introduce la longitud del tercer [m]: ');

% Ángulos fijados a 45 grados cada uno
theta1 = 45;
theta2 = 45;
theta3 = 45;

figure('Name','Simulación de un dedo','NumberTitle','off');
grid on;
axis equal;
hold on;

limite = L1 + L2 + L3 + 20;
xlim([-limite limite]);
ylim([-limite limite]);
xlabel('Posición X [m]');
ylabel('Posición Y [m]');
title('Movimiento de un dedo');

pasos = 100;
for i = 1:pasos
    ang1 = theta1 * i / pasos;
    ang2 = theta2 * i / pasos;
    ang3 = theta3 * i / pasos;
    
    % Convertir a radianes
    t1 = deg2rad(ang1);
    t2 = deg2rad(ang2);
    t3 = deg2rad(ang3);
    
    x0 = 0;
    y0 = 0;
    x1 = L1*cos(t1);
    y1 = L1*sin(t1);
    x2 = x1 + L2*cos(t1+t2);
    y2 = y1 + L2*sin(t1+t2);
    x3 = x2 + L3*cos(t1+t2+t3);
    y3 = y2 + L3*sin(t1+t2+t3);
    
    cla;
    plot([x0 x1], [y0 y1],'LineWidth',6);
    hold on;
    plot([x1 x2], [y1 y2], 'LineWidth',6);
    plot([x2 x3], [y2 y3], 'LineWidth',6);
    
    plot(x0,y0,'o','MarkerSize',12,'MarkerFaceColor','blue');
    plot(x1,y1,'o','MarkerSize',12,'MarkerFaceColor','red');
    plot(x2,y2,'o','MarkerSize',12,'MarkerFaceColor','r');
    plot(x3,y3,'o','MarkerSize',12,'MarkerFaceColor','b');
    
    title(sprintf(['Simulación del dedo\n','\\theta_1 = %.1f°   \\theta_2 = %.1f°   \\theta_3 = %.1f°'], ang1, ang2, ang3));
    xlabel('X [m]');
    ylabel('Y [m]');
    grid on;
    axis equal;
    xlim([-limite limite]);
    ylim([-limite limite]);
    drawnow;
    pause(0.03);
end