// coupled 
clc
clf()
clear
A=input("Enter the coefficien matrix: ")
xo=input("xo")
yo=input("yo")
[U,V]=spec(A)
I=[xo;yo]
C=inv(U)*I
k=1
for i=0:0.01:4
    t(k,1)=i
    x(k,1)=(C(1,1)*(%e^(V(1,1)*t(k,1)))*U(1,1))+(C(2,1)*(%e^(V(2,2)*t(k,1)))*U(1,2))
    y(k,1)=(C(1,1)*(%e^(V(1,1)*t(k,1)))*U(2,1))+(C(2,1)*(%e^(V(2,2)*t(k,1)))*U(2,2))
    k=k+1
end
plot(t,x,'o')
plot(t,y,'+')
