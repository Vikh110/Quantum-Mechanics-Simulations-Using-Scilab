                                                                                                        funcprot(2)
clc
clf
clear
h=0.08
m=0.511D+6
h_bar=1973
t1=((h_bar)^2)/((2*m)*h*h)
n=input("enter the order of matrix")
r0=1D-10
e=3.795
D=4.75
alpha=1.44
r0=0.75
for i=1:n
    r(i,1)=r0+i*h
    r1(i,1)=(r(i,1)-r0)
    t(i,1)=t1
    U(i,1)=-D*(exp(-2*alpha*r1(i,1))-2*exp(-alpha*r1(i,1)))
end
for j=1:1:n
    for k=1:1:n
    if(k>j&&k<j+2)then
        a(j,k)=-t(k,1)
    elseif(k>j-2&&k<j)then
        a(j,k)=-t(k,1)
    elseif(k==j)then
        a(j,k)=2*t(k,1)+U(k,1)
    else
        a(j,k)=0
    end
end
end
[c,d]=spec(a)
for z=1:4
    disp("energy of n="+string(z-1)+"state")
    disp(d(z,z))
    end
    subplot(221)
    plot(r,c(:,1))
   xgrid(1)
   xtitle("graph btw eigenfunction and distance")
   xlabel("distance")
   ylabel("eigenfunction")
    subplot(222)
    plot(r,c(:,2))
    for y=1:1:2
    for l=1:n
        q(l,y)=c(l,y)/r(l,1)
end
end
subplot(223)
plot(r,q(:,1))
   subplot(224)
   plot(r,q(:,2))
    
