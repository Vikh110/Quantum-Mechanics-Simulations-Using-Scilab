//Suryakant Sharma
// 31730823
//Aim:- To solve the RADIAL PART of schrodinger equation for HYDROGEN ATOM


funcprot(0)
clc
clf(0)
clf(2)
clear
h=0.08
M=0.511D+6   // eV/c^2
h_bar=1973   // eV*angstrom/c
t1=((h_bar)^2)/((2*M)*(h*h))
n=input("Enter the order of matrix:- ")
r0=1D-10
e=3.795   // (eV*angstrom)^1/2
for i=1:n
    r(i,1)=r0+i*h
    t(i,1)=t1
    U(i,1)=-e*e/r(i,1)
end
for j=1:1:n
    for k=1:1:n
        if(k>j&&k<j+2) then
            A(j,k)=-t(k,1)
        elseif (k>j-2&&k<j) then
            A(j,k)=-t(k,1)
        elseif (j==k) then
            A(j,k)=2*t(k,1)+U(k,1)
        else A(j,k)=0
        end
    end
end
[c,d]=spec(A)
for z=1:4
    disp("Energy of n="+string(z-1)+" state: ")
    disp(d(z,z))
end
scf(0)
R=[8,12,25,35]
for p=1:4
    for g=1:n 
    if (r(g,1)<R(1,p)) then
        x(g,1)=r(g,1)
        C(g,p)=c(g,p)
    end
    end
    subplot(2,2,p)
    plot(x,C(:,p))
    xgrid(1)
    xtitle("GRAPH BETWEEN WAVE FUNCTION AND RADIAL DISTANCE")
    xlabel('$\huge radial\ distance\ r(\AA)$')
    ylabel('$\huge \mathcal {U}(r)$')
end
scf(2)
L=[8,12,25,35]
for t=1:4
    for y=1:n
        if (r(y,1)<L(1,t)) then
            q(y,1)=r(y,1)
            E(y,t)=c(y,t)/r(y,1)
            end
end
subplot(2,2,t)
plot(q,E(:,t))
xgrid(1)
xtitle("GRAPH BETWEEEN RADIAL WAVE FUNCTION R"+string(t)+"0 AND RADIAL DISTANCE")
xlabel ("$\huge radial\ distance\ r(\AA)$")
ylabel ("$\huge \mathcal R $")
end


// OUTPUT:-
//Enter the order of matrix:- 650
//
//
// Energy of n=0 state: 
//
//  -13.536964
//
// Energy of n=1 state: 
//
//  -3.3986331
//
// Energy of n=2 state: 
//
//  -1.5117001
//
// Energy of n=3 state: 
//
//  -0.8505674
