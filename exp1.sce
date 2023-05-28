clear ; clc ;

// Getting weights and thresholds value 

disp('Syeda Reeha Quasar- 14114802719'); 

x=[1 1 -1 -1;1 -1 1 -1];
t=[1 -1 -1 -1];
w=[0 0];
b=0;

for i=1:4
    for j=1:2
        w(j)=w(j)+t(i)*x(j,i);
    end
    b=b+t(i);
end

disp("Final Weight Matrix: ");
disp(w);
disp("Final bias values: ");
disp(b);

plot(x(1,1),x(2,1),'or','MarkerSize',20,'MarkerFaceColor',[0 0 1]);
set(gca(),"auto_clear","off");
plot(x(1,2),x(2,2),'or','MarkerSize',20,'MarkerFaceColor',[1 0 0]);
set(gca(),"auto_clear","off");
plot(x(1,3),x(2,3),'or','MarkerSize',20,'MarkerFaceColor',[1 0 0]);
set(gca(),"auto_clear","off");
plot(x(1,4),x(2,4),'or','MarkerSize',20,'MarkerFaceColor',[1 0 0]);
set(gca(),"auto_clear","off");

m=-(w(1)/w(2));
c=-b/w(2);
x1=linspace(-2,2,100);
x2=m*x1+c; plot(x2,x1,'r');
a=gca() ;//get the current axes
a.box="on";
a.data_bounds=[-2,-2;2,2]; //define the bounds
