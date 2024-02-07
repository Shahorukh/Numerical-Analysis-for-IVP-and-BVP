dydt=@(t,y) y-t^2+1;
f=@(t) (t+1)^2-0.5*exp(t);
ti=0;tf=2;h=0.2;
n=round((tf-ti)/h);
t=0;y=0.5;
t_plot=[];rk4=[];y_exact=[];
fprintf('t \t\t rk4 \t\t f(t)\n');
fprintf('%f \t %f \t %f\n',t,y,f(t));
for i=1:n
    t_plot=[t_plot,t];
    rk4=[rk4,y];
    y_exact=[y_exact,f(t)];
    k1=h*dydt(t,y);
    k2=h*dydt(t+0.5*h,y+0.5*k1);
    k3=h*dydt(t+0.5*h,y+0.5*k2);
    k4=h*dydt(t+h,y+k3);
    y=y+(1/6)*(k1+2*k2+2*k3+k4);
    t=t+h;
    fprintf('%f \t %f \t %f\n',t,y,f(t));
end
t_plot=[t_plot,t];
rk4=[rk4,y];
y_exact=[y_exact,f(t)];
plot(t_plot,rk4,t_plot,y_exact);
xlabel('T');
ylabel('Y');
legend('Rk4','Exact');