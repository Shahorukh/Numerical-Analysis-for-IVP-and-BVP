%Functions
% Function
dydt=@(t,y) y-t^2+1;
f=@(t) (1+t)^2-0.5*exp(t) ;
%initialization
ti=0;tf=2;h=0.2;
n=round((tf-ti)/h);
t=0;y=0.5;
fprintf('t \t\t y \t\t f(t) \n');
fprintf('%f \t %f \t %f \n',t,y,f(t));
t_plot=[];y_euler=[];y_exact=[];
%Euler method
for i=1:n
    t_plot=[t_plot,t];
    y_euler=[y_euler,y];
    y_exact=[y_exact,f(t)];
    y=y+h*dydt(t,y);
    t=t+h;
    fprintf('%f \t %f \t %f \n',t,y,f(t));
end
 t_plot=[t_plot,t];
    y_euler=[y_euler,y];
    y_exact=[y_exact,f(t)];
    plot(t_plot,y_euler,t_plot,y_exact)
     legend('Euler','Exact');
     xlabel('t');ylabel('y');


