function y = E2Q(x)
%E2Q Takes a 2-qubit state as input and returns the expectation value
%   State in form [hh;hv;vh;vv]
y = abs(x(1))^2 - abs(x(2))^2 - abs(x(3))^2 + abs(x(4))^2
end

