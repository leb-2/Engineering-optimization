function [c,d]=success_fail(a1,h,f)
a2=a1+h;
f1=f(a1);
f2=f(a2);
if f1>=f2
    h=2*h;
    a2=a2+h;
    f1=f2;
    f2=f(a2);
    while f2<f1
        a1=a2-h;
        h=2*h;
        a2=a2+h;
        f1=f2;
        f2=f(a2);
    end
else
    h=-h;
    a1=a1+h;
    f2=f1;
    f1=f(a1);
    while f2>=f1
        a2=a1-h;
        h=h+h;
        a1=a1+h;
        f2=f1;
        f1=f(a1);
    end
end
c=a1;d=a2;
end