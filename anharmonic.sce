//Suryakant Sharma
// 31730823
//Aim:- To solve the RADIAL PART of schrodinger wave equation for an atom with ANHARMONIC POTENTIAL.


funcprot(0)
clc
clf(0)
clf(1)
clear
h=0.008      // fm
M=940   // MeV/c^2
h_bar=197.3   // MeV*fm/c
t1=((h_bar)^2)/((2*M)*(h*h))
n=input("Enter the order of matrix:- ")
r0=1D-10
// POTENTIAL CONSTANTS
K=100       //MeV/(fm)^2
b=[0 10 30]  // MeV/(fm)^3
for S=1:3
for i=1:n
    r(i,1)=r0+i*h
    t(i,1)=t1
    U(i,1)=((1/2)*K*(r(i,1))^2)+((1/3)*(b(S))*(r(i,1))^3)
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
    disp("Energy of ground state for b="+string(b(S))+": ")
    disp(d(1,1))
    scf(0)
    subplot(2,2,S)
    plot(r,c(:,1))
    xgrid(1)
    xtitle("GRAPH BETWEEN WAVE FUNCTION AND RADIAL DISTANCE FOR b="+string(b(S))+" FOR ANHARMONIC POTENTIAL")
    xlabel('$\huge radial\ distance\ r(\AA)$')
    ylabel('$\huge \mathcal {U}(r)$')
    xstring(2.5,0.06,["$\huge E_{ground}=$"])
    xnumb(3.2,0.06,d(1,1))
    scf(1)
    subplot(2,2,S)
    plot(r,c(:,1)./r(:,1))
    xgrid(1)
    xtitle("GRAPH BETWEEN RADIAL WAVE FUNCTION AND RADIAL DISTANCE FOR b="+string(b(S))+" FOR ANHARMONIC POTENTIAL")
    xlabel('$\huge radial\ distance\ r(\AA)$')
    ylabel('$\huge \mathcal {R}(r)$')
    xstring(2.5,0.15,["$\huge E_{ground}=$"])
    xnumb(3.2,0.15,d(1,1))
end


// OUTPUT:-
//Enter the order of matrix:- 450
//
//
// Energy of ground state for b=0: 
//
//   96.527247
//
// Energy of ground state for b=10: 
//
//   100.24549
//
// Energy of ground state for b=30: 
//
//   106.89472
