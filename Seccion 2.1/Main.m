function Main()
ventana = figure('Name', 'Simulacion GUI', 'Position', [100, 100, 750, 450]);

uicontrol('Style', 'text', 'String', 'L1:', 'Position', [20, 380, 30, 20], 'HorizontalAlignment', 'left');
h.entrada_l1 = uicontrol('Style', 'edit', 'String', '10', 'Position', [60, 380, 50, 20], 'Callback', @Actualizar);

uicontrol('Style', 'text', 'String', 'L2:', 'Position', [20, 350, 30, 20], 'HorizontalAlignment', 'left');
h.entrada_l2 = uicontrol('Style', 'edit', 'String', '10', 'Position', [60, 350, 50, 20], 'Callback', @Actualizar);

uicontrol('Style', 'text', 'String', 'L3:', 'Position', [20, 320, 30, 20], 'HorizontalAlignment', 'left');
h.entrada_l3 = uicontrol('Style', 'edit', 'String', '5', 'Position', [60, 320, 50, 20], 'Callback', @Actualizar);

uicontrol('Style', 'text', 'String', 'Theta 1:', 'Position', [20, 270, 50, 20], 'HorizontalAlignment', 'left');
h.entrada_t1 = uicontrol('Style', 'edit', 'String', '30', 'Position', [80, 270, 50, 20], 'Callback', @Actualizar);

uicontrol('Style', 'text', 'String', 'Theta 2:', 'Position', [20, 240, 50, 20], 'HorizontalAlignment', 'left');
h.entrada_t2 = uicontrol('Style', 'edit', 'String', '30', 'Position', [80, 240, 50, 20], 'Callback', @Actualizar);

uicontrol('Style', 'text', 'String', 'Theta 3:', 'Position', [20, 210, 50, 20], 'HorizontalAlignment', 'left');
h.entrada_t3 = uicontrol('Style', 'edit', 'String', '30', 'Position', [80, 210, 50, 20], 'Callback', @Actualizar);

uicontrol('Style', 'text', 'String', 'Theta 4:', 'Position', [20, 180, 50, 20], 'HorizontalAlignment', 'left');
h.entrada_t4 = uicontrol('Style', 'edit', 'String', '-30', 'Position', [80, 180, 50, 20], 'Callback', @Actualizar);

h.casilla_metodo = uicontrol('Style', 'checkbox', ...
    'String', 'Usar Matrices de Transformacion', ...
    'Position', [20, 120, 350, 20], ...
    'Callback', @Actualizar);

h.grafico = axes('Position', [0.45, 0.1, 0.5, 0.8]);

guidata(ventana, h);
Actualizar(ventana, []);
end