function x_star=Newton(eps,f)
syms x
fone(x)=diff(f(x),1);
ftwo(x)=diff(f(x),2);
xk=0;
while abs(fone(xk))>eps
    xk=xk-fone(xk)/ftwo(xk);
end
x_star=double(xk);
end