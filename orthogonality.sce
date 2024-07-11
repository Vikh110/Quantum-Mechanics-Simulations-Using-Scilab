// SURYAKANT SHARMA
// 31730823
// AIM:- To verify the ORTHOGONALITY RELATION for legendre polynomial.


clc
clear
for z=1:1:2
n=input("ENTER THE ORDER " +string(z)+" OF POLYNOMIAL :")
if(modulo(n,2)==0) then
    m=n/2;
else
    m=(n-1)/2
end
p=1;a=1;g=0;
for j=-1:0.001:1
    s=0
    for i=0:1:m
        s=s+(-1)^i*factorial(2*n-2*i)*j^(n-2*i)/(2^n*factorial(i)*factorial(n-i)*factorial(n-2*i))
end;
if z==1 then
y(p)=s
p=p+1
else
    v(a)=s;
    g=((y(a)*v(a))*0.001)+g;
    a=a+1
end
end
end
disp(g)


// OUTPUT
// case 1:- m=n
//
//ENTER THE ORDER 1 OF POLYNOMIAL :5
//ENTER THE ORDER 2 OF POLYNOMIAL :5
// 
//    1.8282318  
//
// case 2:- m~=n
//
//ENTER THE ORDER 1 OF POLYNOMIAL :5
//ENTER THE ORDER 2 OF POLYNOMIAL :6
// 
//    3.955D-16 
