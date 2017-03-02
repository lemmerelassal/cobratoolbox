% The COBRAToolbox: testSelMatrix.m
%
% Purpose:
%     - testSelMatrix tests the functionality of selMatrix()
%       and checks solution against a known solution.
%
% Authors:
%     - Lemmer El Assal February 2017
%

% define the path to The COBRAToolbox
pth = which('initCobraToolbox.m');
CBTDIR = pth(1:end-(length('initCobraToolbox.m') + 1));

initTest([CBTDIR, filesep, 'test', filesep, 'verifiedTests', filesep, 'testTools']);

ref_selMat1 = zeros(2,6);
ref_selMat2 = zeros(2,6);

ref_selMat1(1, 1) = 1;
ref_selMat1(2, 4) = 1;

ref_selMat2(1, 1) = 1;
ref_selMat2(2, 4) = 1;
ref_selMat2(2, 5) = -1;

ref_selMat1 = sparse(ref_selMat1);
ref_selMat2 = sparse(ref_selMat2);

selVec1 = [1, 0, 0, 1, 0, 0];
selVec2 = [1, 0, 0, 1, -1, 0];


selMat1 = selMatrix(selVec1);
selMat2 = selMatrix(selVec2);
assert(isequal(selMat1, ref_selMat1))
assert(isequal(selMat2, ref_selMat2))


% change the directory
cd(CBTDIR)
