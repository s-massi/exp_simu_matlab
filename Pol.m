% jones matrix for polariser, sin and cos in radians
% input angle x is the angle w.r.t. to the horizontal axis
function y = Pol(x)
angle = x+pi/2;
y = [sin(angle)^2, -sin(angle)*cos(angle); -sin(angle)*cos(angle), cos(angle)^2];
end