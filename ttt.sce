funcprot(0)
clc
clf()
clear
x=input("enter the x coordinate")
y=input("enter the y coordinate")
X=[x;y]
disp(X)
//Rotation
a=input("the angle of rotation in degree")
rT=[cosd(a) sind(a);-sind(a) cosd(a)]
Xrot=rT*X
disp(Xrot,"the value of changed coord")
subplot(221)
plot(X(1,:),X(2,:))
plot(Xrot(1,:),Xrot(2,:))
xgrid(2)
//Reflection
disp("1:Rotation about x axis ");
disp("2:Rotation about y axis");
disp("3:Rotation about origin");
choice=input("Enter your choice")
if choice==1 then
    Trf=[1 0;0 -1]
elseif choice==2 then
    Trf=[-1 0;0 1]
elseif choice==3 then
    Trf=[-1 0;0 -1]
else disp("Wrong choice")
end
Xrf=Trf*X
disp(Xrf,"coordinate after reflection")
subplot(222)
plot(X(1,:),X(2,:),'o')
plot(Xrf(1,:),Xrf(2,:),'*')

//shearing transformation
disp("shear")
a=input("enter the shear factor")
Ts=[1 a;0 1]
Xsh=Ts*X
disp(Xsh,"the values")
subplot(223)
plot(X(1,:),X(2,:),'+')
plot(Xsh(1,:),Xsh(2,:),'>')
//translation
f=input("Enter translation constant")
Tt=[f f f f;f f f f]
Xt=Tt+X
disp(Xt,"NEW coordiante")
subplot(224)
plot(X(1,:),X(2,:))
plot(Xt(1,:),Xt(2,:))

