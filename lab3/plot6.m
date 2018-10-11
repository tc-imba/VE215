function plot6(Rx)
    C=820e-12;
    R=100+Rx;
    L=1e-3;
    a=R/(2*L)
    w=1/sqrt(L*C);
    syms x(t);
    eqn='D2x+2*a*Dx+w^2*x=0';
    eqn=strrep(eqn,'a',num2str(floor(a)));
    eqn=strrep(eqn,'w',num2str(floor(w)));
    f(t)=dsolve(eqn,'x(0)=0.5,Dx(0)=0');
    tt=0:1e-7:1e-5;
    xx=double(f(tt));
    plot(tt,xx);
    axis([0 1e-5 -0.5 0.5]);
    xlabel('t');
    ylabel('V');
end