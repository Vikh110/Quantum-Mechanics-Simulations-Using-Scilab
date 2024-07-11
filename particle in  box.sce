//Suryakant Sharma
// 31730823
//Aim:- To plot the wavefunction and probability density of particle in a box.


funcprot(0)
clc
clf()
clear
M=0.511D+6   // eV/c^2
h_bar=1973   // eV*angstrom/c
n=input("Enter the order of matrix:- ")
a=input("Enter the side of box:-")
r0=0
h=a/n
t1=((h_bar)^2)/((2*M)*(h*h))
e=3.795   // (eV*angstrom)^1/2
for i=1:n
    r(i,1)=r0+i*h
    t(i,1)=t1
    U(i,1)=0
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
    subplot(121)
    plot(r,[c(:,1),c(:,2),c(:,3),c(:,4),c(:,5)])
    xgrid(1)
    xtitle("WAVEFUNCTIONS OF PARTICLE IN A BOX")
    xlabel('$\huge radial\ distance\ r(\AA)$')
    ylabel('$\huge \mathcal \psi_(r)$')
subplot(122)
plot(r,[c(:,1).*c(:,1),c(:,2).*c(:,2),c(:,3).*c(:,3),c(:,4).*c(:,4),c(:,5).*c(:,5)])
xgrid(1)
xtitle("PROBABILITY")
xlabel ("$\huge radial\ distance\ r(\AA)$")
ylabel ("$\huge \mathcal |\psi|^2 $")


// OUTPUT:-
/*Enter the order of matrix:- 500

Enter the side of box:-5


 Energy of n=0 state: 

   1.4977045

 Energy of n=1 state: 

   5.9907593

 Energy of n=2 state: 

   13.478987

 Energy of n=3 state: 

   23.962095*/
