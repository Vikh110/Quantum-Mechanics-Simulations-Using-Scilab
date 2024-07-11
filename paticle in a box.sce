// probability of particle in a box
clc
clear 
clf
L=input("Enter the side of box: ")
n=input("Enter the state: ")
disp("Enter the limit for probability")
a=input("Enter the lower limit: ")
b=input("Enter the upper limit: ")
function psi=f(x)
    if(x>0&&x<L) then
    psi=sqrt(2/L)*sin(n*%pi*x/L)
else
    psi=0
    end
endfunction
function y=f1(x)
    if(x>0&&x<L) then
    y=(sqrt(2/L)*sin(n*%pi*x/L))^2
else
    y=0
    end
endfunction
P=integrate('f1','x',a,b)
disp("Probability of finding the particle between "+string(a)+" to "+string(b)+" is: ")
disp(P)
subplot(121)
x=-L:0.1:2*L
plot(x,f)
xgrid(1)
xtitle("PLOT FOR WAVE FUNCTION PSI","X","PSI(x)")
subplot(122)
x=-L:0.1:2*L
plot(x,f1)
xgrid(1)
xtitle("PLOT FOR WAVE FUNCTION PSI^2","X","PSI^2(x)")

// OUTPUT:-1
//Enter the side of box: 5
//
//Enter the state: 1
//
//
// Enter the limit for probability
//Enter the lower limit: 0
//
//Enter the upper limit: 5/4
//
//
// Probability of finding the particle between 0 to 1.25 is: 
//
//   0.0908451


//Enter the side of box: 5
//
//Enter the state: 1
//
//
// Enter the limit for probability
//Enter the lower limit: 5/4
//
//Enter the upper limit: 3*5/4
//
//
// Probability of finding the particle between 1.25 to 3.75 is: 
//
//   0.8183099
