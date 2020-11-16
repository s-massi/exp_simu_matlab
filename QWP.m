% jones matrix for QWP with fast axis, sin and cos in radians
% input angle x is the angle w.r.t. to the horizontal axis
function y = QWP(x)
%y = exp(-1i*pi/4)*[cos(x)^2 + 1i*sin(x)^2, (1-1i)*sin(x)*cos(x); (1-1i)*sin(x)*cos(x), sin(x)^2 + 1i*cos(x)^2];
y = [cos(x)^2 + 1i*sin(x)^2, (1-1i)*sin(x)*cos(x); (1-1i)*sin(x)*cos(x), sin(x)^2 + 1i*cos(x)^2];
end