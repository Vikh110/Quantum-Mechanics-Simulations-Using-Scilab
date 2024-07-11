// SURYAKANT SHARMA
// 31730823
// Aim:- To find the MULTIPLICATION of two 3x3 Matrices or find th EIGEVALUES AND EIGENVECTORS of a given matrix.


clc
clear
disp("Enter 1 for multiplication of two 3x3 matrices")
disp("Enter 2 for Eingenvalues and Eignevectors of matrix")
o=input("Enter the choice: ")
select o
case 1 then
    A=input("Enter the first Matrix:-")
    B=input("Enter the second Matrix:-")
    C=A*B
    disp(" THE MULTIPLICATION OF TWO MATRICES A*B:")
    disp(C)
case 2 then
    disp("Enter the Matrix of which eigenvalue or eigenvector has to be calculated:")
    M=input(" ")
    [A,B]=spec(M)
    disp("Eigenvalues Matrix is:")
    disp(B) 
    disp("Eigenvector Matrix is:")
    disp(A)
    else disp(" SORRY ")
    end


/*OUTPUT:-
 Enter 1 for multiplication of two 3x3 matrices

 Enter 2 for Eingenvalues and Eignevectors of matrix
 Enter the choice: 1

 Enter the first Matrix:-[1 3 6; 3 7 3; 8 9 7]

 Enter the second Matrix:-[1 4 5; 2 3 4; 3 1 0]


  THE MULTIPLICATION OF TWO MATRICES A*B:

   25.   19.   17.
   26.   36.   43.
   47.   66.   76
   
   Enter the choice: 2


 Enter the Matrix of which eigenvalue or eigenvector has to be calculated:
 [2 1 1; 1 3 2; 3 1 4]


 Eigenvalues Matrix is:

   6.095824   0.                      0.                   
   0.         1.452088 + 0.4336988i   0.                   
   0.         0.                      1.452088 - 0.4336988i

 Eigenvector Matrix is:

   0.3243216   0.3899937 - 0.1875413i   0.3899937 + 0.1875413i
   0.5849985   0.5379993 + 0.2718959i   0.5379993 - 0.2718959i
   0.7433655  -0.6703451               -0.6703451  

Enter the choice: 2


 Enter the Matrix of which eigenvalue or eigenvector has to be calculated:
 [1 -%i 3+4*%i; %i 2 4; 3-4*%i 4 3] 


 Eigenvalues Matrix is:

  -4.746829   0.          0.       
   0.         2.3968018   0.       
   0.         0.          8.3500273

 Eigenvector Matrix is:

  -0.3404771 - 0.5212558i  -0.2734105 + 0.5541666i  -0.3192331 - 0.3586139i
  -0.4539695 + 0.0504648i  -0.3645474 - 0.6890355i  -0.4256442 - 0.0502727i
   0.6353997                0.1023784               -0.7653665  
   
   
 Enter the choice: 2


 Enter the Matrix of which eigenvalue or eigenvector has to be calculated:
 [2 -%i 2*%i; %i 4 3; -2*%i 3 5]


 Eigenvalues Matrix is:

  -0.3871996   0.          0.       
   0.          3.6916109   0.       
   0.          0.          7.6955887

 Eigenvector Matrix is:

   0.6662617i   -0.7255184i    0.1723904i 
   0.5184148     0.6168052     0.5922816  
  -0.5360424    -0.3052448     0.7870731  */
