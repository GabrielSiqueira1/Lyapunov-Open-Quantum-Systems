function [a,b,c,result] = dormandPrince(u, Ut, Uf, h, t, lambda)

    [a21, a31, a32, a41, a42, a43] = deal(1/5, 3/40, 9/40, 44/45, -56/15, 32/9);
    [a51, a52, a53, a54] = deal(19372/6561, -25360/2187, 64448/6561, -212/729);
    [a61, a62, a63, a64] = deal(9017/3168, -355/33, 46732/5247, 49/176);
    [a65, a71, a73, a74] = deal(-5103/18656, 35/384, 500/1113, 125/192);
    [a75, a76] = deal(-2187/6784, 11/84);

    [~,~,~,k1]=lind(u, Ut, Uf, t, lambda);
    k1 = h*k1*Ut;
    [~,~,~,k2]=lind(u, (Ut+a21*k1), Uf, t, lambda);
    k2 = h*k2*(Ut+a21*k1);
    [~,~,~,k3]=lind(u, (Ut+a31*k1+a32*k2), Uf, t, lambda);
    k3 = h*k3*(Ut+a31*k1+a32*k2);
    [~,~,~,k4]=lind(u, (Ut+a41*k1+a42*k2+a43*k3), Uf, t, lambda);
    k4 = h*k4*(Ut+a41*k1+a42*k2+a43*k3);
    [~,~,~,k5]=lind(u, (Ut+a51*k1+a52*k2+a53*k3+a54*k4), Uf, t, lambda);
    k5 = h*k5*(Ut+a51*k1+a52*k2+a53*k3+a54*k4);
    [~,~,~,k6]=lind(u, (Ut+a61*k1+a62*k2+a63*k3+a64*k4+a65*k5), Uf, t, lambda);
    k6 = h*k6*(Ut+a61*k1+a62*k2+a63*k3+a64*k4+a65*k5);
    [fx,fy,fz,~]=lind(u, (Ut+a71*k1+a73*k3+a74*k4+a75*k5+a76*k6), Uf, t, lambda);
    
    a = fx;
    b = fy;
    c = fz;
    
    result = Ut+a71*k1+a73*k3+a74*k4+a75*k5+a76*k6;


end

