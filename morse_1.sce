//Suryakant Sharma
// 31730823
//Aim:- To solve the s-wave radial Schrodinger Equation for the vibration of hydrogen molecule(Morse Potential).


funcprot(0)
clc
clf(0)
clf(1)
clear
h=0.008
M=469.4D+6   // eV/c^2
h_bar=1973   // eV*angstrom/c
t1=((h_bar)^2)/((2*M)*(h*h))
n=input("Enter the order of matrix:- ")
r0=1D-10 // angstrom
D=4.75 // eV
alpha=1.44
R0=0.75
for i=1:n
    r(i,1)=r0+i*h
    r1(i,1)=(r(i,1)-R0)
    t(i,1)=t1
    U(i,1)=D*(exp(-2*alpha*r1(i,1))-2*exp(-alpha*r1(i,1)))
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
    subplot(121)
    plot(r,c(:,1))
    xgrid(1)
    xtitle("$\huge GRAPH\ BETWEEN\ WAVE\ FUNCTION\ AND\ RADIAL\ DISTANCE$")
    xlabel('$\huge radial\ distance\ r(\AA)$')
    ylabel('$\huge \mathcal {U}(r)$')
    subplot(122)
    plot(r,c(:,1)./r(:,1))
    xgrid(1)
    xtitle("GRAPH BETWEEEN RADIAL WAVE FUNCTION AND RADIAL DISTANCE")
    xlabel ("$\huge radial\ distance\ r(\AA)$")
    ylabel ("$\huge \mathcal R $")
    scf(1)
    plot(r,U,'o')
    //xgrid(1)
    xtitle("$\huge MORSE\  POTENTIAL\  H_{2}\  MOLECULE\  WITH\ RESPECTIVE\ ENERGY\ EIGENVALUES $")
    xlabel ("$\huge internuclear\ distance\ r(\AA)\ ------>$")
    ylabel ("$\huge morse\ potential\ U(r)\------>$")
    xstring(2.8,12,["$\huge CONSTANTS\ USED $"])
    xstring(2.8,11,["$\huge \alpha = 1.92 $"])
    xstring(2.8,10,["$\huge \mu_{H_{2}}=469.4 MeV$"])
    xstring(2.8,9,["$\huge M_{H}=938.8 MeV $"])
    xstring(2.8,8,["$\huge r_{o}=0.75\AA : equilibrium\ bond\ length $"])
    xstring(2.8,7,["$\huge D=4.75\AA :potential\ well\ depth $"])
    f=1
    for i=1:n
        for j=1:350
            if(U(j,1)<d(i,i)) then
                h(f,1)=r(j,1)
                f=f+1
    end
end
plot(h,diag(d(i,i)*ones(f-1,f-1)),'r')
if(i<8)then
    xnumb(h(1,1)-0.3,d(i,i)-0.2,d(i,i))
    xstring(h(1,1)-0.15,d(i,i)-0.2,["eV"])
    end
f=1
if(d(i,i)>D) break
end
end


/*OUTPUT:-
Enter the order of matrix:- 450


 Energy of n=0 state: 

  -4.5500955

 Energy of n=1 state: 

  -4.1632463

 Energy of n=2 state: 

  -3.7937036

 Energy of n=3 state: 

  -3.4414386*/
