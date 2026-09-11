clear all
close all

Dibujaejes(10);

[Ancho, Largo, Alto]= LeerDimensiones();
fprintf("[DEBUG] Ancho: %f | Largo: %f | Alto: %f\n ", Ancho, Largo, Alto);

PointMatrix = GetPointMatrix (Largo, Ancho, Alto, 0, 0, 0);

DibujaCaja(PointMatrix);

theta = input("Indica el ángulo de rotación[rad]")

NewPoints = MoverCaja(theta, PointMatrix);

DibujaCaja(NewPoints);
