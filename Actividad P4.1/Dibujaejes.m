function Dibujaejes(AxisLenght)
%DIBUJAEJES Summary of this function goes here
%   Detailed explanation goes here
Delta = [-AxisLenght AxisLenght];

line(Delta, [0 0], [0 0], 'LineWidth',2, 'Color', 'red');
line([0 0], Delta, [0 0], 'LineWidth',2, 'Color', 'blue');
line([0 0], [0 0], Delta, 'LineWidth',2, 'Color', 'green');

view(45, 30)

hold on;
grid on;

axis equal;

end