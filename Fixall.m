% Sinus in, Sinus ut

A = [ [0 1 0] ...
    ; [250 0 -35.35] ...
    ; [0 0 -20/3]];
B = [0 0 2/3]';
C = [1 0 0];
D = 0;

s = tf('s');

Gs = ss(A, B, C, D);
G = tf(Gs);

poles = eig(Gs.A);
G2 = ss(tf(1,G.num));
zeros = eig(G2.A);