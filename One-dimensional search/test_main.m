clc
clear
% % 成功失败法
% h=1;
% a1=0;
% f=@(x) (x.^2+3*x+2);
% [a,b]=success_fail(a1,h,f);

% % 0.618法
% a=-4;
% b=0;
% ep=0.0001;
% f=@(x) (x.^2+3*x+2);
% xmin=gold_section(a,b,ep,f);

% % 二分法
% a=-4;
% b=0;
% eps=0.0001;
% f=@(x) (x.^2+3*x+2);
% x_star=divide_two(a,b,eps,f);

% % 牛顿法
% eps=0.0001;
% f=@(x) (x.^2+3*x+2);
% % f(x)=x.^2+3*x+2;
% x_star=Newton(eps,f);

% % 三点二次插值法
% x0=0;
% eps=0.00001;
% h=1;
% f=@(x) (x.^2+3*x+2);
% x_star=twointer(x0,eps,h,f);

% % 两点三次插值法
% x0=0;
% eps=0.5;
% h=1;
% % f=@(x) (x.^2+3*x+2);
% f=@(x) (x.^4-4*x.^3-6*x.^2-16*x+4);
% x_star=threeinter(x0,eps,h,f);

