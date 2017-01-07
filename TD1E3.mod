# il n'y a pas de fct minimize

param I;

var x{i in 1..I} >= 0;

minimize affectation : x[1] + x[2] + x[3] + x[4] + x[5] + x[6];

s.t.
c1 : x[1] + x[4] >= 21;
c2 : x[1] + x[6] >= 12;
c3 : x[2] + x[4] >= 25;
c4 : x[2] + x[5] >= 25;
c5 : x[3] + x[6] >= 12;
c6 : x[3] + x[5] >= 30;

solve;
display x;

data;


param I := 6;

end;