/*https://classroom.google.com/c/NjE2MDI1MDkyNjI5/m/NjI0ODU0MTQxMzg4/details*/

t= input("Enter the value of t : ");
v= input("Enter the value of v : ");
t= t';
v= v';
t2= t.^2;
disp(t2);
t=[t t2];
disp(t);
ones_v=ones(1, size(t,1));
t=[ones_v' t]
a= inv(t' * t)*t' *v;
a= a';
t1= input("Enter time: ");
res= a(1)+t1*a(2)+a(3)*(t1.^2);

disp(res);


