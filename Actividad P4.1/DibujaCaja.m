function DibujaCaja(PontMatrix)

P1= PontMatrix(:,1);
P2= PontMatrix(:,2);
P3= PontMatrix(:,3);
P4= PontMatrix(:,4);
P5= PontMatrix(:,5);
P6= PontMatrix(:,6);
P7= PontMatrix(:,7);
P8= PontMatrix(:,8);

LineaPuntos(P1,P2, 'Black');
LineaPuntos(P1,P3, 'Black');
LineaPuntos(P2,P4, 'Black');
LineaPuntos(P3,P4, 'Black');

LineaPuntos(P5,P6, 'Black');
LineaPuntos(P5,P7, 'Black');
LineaPuntos(P6,P8, 'Black');
LineaPuntos(P7,P8, 'Black');

LineaPuntos(P1,P5, 'Black');
LineaPuntos(P2,P6, 'Black');
LineaPuntos(P3,P7, 'Black');
LineaPuntos(P4,P8, 'Black');

end
