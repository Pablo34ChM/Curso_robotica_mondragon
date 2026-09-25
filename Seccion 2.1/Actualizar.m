function Actualizar(src, ~)
if strcmp(src.Type, 'figure')
    fig = src;
else
    fig = src.Parent;
end

h = guidata(fig);
[L, Theta, metodo] = LeerParametros(h);

if metodo == 0
    puntos = SolucionGeometrica(L, Theta);
    titulo = 'Solucion Geometrica';
else
    puntos = SolucionMatrices(L, Theta);
    titulo = 'Matrices de Transformacion';
end

DibujaBrazo(h.grafico, puntos, titulo);
end