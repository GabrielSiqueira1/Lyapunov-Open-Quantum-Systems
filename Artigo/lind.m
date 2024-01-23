function [fx,fy,fz,dUdt]=lind(u, Ut, Uf, t, lambda)

    Ax=[0 0 0; 0 0 -1; 0 1 0];
    Ay=[0 0 1; 0 0 0; -1 0 0];
    Az=[0 -1 0; 1 0 0; 0 0 0];
    B=lambda*[-1 0 0; 0 -1 0; 0 0 -2];
    
    if t == 0
        fx=10.28;
        fy=10.73;
        fz=40;
	    F=fx*Ax+fy*Ay+fz*Az+B;

        dUdt=F;
    else
	    fx=field(Ut, Uf, u(1), u(4), Ax, B);
	    fy=field(Ut, Uf, u(2), u(5), Ay, B);
	    fz=field(Ut, Uf, u(3), u(6), Az, B);
        
        P=351;
        if fx > P
           fx = P;
        end
        if fx < -P
           fx = -P;
        end
        
        if fy > P
           fy = P;
        end
        if fy < -P
           fy = -P;
        end
       
        if fz > P
           fz = P;
        end
        if fz < -P
           fz = -P;
        end
        
	    F=fx*Ax+fy*Ay+fz*Az+B;
    
        dUdt=F;

    end
end