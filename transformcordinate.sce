//Suryakant Sharma
// 31730823
//Aim:- TO find and plot new coordinate after transformation.


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


/*OUTPUT:-
Enter the x cordinate:[3 4 5 6 7]

Enter the y cordinate:[3 3 3 3 3]


   3.   4.   5.   6.   7.
   3.   3.   3.   3.   3.
Enter the angle of rotation in degree:45


   0.7071068   0.7071068
  -0.7071068   0.7071068

 NEW COORDINATE AFTER ROTATION

   4.2426407   4.9497475   5.6568542   6.363961    7.0710678
   0.         -0.7071068  -1.4142136  -2.1213203  -2.8284271

 REFLECTION TRANSFORMATION

 1: Reflection about x-axis

 2: Reflection about y-axis

 3:Reflection about origin
Enter the choice:1


 NEW COORDINATE AFTER REFLECTION

   3.   4.   5.   6.   7.
  -3.  -3.  -3.  -3.  -3.

 SHEAR
Enter the shear factor: 3


 rotation

   4.2426407   4.9497475   5.6568542   6.363961    7.0710678
   0.         -0.7071068  -1.4142136  -2.1213203  -2.8284271

 reflection

   3.   4.   5.   6.   7.
  -3.  -3.  -3.  -3.  -3.

 shear

   12.   13.   14.   15.   16.
   3.    3.    3.    3.    3. 

 NEW COORDINATE AFTER REFLECTION

   12.   13.   14.   15.   16.
   3.    3.    3.    3.    3. */
