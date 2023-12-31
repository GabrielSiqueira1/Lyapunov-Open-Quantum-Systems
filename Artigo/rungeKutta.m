function result=rungeKutta(u, Ut, Uf, h, t, lambda)

    %U0=[1 0 0; 0 1 0; 0 0 1]
    k1=lind(u, Ut, Uf, t, lambda)*Ut;
    k2=lind(u, (Ut+h/2*k1), Uf, t, lambda)*(Ut+h/2*k1);
    k3=lind(u, (Ut+h/2*k2), Uf, t, lambda)*(Ut+h/2*k2);
    k4=lind(u, (Ut+h*k3), Uf, t, lambda)*(Ut+h*k3);
    
    result = Ut+(h/6)*(k1+2*k2+2*k3+k4);

end