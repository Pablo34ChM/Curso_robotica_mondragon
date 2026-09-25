function [L, Theta, metodo] = LeerParametros(h)
L = zeros(1,3);
L(1) = str2double(get(h.entrada_l1, 'String'));
L(2) = str2double(get(h.entrada_l2, 'String'));
L(3) = str2double(get(h.entrada_l3, 'String'));

Theta = zeros(1,4);
Theta(1) = deg2rad(str2double(get(h.entrada_t1, 'String')));
Theta(2) = deg2rad(str2double(get(h.entrada_t2, 'String')));
Theta(3) = deg2rad(str2double(get(h.entrada_t3, 'String')));
Theta(4) = deg2rad(str2double(get(h.entrada_t4, 'String')));

metodo = get(h.casilla_metodo, 'Value');
end