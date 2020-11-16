% jones matrix for PP with fast axis, sin and cos in radians
% input angle x is the angle w.r.t. to the horizontal axis
function y = PP(x)
%y = exp(-1i*pi/2)*[cos(x), sin(x); sin(x), cos(x)];
y = [1, 0; 0, exp(1i*x)];
end