function newPoints = TrasladarCaja(dx,dy,dz,PointMatrix)

T = [1 0 0 dx;
    0 1 0 dy;
    0 0 1 dz;
    0 0 0 1];

newPoints = T * PointMatrix;

endfunction newPoints = TrasladarCaja(dx,dy,dz,PointMatrix)

T = [1 0 0 dx;
    0 1 0 dy;
    0 0 1 dz;
    0 0 0 1];

newPoints = T * PointMatrix;

end