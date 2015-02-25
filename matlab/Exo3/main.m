%% initialization

d=200; % The dimension
Gamma=(100-.01)/d*(1:d)+.01; % Regularly spaced d-dim. array
Gamma=diag(Gamma);
N=100; 
c=1;


%% question 1

[X,alpha] = nsrwHM(zeros(1,d),N,c,d,Gamma);