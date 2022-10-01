function x_star=twointer(x0,eps,h,f)
[x1,x3]=success_fail(x0,h,f);
x2=(x1+x3)/2;
f1=f(x1);
f2=f(x2);
f3=f(x3);
c1=(f1-f3)/(x1-x3);
c2=((f1-f2)/(x1-x2)-c1)/(x2-x3);
x_bar=(x1+x3-c1/c2)/2;
fxbar=f(x_bar);
while abs(x2-x_bar)>=eps
    if fxbar>f2
        if x_bar>x2
            x3=x_bar;
        else
            x1=x_bar;
        end
    else
        if x_bar>x2
            x1=x2;
            x2=x_bar;
        else
            x3=x2;
            x2=x_bar;
        end
    end
    f1=f(x1);
    f2=f(x2);
    f3=f(x3);
    c1=(f1-f3)/(x1-x3);
    c2=((f1-f2)/(x1-x2)-c1)/(x2-x3);
    x_bar=(x1+x3-c1/c2)/2;
    fxbar=f(x_bar);
end
x_star=x_bar;
end