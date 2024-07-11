
clc
clf()
clear
x=input("enter the X coordinate")
y=input("enter the y coordinate")
X=[x;y]
disp(X)
//Rotation
theta=input("enter the angle of rotaion of degree")
rT=[cosd(theta) sind(theta);-sind(theta) cosd(theta)]
Xr=rT*X
disp(Xr)
subplot(221)
plot(X(1,:),X(2,:))
plot(Xr(1,:),Xr(2,:))
xgrid(1)
//reflection
disp("1:rotation about x axis");
disp("2:rotation about y axis");
disp("3:rotation about the origin");
choice=input("enter the choice")
if choice==1 then
    Trf=[1 0;0 -1]
elseif choice==2 then
    Trf=[-1 0;0 1]
elseif choice==3 then
    Trf=[-1 0;0 -1]
else
    disp("wrong choice")
end
Xrf=Trf*X
disp(Xrf)
subplot(222)
plot(X(1,:),X(2,:),'o')
plot(Xrf(1,:),Xrf(2,:),'x')
//shearing transformer
a=input("enter the shear factor")
Ts=[1 a;0 1]
XTs=Ts*X
disp(XTs)
subplot(223)
plot(X(1,:),X(2,:))
plot(XTs(1,:),XTs(2,:))




