function x_star=threeinter(x0,eps,h,f)
syms x
[x1,x2]=success_fail(x0,h,f);
fone(x)=diff(f(x));
f1=f(x1);
f2=f(x2);
fone1=fone(x1);
fone2=fone(x2);
u=fone2;
v=fone1;
s=3*(f2-f1)/(x2-x1);
z=s-u-v;
w=sqrt(z^2-u*v);
x_bar=x1+(x2-x1)*(1-(u+w+z)/(u-v+2*w));
fone_bar=fone(x_bar);
while abs(fone_bar)>eps
    if fone_bar<0
        x1=x_bar;
    else
        x2=x_bar;
    end
    fone(x)=diff(f(x));
    f1=f(x1);
    f2=f(x2);
    fone1=fone(x1);
    fone2=fone(x2);
    u=fone2;
    v=fone1;
    s=3*(f2-f1)/(x2-x1);
    z=s-u-v;
    w=sqrt(z^2-u*v);
    x_bar=x1+(x2-x1)*(1-(u+w+z)/(u-v+2*w));
    fone_bar=fone(x_bar);
end
x_star=double(x_bar);
end