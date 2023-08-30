%% system
A = -3;
B = 1;
C = 1;
D = 0;
%% pole design
K = place(A,B,-5);
%% suppose reference and disturbance are both satisfied with dr=0 => z = [p x]'
% new matrix 
As = [0 0 ; 1 -3];
Bs = [0 ; 1];
Cs = [0 1];
Ds = 0;
L = place(As',Cs',[-14 -15])';
