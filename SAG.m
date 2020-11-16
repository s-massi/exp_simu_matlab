%%
%Sagnac loop - function definition
%jones matrix for Sagnac loop with two HWPs. a --> HWP_t; b --> HWP_r
%PBS*(HWP_t \oplus HWP_r)*PBS
% works for vectors expressed as [a_h;a_v;b_h;b_v]
% input angles t,r are angles w.r.t. to the horizontal axes in radians
function y = SAG(t,r)

y = [1,0,0,0;0,0,0,1i;0,0,1,0;0,1i,0,0]*blkdiag(HWP(t),HWP(r))*[1,0,0,0;0,0,0,1i;0,0,1,0;0,1i,0,0];
end
