function NewPoints = MoverCaja(theta,PointMatrix)


P1=PointMatrix(:, 1);
P2=PointMatrix(:, 2);
P3=PointMatrix(:, 3);
P4=PointMatrix(:, 4);
P5=PointMatrix(:, 5);
P6=PointMatrix(:, 6);
P7=PointMatrix(:, 7);
P8=PointMatrix(:, 8);

P1T= Rz(theta)*P1;
P2T= Rz(theta)*P2;
P3T= Rz(theta)*P3;
P4T= Rz(theta)*P4;
P5T= Rz(theta)*P5;
P6T= Rz(theta)*P6;
P7T= Rz(theta)*P7;
P8T= Rz(theta)*P8;

NewPoints = [P1T, P2T, P3T, P4T, P5T, P6T, P7T, P8T];

end