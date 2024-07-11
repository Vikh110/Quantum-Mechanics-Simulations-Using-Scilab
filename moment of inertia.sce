// SURYAKANT SHARMA
// 31730823
// AIM:- To determine the moment of inertia of a 2d body about its principal axes 

clc
clear
M=input("Enter the mass of 2d body:-")
a=input("Enter the side of 2d body:-")
d=M/a*a
function f=f(y)
    f=d*y*y
endfunction
I= integrate('f','y',0,a)
function f1=f1(x)
    f1=I
endfunction
Ixx=integrate('f1','x',0,a)
Iyy=Ixx
Izz= Ixx+Iyy
function f=f(y)
    f=-d*y
endfunction
I= integrate('f','y',0,a)
function f1=f1(x)
    f1=I*x
endfunction
Ixy=integrate('f1','x',0,a)
Iyx=Ixy
Ixz=0;Izx=0;Iyz=0;Izy=0;
MI=[Ixx Ixy Ixz;Iyx Iyy Iyz; Izx Izy Izz]
disp(MI)
D=spec(MI)
disp(D,"PRINCIPAL MOMENT OF INERTIA MATRIX:-")


//Output:-
//Enter the mass of 2d body:-1
//
//Enter the side of 2d body:-1
//
//
//   0.3333333  -0.25        0.       
//  -0.25        0.3333333   0.       
//   0.          0.          0.6666667
//
// PRINCIPAL MOMENT OF INERTIA MATRIX:-
//
//   0.0833333
//   0.5833333
//   0.6666667

