function dUdt=lind(u, Ut, Uf, t, lambda)

    Ax=[0 0 0; 0 0 -1; 0 1 0];
    Ay=[0 0 1; 0 0 0; -1 0 0];
    Az=[0 -1 0; 1 0 0; 0 0 0];
    B=lambda*[-1 0 0; 0 -1 0; 0 0 -2];
    
    if t == 0
	    F=10.28*Ax+10.73*Ay+40*Az+B;

        dUdt=F;
    else
	    fx=field(Ut, Uf, u(1), u(4), Ax, B);
	    fy=field(Ut, Uf, u(2), u(5), Ay, B);
	    fz=field(Ut, Uf, u(3), u(6), Az, B);
	    F=fx*Ax+fy*Ay+fz*Az+B;
    
        dUdt=F;

    end
end