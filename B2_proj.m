function y = B2_proj(x)
%B2_PROJ function that takes qwp and hwp angles as input and returns 0 for
%each component of y if inputs are solutions
y(1) = E2Q(kron(QWP(deg2rad(0))*HWP(deg2rad(22.5)),QWP(deg2rad(x(1)))*HWP(deg2rad(x(2))))*[1;0;0;1]/sqrt(2))-1/sqrt(3);
y(2) = E2Q(kron(QWP(deg2rad(-45))*HWP(deg2rad(0)),QWP(deg2rad(x(1)))*HWP(deg2rad(x(2))))*[1;0;0;1]/sqrt(2))+1/sqrt(3);
y(3) = E2Q(kron(QWP(deg2rad(0))*HWP(deg2rad(0)),QWP(deg2rad(x(1)))*HWP(deg2rad(x(2))))*[1;0;0;1]/sqrt(2))+1/sqrt(3);
end

