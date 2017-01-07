
#nombre de mois de prevision
param n;

#Cout de production
param cout{i in 1..n};

#Demande
param demande{i in 1..n};

#Capacite de production
param capacite{i in 1..n};

#stock en fin de mois
param stock{i in 0..n}: stock[i] = stock[i-1] + p[i] - demande[i];

var p{i in 1..n} >= 0;

#contrainte
s.t.
c1 {i in 1..n}: 1500 <= stock[i];
c2 {i in 1..n}: stock[i] <= 6000; 
c4 {i in 1..n}: capacite[i]/2 <= p[i];
C5 {i in 1..n}: p[i] <= capacite[i];

#objectif
minimize prod : sum{i in 1..n} cout[i]*p[i] + 0.015*sum{i in 1..n} cout[i]*stock[i];

solve;

display p;

data;

param n := 6;

param cout := 
1 240
2 250
3 265
4 285
5 280
6 285;

param demande :=
1 1000
2 4500
3 6000
4 5500
5 3500
6 4000;

param capacite :=
1 4000
2 3500
3 4000
4 4500
5 4000
6 3500;

param stock := 0 2750;

end;

