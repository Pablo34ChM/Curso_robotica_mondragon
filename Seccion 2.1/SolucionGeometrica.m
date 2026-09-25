function puntos = SolucionGeometrica(L, Theta)
t1 = Theta(1); t2 = Theta(2); t3 = Theta(3); t4 = Theta(4);
l1 = L(1); l2 = L(2); l3 = L(3);

r1 = l1 * cos(t2);
z1 = l1 * sin(t2);

r2 = r1 + l2 * cos(t2 + t3);
z2 = z1 + l2 * sin(t2 + t3);

r3 = r2 + l3 * cos(t2 + t3 + t4);
z3 = z2 + l3 * sin(t2 + t3 + t4);

p0 = [0, 0, 0];
p1 = [r1 * cos(t1), r1 * sin(t1), z1];
p2 = [r2 * cos(t1), r2 * sin(t1), z2];
p3 = [r3 * cos(t1), r3 * sin(t1), z3];

puntos = [p0; p1; p2; p3];
end