function puntos = SolucionMatrices(L, Theta)
t1 = Theta(1); t2 = Theta(2); t3 = Theta(3); t4 = Theta(4);
l1 = L(1); l2 = L(2); l3 = L(3);

A1 = matriz_dh(t1, 0, 0, pi/2);
A2 = matriz_dh(t2, 0, l1, 0);
A3 = matriz_dh(t3, 0, l2, 0);
A4 = matriz_dh(t4, 0, l3, 0);

T1 = A1;
T2 = T1 * A2;
T3 = T2 * A3;
T4 = T3 * A4;

p0 = [0, 0, 0];
p1 = T2(1:3, 4)'; 
p2 = T3(1:3, 4)';
p3 = T4(1:3, 4)';

puntos = [p0; p1; p2; p3];
end