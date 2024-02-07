%function
dydt=@(t,y) y-t^2+1;
f=@(t) (1+t)^2-0.5*exp(t);
%initializatioin
ti=0;tf=2;h=0.2;
n=round((tf-ti)/h);
t=0;y=0.5;
% Modified euler method
t_plot=[];modified_euler=[];y_exact=[];
fprintf('t \t\t Modofied_Euler \t\t f(t)\n');
fprintf('%f \t %f \t %f\n',t,y,f(t));
for i=1:n
    t_plot=[t_plot,t];
    modified_euler=[modified_euler,y];
    y_exact=[y_exact,f(t)];
   y=y+0.5*h*(dydt(t,y)+dydt(t+h,y+h*dydt(t,y)));
    fprintf ('%f \t %f \t %f\n',t,y,f(t));
end
%visulation
t_plot=[t_plot,t];
modified_euler=[modified_euler,y];
y_exact=[y_exact,f(t)];
plot(t_plot,modified_euler,t_plot,y_exact);
xlabel('T');
ylabel('Y');
legend('Modified_Euler','Y_Exact');