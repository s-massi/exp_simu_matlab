clc; clear all;

%% DEFINITIONS

% initial states [ah_ch;ah_cv;av_ch;av_cv]
hh = [1;0;0;0];
phi_plus = [1;0;0;1]/sqrt(2);

%Alice's measurements
A1 = QWP(deg2rad(0))*HWP(deg2rad(22.5));
A2 = QWP(deg2rad(-45))*HWP(deg2rad(0));
A3 = QWP(deg2rad(0))*HWP(deg2rad(0));

%Bob's measurements [qwp1 hwp1;qwp2 hwp2;qwp3 hwp3;qwp4 hwp4]
B = zeros(4,2);

%A1_B1 = kron(A1,B1)*phi_plus;

%E2Q(A1_B1);

%% LOOK FOR BOB 1 SETTINGS
% fsolve
%opts = optimoptions(@fsolve,'Display','off','Algorithm','trust-region');
B(1,:) = fsolve(@B1_proj,[7,40]);

% lsqnonlin
lb = [-45,-45];
ub = [45,45];
rng default
w0 = 10*randn(2,1);
[w,res] = lsqnonlin(@B1_proj,w0,lb,ub);

%% LOOK FOR BOB 2 SETTINGS
% fsolve
B(2,:) = fsolve(@B2_proj,[7,40]);

%% LOOK FOR BOB 3 SETTINGS
% fsolve
B(3,:) = fsolve(@B3_proj,[7,4]);

%% LOOK FOR BOB 4 SETTINGS
% fsolve
B(4,:) = fsolve(@B4_proj,[7,4]);

%% Declare Bob's measurement operators
global B1 B2 B3 B4
B1 = QWP(deg2rad(B(1,1)))*HWP(deg2rad(B(1,2)));
B2 = QWP(deg2rad(B(2,1)))*HWP(deg2rad(B(2,2)));
B3 = QWP(deg2rad(B(3,1)))*HWP(deg2rad(B(3,2)));
B4 = QWP(deg2rad(B(4,1)))*HWP(deg2rad(B(4,2)));