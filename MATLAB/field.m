function f=field(Ut, Uf, a, h, A, B)

    SA = lyap(Ut, Uf, A);
    SB = lyap(Ut, Uf, B);
    
    f = -a*SA-h*(SB/SA);
end