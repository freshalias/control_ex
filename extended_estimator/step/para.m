%% system
A = -3;
B = 1;
C = 1;
D = 0;
%% pole design
K = place(A,B,-5);
%% suppose reference and disturbance are both satisfied with ddr+w^2r=0 => z = [p x]'
% new matrix 
%正弦信号频率
omega = 10;
As = [0 1 0;-omega^2 0 0; 1 0 -3];
Bs = [0 ; 0 ;1];
Cs = [0 0 1];
Ds = 0;
L = place(As',Cs',[-19 -20 -21])';
