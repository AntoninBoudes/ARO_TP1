
param O; # Nombre d'obligations
param Rev{i in 1..O}; # Revenu annuel
param M{i in 1..O};   # Maturite
param R{i in 1..O};   # Risque
param E{i in 1..O};   # Exonération fiscale

var x{i in 1..O} >= 0;

maximize revenu : 0.1*x[1] + 0.04*x[2] + 0.07*x[3] +0.06*x[4] + 0.08*x[5];

subjet to
c1 : sum{x in 1..5} = 100000;
C2 : x[2] + x[5] >= 50000;
C3 : x[1] + x[5] <= 50000;
C4 : x[2] + x[4] >= 40000;
C5 : 0.04*x[2] + 0.06*x[4] >= 0.3*(0.1*x[1] + 0.04*x[2] + 0.07*x[3] +0.06*x[4] + 0.08*x[5])

data;

# nombre d'obligations
param O := 5;

#revenu annuel
param Rev := 1 0.1
             2 0.04
             3 0.07
             4 0.06
             5 0.08;

# Maturite Longue = 1 , Courte = 0
param M := 1 1
           2 0
           3 1
           4 1
           5 0;

# Risque Eleve = 1, Faible = 0 
param R := 1 1
           2 0
           3 0
           4 0
           5 1;
# Exonération Oui= 1, Non = 0
param E := 1 0
           2 1
           3 0
           4 1
           5 0;
