% jones matrix for HWP with fast axis, sin and cos in radians
% input angle x is the angle w.r.t. to the horizontal axis
function y = HWP(x)
%y = exp(-1i*pi/2)*[cos(x), sin(x); sin(x), cos(x)];
y = [cos(2*x), sin(2*x); sin(2*x), -cos(2*x)];
end