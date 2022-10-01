function x_star=divide_two(a,b,eps,f )
syms x
ff(x)=diff(f(x));
while abs(b-a)>eps
    x0=(a+b)/2;
    m=ff(x0);
    if m<0
        a=x0;
    elseif m>0
        b=x0;
    else
        a=x0;
        b=x0;
        break
    end
end
x_star=(a+b)/2;
end