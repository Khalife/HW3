%% initialization

d=200; % The dimension
Gamma=(100-.01)/d*(1:d)+.01; % Regularly spaced d-dim. array
Gamma=diag(Gamma);
N=10000; 
c=1;
n0=100;


%% question 1

[X,accpt] = nsrwHM(zeros(1,d),N,c,d,Gamma);

tr=X(:,1)'./(1:N);
plot(tr);

alpha=accpt(n0:N);
alpha=alpha';
alphaN=cumsum(alpha)./(n0:N);