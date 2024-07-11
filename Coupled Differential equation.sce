//Suryakant Sharma
// 31730823
//Aim:- TO solve the Coupled Differential Equation by Matrix Method and plot the solution.


clc
clf()
clear
A=input("Enter the COEFFICIENTS Matrix of Equations: ");
[U,V]=spec(A)
x0=input("Enter the intial condition for x: ");
y0=input("Enter the intial condition for y: ");
I=[x0;y0]
C=U\I
k=1
for i=-2:0.01:2
    t(k,1)=i;
    x(k,1)=(C(1,1)*(%e^(-V(1,1)*t(k,1)))*U(1,1))+(C(2,1)*(%e^(-V(2,2)*t(k,1)))*U(1,2));
    y(k,1)=(C(1,1)*(%e^(-V(1,1)*t(k,1)))*U(2,1))+(C(2,1)*(%e^(-V(2,2)*t(k,1))*U(2,2)));
    k=k+1;
end
plot(t,x,'o')
plot(t,y)
xgrid(1)
title("Solution of Coupled Differential Equation",'fontsize',5);
xlabel("$\huge Time(t)----->$");
ylabel("$\huge Dependent\ variable\ (x,y)---->$");
hl=legend(['$\huge x(t)$';'$\huge y(t)$'],4);


/*Output:-
Enter the COEFFICIENTS Matrix of Equations: [1 2;3 2]

Enter the intial condition for x: 0

Enter the intial condition for y: -4*/


