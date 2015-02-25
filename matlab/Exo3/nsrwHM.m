function [X,alpha] = nsrwHM(x0,N,c)
% function [X,alpha] = nsrwHM(x0,N)
%   X the HM sequence simulating Pi
%   naive symetric random walk
%   x0 the initial value
%   N the number of iterations
    
    u=0; % this variable will store the uniform distribution to simuate a bernoulli dist.
    alpha=zeros(N,1); %the acceptation rate
    Y=0; % the proposal
    
    X=zeros(N,1);
    X(1)=x0;
    
    for n=2:N
        Y=X(n-1)+normrnd(0,1);
        aux=density(Y)/density(X(n-1));
        alpha(n)=min([1,aux]);
        
        u=rand;
        if u<alpha(n)
            X(n)=Y;
        else
            X(n)=X(n-1);
        end
    end
    
end