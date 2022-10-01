function x_star=gold_section(a,b,ep,f)
t=0.618;
x1=a+(1-t)*(b-a);
x2=a+b-x1;
L=f(x1);
R=f(x2);
while abs(b-a)>=ep
    if L>R
        a=x1;x1=x2;x2=a+t*(b-a);L=R;R=f(x2);
    else
        b=x2;x2=x1;x1=a+(1-t)*(b-a);R=L;L=f(x1);
    end
end

x_star=(a+b)/2;
end