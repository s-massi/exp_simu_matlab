function y = A1_povm(x)
%A1_povm function that takes qwp and hwp angles as input and returns 0 for
%each component of y if inputs are solutions
%some definitions
phi_plus = [1;0;0;1;0;0;0;0]/sqrt(2);
global B1 B2 B3 B4
hwt = 45-13.6839;
y(1) = abs([1 0 0 0 0 0 0 0]*kron(blkdiag(QWP(deg2rad(x(1)))*HWP(deg2rad(x(2)))*PP(deg2rad(x(4))),QWP(deg2rad(45))*HWP(deg2rad(22.5)))*SAG(deg2rad(x(3)),deg2rad(45-x(3))),B1)*phi_plus)^2;
y(2) = abs([0 1 0 0 0 0 0 0]*kron(blkdiag(QWP(deg2rad(x(1)))*HWP(deg2rad(x(2)))*PP(deg2rad(x(4))),QWP(deg2rad(45))*HWP(deg2rad(22.5)))*SAG(deg2rad(x(3)),deg2rad(45-x(3))),B1)*phi_plus)^2-1/4;
y(3) = abs([1 0 0 0 0 0 0 0]*kron(blkdiag(QWP(deg2rad(x(1)))*HWP(deg2rad(x(2)))*PP(deg2rad(x(4))),QWP(deg2rad(45))*HWP(deg2rad(22.5)))*SAG(deg2rad(x(3)),deg2rad(45-x(3))),B2)*phi_plus)^2 + abs([0 1 0 0 0 0 0 0]*kron(blkdiag(QWP(deg2rad(x(1)))*HWP(deg2rad(x(2)))*PP(deg2rad(x(4))),QWP(deg2rad(45))*HWP(deg2rad(22.5)))*SAG(deg2rad(x(3)),deg2rad(45-x(3))),B2)*phi_plus)^2 -1/4;
y(4) = abs([1 0 0 0 0 0 0 0]*kron(blkdiag(QWP(deg2rad(x(1)))*HWP(deg2rad(x(2)))*PP(deg2rad(x(4))),QWP(deg2rad(45))*HWP(deg2rad(22.5)))*SAG(deg2rad(x(3)),deg2rad(45-x(3))),B3)*phi_plus)^2 + abs([0 1 0 0 0 0 0 0]*kron(blkdiag(QWP(deg2rad(x(1)))*HWP(deg2rad(x(2)))*PP(deg2rad(x(4))),QWP(deg2rad(45))*HWP(deg2rad(22.5)))*SAG(deg2rad(x(3)),deg2rad(45-x(3))),B3)*phi_plus)^2 -1/4;
y(5) = abs([1 0 0 0 0 0 0 0]*kron(blkdiag(QWP(deg2rad(x(1)))*HWP(deg2rad(x(2)))*PP(deg2rad(x(4))),QWP(deg2rad(45))*HWP(deg2rad(22.5)))*SAG(deg2rad(x(3)),deg2rad(45-x(3))),B4)*phi_plus)^2 + abs([0 1 0 0 0 0 0 0]*kron(blkdiag(QWP(deg2rad(x(1)))*HWP(deg2rad(x(2)))*PP(deg2rad(x(4))),QWP(deg2rad(45))*HWP(deg2rad(22.5)))*SAG(deg2rad(x(3)),deg2rad(45-x(3))),B4)*phi_plus)^2 -1/4;
%aV_cH = abs([0 0 1 0 0 0 0 0]*kron(blkdiag(QWP(deg2rad(x(1)))*HWP(deg2rad(x(2))),QWP(deg2rad(x(3)))*HWP(deg2rad(x(4))))*SAG(deg2rad(x(5)),deg2rad(45-x(5))),B1)*phi_plus)^2;
%aV_cV = abs([0 0 0 1 0 0 0 0]*kron(blkdiag(QWP(deg2rad(x(1)))*HWP(deg2rad(x(2))),QWP(deg2rad(x(3)))*HWP(deg2rad(x(4))))*SAG(deg2rad(x(5)),deg2rad(45-x(5))),B1)*phi_plus)^2;
%y(3) = aV_cH - 0.1633;
%y(4) = aV_cV - 0.0867;
%bH_cH = abs([0 0 0 0 1 0 0 0]*kron(blkdiag(QWP(deg2rad(x(1)))*HWP(deg2rad(x(2))),QWP(deg2rad(x(3)))*HWP(deg2rad(x(4))))*SAG(deg2rad(x(5)),deg2rad(45-x(5))),B1)*phi_plus)^2;
%bH_cV = abs([0 0 0 0 0 1 0 0]*kron(blkdiag(QWP(deg2rad(x(1)))*HWP(deg2rad(x(2))),QWP(deg2rad(x(3)))*HWP(deg2rad(x(4))))*SAG(deg2rad(x(5)),deg2rad(45-x(5))),B1)*phi_plus)^2;
%y(4) = bH_cH - 0.1633;
%y(5) = bH_cV - 0.0867;
%bV_cH = abs([0 0 0 0 0 0 1 0]*kron(blkdiag(QWP(deg2rad(x(1)))*HWP(deg2rad(x(2))),QWP(deg2rad(x(3)))*HWP(deg2rad(x(4))))*SAG(deg2rad(x(5)),deg2rad(45-x(5))),B1)*phi_plus)^2;
%bV_cV = abs([0 0 0 0 0 0 0 1]*kron(blkdiag(QWP(deg2rad(x(1)))*HWP(deg2rad(x(2))),QWP(deg2rad(x(3)))*HWP(deg2rad(x(4))))*SAG(deg2rad(x(5)),deg2rad(45-x(5))),B1)*phi_plus)^2;
%y(6) = bV_cH - 0.1633;
%y(7) = bV_cV - 0.0867;

%add conditions from other bob's settings
%y(3) = abs([0 0 1 0 0 0 0 0]*kron(blkdiag(QWP(deg2rad(x(1)))*HWP(deg2rad(x(2))),QWP(deg2rad(x(3)))*HWP(deg2rad(x(4))))*SAG(deg2rad(x(5)),deg2rad(45-x(5))),B2)*phi_plus)^2;
%y(4) = abs([0 0 0 1 0 0 0 0]*kron(blkdiag(QWP(deg2rad(x(1)))*HWP(deg2rad(x(2))),QWP(deg2rad(x(3)))*HWP(deg2rad(x(4))))*SAG(deg2rad(x(5)),deg2rad(45-x(5))),B2)*phi_plus)^2-1/4;
%y(5) = abs([0 0 0 0 1 0 0 0]*kron(blkdiag(QWP(deg2rad(x(1)))*HWP(deg2rad(x(2))),QWP(deg2rad(x(3)))*HWP(deg2rad(x(4))))*SAG(deg2rad(x(5)),deg2rad(45-x(5))),B3)*phi_plus)^2;
%y(6) = abs([0 0 0 0 0 1 0 0]*kron(blkdiag(QWP(deg2rad(x(1)))*HWP(deg2rad(x(2))),QWP(deg2rad(x(3)))*HWP(deg2rad(x(4))))*SAG(deg2rad(x(5)),deg2rad(45-x(5))),B3)*phi_plus)^2-1/4;
%y(7) = abs([0 0 0 0 0 0 1 0]*kron(blkdiag(QWP(deg2rad(x(1)))*HWP(deg2rad(x(2))),QWP(deg2rad(x(3)))*HWP(deg2rad(x(4))))*SAG(deg2rad(x(5)),deg2rad(45-x(5))),B4)*phi_plus)^2;
%y(8) = abs([0 0 0 0 0 0 0 1]*kron(blkdiag(QWP(deg2rad(x(1)))*HWP(deg2rad(x(2))),QWP(deg2rad(x(3)))*HWP(deg2rad(x(4))))*SAG(deg2rad(x(5)),deg2rad(45-x(5))),B4)*phi_plus)^2-1/4;
end

