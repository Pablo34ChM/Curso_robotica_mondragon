function DibujaBrazo(grafico, puntos, titulo)
cla(grafico);
hold(grafico, 'on');

plot3(grafico, puntos(:,1), puntos(:,2), puntos(:,3), '-o', 'LineWidth', 2, 'MarkerSize', 6);

grid(grafico, 'on');
axis(grafico, 'equal');
view(grafico, 3);
xlabel(grafico, 'X'); 
ylabel(grafico, 'Y'); 
zlabel(grafico, 'Z');
title(grafico, titulo);
hold(grafico, 'off');
end