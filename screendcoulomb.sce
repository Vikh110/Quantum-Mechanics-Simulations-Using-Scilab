//Suryakant Sharma
// 31730823
//Aim:- To solve the RADIAL PART of schrodinger equation for an atom with SCREENED COULOMB POTEMTIAL.


funcprot(0)
clc
clf(0)
clf(1)
clear
h=0.01        // angstrom
M=0.511D+6   // eV/c^2
h_bar=1973   // eV*angstrom/c
t1=((h_bar)^2)/((2*M)*(h*h))
n=input("Enter the order of matrix:- ")
r0=1D-10
e=3.795   // (eV*angstrom)^1/2
a=[3 5 7]  // angstrom
for S=1:3
for i=1:n
    r(i,1)=r0+i*h
    t(i,1)=t1
    U(i,1)=(-e*e/r(i,1))*exp(-r(i,1)/a(S))
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
    disp("Energy of ground state for a="+string(a(S))+": ")
    disp(d(1,1))
    scf(0)
    subplot(2,2,S)
    plot(r,c(:,1))
    xgrid(1)
    xtitle("GRAPH BETWEEN WAVE FUNCTION AND RADIAL DISTANCE FOR a="+string(a(S))+"Ang.")
    xlabel('$\huge radial\ distance\ r(\AA)$')
    ylabel('$\huge \mathcal {U}(r)$')
    xstring(3.5,0.08,["$\huge E_{ground}=$"])
    xnumb(4.5,0.08,d(1,1))
    scf(1)
    subplot(2,2,S)
    plot(r,c(:,1)./r(:,1))
    xgrid(1)
    xtitle("GRAPH BETWEEN RADIAL WAVE FUNCTION AND RADIAL DISTANCE FOR a="+string(a(S))+"Ang.")
    xlabel('$\huge radial\ distance\ r(\AA)$')
    ylabel('$\huge \mathcal {R}(r)$')
    xstring(3.5,0.4,["$\huge E_{ground}=$"])
    xnumb(4.5,0.4,d(1,1))
end

// OUTPUT:-
//Enter the order of matrix:- 500
//
//
// Energy of ground state for a=3: 
//
//  -9.3858804
//
// Energy of ground state for a=5: 
//
//  -10.94664
//
// Energy of ground state for a=7: 
//
//  -11.666498
