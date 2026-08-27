a = 4; b = 2; c = 3;

V = [0 0 0;
     a 0 0;
     a b 0;
     0 b 0;
     0 0 c;
     a 0 c;
     a b c;
     0 b c];

caras = [1 2 3 4;
         5 6 7 8;
         1 2 6 5;
         2 3 7 6;
         3 4 8 7;
         4 1 5 8];

figure;
patch('Faces', caras, 'Vertices', V, 'FaceColor', 'red', 'FaceAlpha', 0.5, 'LineWidth', 1.5);
axis equal; grid on; view(3);
xlabel('X'); ylabel('Y'); zlabel('Z');