function S=lyap(Ut, Uf, X)

    W = Uf'*Ut;
    T = W';
    
    A = Ut'*X';
    C = A*Uf;
    
    L = W - eye(3) - 1/2*(W - eye(3))^2;
    
    S=2*trace((-1/2*C*T - 1/2*T*C + 2*C)*L);
end