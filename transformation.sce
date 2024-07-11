//SURYAKANT SHARMA
//31730823
//Aim : To find the new coordinates after rotational or linear transformation
clc
clear
disp("1-Linear Transformation")
disp("2-Rotational Transformation")
n=input("Enter your choice: ")
 A=input("Enter the coordinates: ")
        
select n
    case 1
          s=input("Enter the shift in origin : ")
         
          B=A-s
          disp(B,"new coordinates are:")
    
    case 2
        t=input("Enter the angle by which frame is rotated : ")

       disp("1-x-Axis"+"   2-Y-Axis"+ "   3-Z-Axis")
       a=input("Enter the axis about which the rotation is performed: ")
        if(a==1) then
            B=[1 0 0;0 cos(t) -sin(t);0 sin(t) cos(t)]*A'
            disp(B,"New coordinates are : ")
         elseif(a==2) then
              B=[cos(t) 0 sin(t);0 1 0;-sin(t) 0 cos(t)]*A'
            disp(B,"New coordinates are : ")
         elseif(a==3) then
              B=[cos(t) -sin(t) 0;sin(t) cos(t) 0;0 0 1]*A'
            disp(B,"New coordinates are : ")
         else 
             disp("INVALID!!")
         end
             
end

//OUTPUT::
//1-Linear Transformation
//
// 2-Rotational Transformation
//LINEAR TRANSFPRMATION
//Enter your choice: 1
//
//Enter the coordinates: [5 7 -1]
//
//Enter the shift in origin : [2 3 4]
//
//
// new coordinates are:
//
//   3.   4.  -5.
//
//
//ROTATIONAL TRANSFORMATION
//Enter your choice: 2
//
//Enter the coordinates: [5 4 3]
//
//Enter the angle by which frame is rotated : %pi/4
//
//
// 1-x-Axis   2-Y-Axis   3-Z-Axis
//Enter the axis about which the rotation is performed: 1
//
//
// New coordinates are : 
//
//   5.
//   0.7071068
//   4.9497475
//
//
