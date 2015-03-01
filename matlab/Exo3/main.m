%% initialization
clc
clear

d=200; % The dimension
Gamma=(100-.01)/d*(1:d)+.01; % Regularly spaced d-dim. array
Gamma=diag(Gamma);
N=10000; 
c=10;
n0=100;
x0=zeros(1,d);


%% question 1

[X,accpt] = nsrwHM(x0,N,c,d,Gamma);

tr=X(:,1)'./(1:N);
figure(1),
subplot(2,1,1),
plot(tr);
title('The trace plot of the first component of X');

alpha=accpt(n0:N);
alpha=alpha';
alphaN=cumsum(alpha)./(n0:N);
subplot(2,1,2),
plot(alphaN);
title('The evolution fo the acceptance rate');

%% question 2

[X,accpt,lambda,subopt] = asrwHM(x0,N,n0,c,d,Gamma);

tr=X(:,1)'./(1:N);
figure(2),
subplot(3,1,1),
plot(tr);
title('The trace plot of the first component of X');

alpha=accpt(n0:N);
alpha=alpha';
alphaN=cumsum(alpha)./(n0:N);
subplot(3,1,2),
plot(alphaN);
title('The evolution of the acceptance rate');

subplot(3,1,3),
plot(subopt);
title('The evolution of the suboptimality factor');

