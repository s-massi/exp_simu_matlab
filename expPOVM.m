clc; clear all;

%% some definitions

% jones matrix for PBS
% works for vectors expressed as [a_h;a_v;b_h;b_v]
PBS = [1,0,0,0;0,0,0,1i;0,0,1,0;0,1i,0,0];

%initial states:
hh = [1;0;0;0;0;0;0;0];
phi_plus = [1;0;0;1;0;0;0;0]/sqrt(2);

%some operators

%% LOOK FOR ALICE POVM_1 and POVM_4 SETTINGS

% remember to run script "expPROJ.m" here!!

options = optimoptions('fsolve','FunctionTolerance',1.0e-10,'StepTolerance',1.0e-10);
A_POVM1 = fsolve(@A1_povm,[0,22.4,31,135],options)

%% check
output = kron(blkdiag(QWP(deg2rad(A_POVM1(1)))*HWP(deg2rad(A_POVM1(2)))*PP(deg2rad(A_POVM1(4))),QWP(deg2rad(45))*HWP(deg2rad(22.5)))*SAG(deg2rad(A_POVM1(3)),deg2rad(45-A_POVM1(3))),B4)*phi_plus;
output.*conj(output)

%% expected?
% solution 1
out_exp1_1 = kron(blkdiag(QWP(deg2rad(45))*HWP(deg2rad(0))*PP(deg2rad(45)),QWP(deg2rad(0))*HWP(deg2rad(22.5))*PP(deg2rad(135)))*SAG(deg2rad(A_POVM1(3)),deg2rad(45-A_POVM1(3))),B1)*phi_plus;
out_exp1_1.*conj(out_exp1_1)
out_exp1_2 = kron(blkdiag(QWP(deg2rad(45))*HWP(deg2rad(0))*PP(deg2rad(45)),QWP(deg2rad(0))*HWP(deg2rad(22.5))*PP(deg2rad(135)))*SAG(deg2rad(A_POVM1(3)),deg2rad(45-A_POVM1(3))),B2)*phi_plus;
out_exp1_2.*conj(out_exp1_2)
out_exp1_3 = kron(blkdiag(QWP(deg2rad(45))*HWP(deg2rad(0))*PP(deg2rad(45)),QWP(deg2rad(0))*HWP(deg2rad(22.5))*PP(deg2rad(135)))*SAG(deg2rad(A_POVM1(3)),deg2rad(45-A_POVM1(3))),B3)*phi_plus;
out_exp1_3.*conj(out_exp1_3)
out_exp1_4 = kron(blkdiag(QWP(deg2rad(45))*HWP(deg2rad(0))*PP(deg2rad(45)),QWP(deg2rad(0))*HWP(deg2rad(22.5))*PP(deg2rad(135)))*SAG(deg2rad(A_POVM1(3)),deg2rad(45-A_POVM1(3))),B4)*phi_plus;
out_exp1_4.*conj(out_exp1_4)

% solution 2
out_exp2_1 = kron(blkdiag(QWP(deg2rad(45))*HWP(deg2rad(0))*PP(deg2rad(45)),QWP(deg2rad(45))*HWP(deg2rad(0))*PP(deg2rad(45)))*SAG(deg2rad(A_POVM1(3)),deg2rad(45-A_POVM1(3))),B1)*phi_plus;
out_exp2_1.*conj(out_exp2_1)
out_exp2_2 = kron(blkdiag(QWP(deg2rad(45))*HWP(deg2rad(0))*PP(deg2rad(45)),QWP(deg2rad(45))*HWP(deg2rad(0))*PP(deg2rad(45)))*SAG(deg2rad(A_POVM1(3)),deg2rad(45-A_POVM1(3))),B2)*phi_plus;
out_exp2_2.*conj(out_exp2_2)
out_exp2_3 = kron(blkdiag(QWP(deg2rad(45))*HWP(deg2rad(0))*PP(deg2rad(45)),QWP(deg2rad(45))*HWP(deg2rad(0))*PP(deg2rad(45)))*SAG(deg2rad(A_POVM1(3)),deg2rad(45-A_POVM1(3))),B3)*phi_plus;
out_exp2_3.*conj(out_exp2_3)
out_exp2_4 = kron(blkdiag(QWP(deg2rad(45))*HWP(deg2rad(0))*PP(deg2rad(45)),QWP(deg2rad(45))*HWP(deg2rad(0))*PP(deg2rad(45)))*SAG(deg2rad(A_POVM1(3)),deg2rad(45-A_POVM1(3))),B4)*phi_plus;
out_exp2_4.*conj(out_exp2_4)

% solution 3
out_exp3_1 = kron(blkdiag(QWP(deg2rad(0))*HWP(deg2rad(22.5))*PP(deg2rad(135)),QWP(deg2rad(0))*HWP(deg2rad(22.5))*PP(deg2rad(135)))*SAG(deg2rad(A_POVM1(3)),deg2rad(45-A_POVM1(3))),B1)*phi_plus;
out_exp3_1.*conj(out_exp3_1)
out_exp3_2 = kron(blkdiag(QWP(deg2rad(0))*HWP(deg2rad(22.5))*PP(deg2rad(135)),QWP(deg2rad(0))*HWP(deg2rad(22.5))*PP(deg2rad(135)))*SAG(deg2rad(A_POVM1(3)),deg2rad(45-A_POVM1(3))),B2)*phi_plus;
out_exp3_2.*conj(out_exp3_2)
out_exp3_3 = kron(blkdiag(QWP(deg2rad(0))*HWP(deg2rad(22.5))*PP(deg2rad(135)),QWP(deg2rad(0))*HWP(deg2rad(22.5))*PP(deg2rad(135)))*SAG(deg2rad(A_POVM1(3)),deg2rad(45-A_POVM1(3))),B3)*phi_plus;
out_exp3_3.*conj(out_exp3_3)
out_exp3_4 = kron(blkdiag(QWP(deg2rad(0))*HWP(deg2rad(22.5))*PP(deg2rad(135)),QWP(deg2rad(0))*HWP(deg2rad(22.5))*PP(deg2rad(135)))*SAG(deg2rad(A_POVM1(3)),deg2rad(45-A_POVM1(3))),B4)*phi_plus;
out_exp3_4.*conj(out_exp3_4)

%% RANDOM
%a = PBS*blkdiag(QWP(deg2rad(45))*HWP(deg2rad(0))*PP(deg2rad(45)),QWP(deg2rad(0))*HWP(deg2rad(22.5))*PP(deg2rad(135)))*SAG(deg2rad(A_POVM1(3)),deg2rad(45-A_POVM1(3)))*[1;0;0;0];
%a.*conj(a);
SAG(0,0)*[a;b;0;0]