// all transformation
clear;
clc;
clf()
x=input("Enter the x cordinate:");
y=input("Enter the y cordinate:");
X=[x;y];
disp(X)
// Rotational transformation
theta=input("Enter the angle of rotation in degree:");
rT=[cosd(theta) sind(theta); -sind(theta) cosd(theta)]
disp(rT)
Xro=rT*X
subplot(221)
xtitle("ROTATION")
xlabel("$\huge x-coordinate$")
ylabel("$\huge y-coordinate$")
plot(X(1,:),X(2,:),'o')
plot(Xro(1,:),Xro(2,:),'x')
xgrid(1)
disp(Xro,"NEW COORDINATE AFTER ROTATION")
//Reflection Transformation
disp("REFLECTION TRANSFORMATION");
disp("1: Reflection about x-axis");disp("2: Reflection about y-axis");disp("3:Reflection about origin");
choice=input("Enter the choice:");
if choice==1 then
    Trf=[1 0; 0 -1]
elseif choice==2
    Trf=[-1 0; 0 1]  
elseif choice==3
    Trf=[-1 0;0 -1] 
else
    disp("Wrong choice")
end
Xref=Trf*X
subplot(222)
xtitle("REFLECTION")
xlabel("$\huge x-coordinate$")
ylabel("$\huge y-coordinate$")
plot(X(1,:),X(2,:),'o')
plot(Xref(1,:),Xref(2,:),'x')
xgrid(1)
disp(Xref,"NEW COORDINATE AFTER REFLECTION")
// shearing transformation
disp("SHEAR")
a=input("Enter the shear factor: ")
Ts=[1 a;0 1]
Xsh=Ts*X
disp(Xro,"rotation")
disp(Xref,"reflection")
disp(Xsh,"shear")
subplot(223)
xtitle("SHEAR")
xlabel("$\huge x-coordinate$")
ylabel("$\huge y-coordinate$")
plot(X(1,:),X(2,:),'o')
plot(Xsh(1,:),Xsh(2,:),'x')
xgrid(1)
disp(Xsh,"NEW COORDINATE AFTER REFLECTION")
