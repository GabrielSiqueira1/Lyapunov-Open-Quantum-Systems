function [a,b,c,result]=rungeKutta(u, Ut, Uf, h, t, lambda)

    [~,~,~,k1]=lind(u, Ut, Uf, t, lambda);
    k1 = k1*Ut;
    [~,~,~,k2]=lind(u, (Ut+h/2*k1), Uf, t, lambda);
    k2 = k2*(Ut+h/2*k1);
    [~,~,~,k3]=lind(u, (Ut+h/2*k2), Uf, t, lambda);
    k3 = k3*(Ut+h/2*k2);
    [fx,fy,fz,k4]=lind(u, (Ut+h*k3), Uf, t, lambda);
    k4 = k4*(Ut+h*k3);
    
    a = fx;
    b = fy;
    c = fz;
    
    result = Ut+(h/6)*(k1+2*k2+2*k3+k4);

end