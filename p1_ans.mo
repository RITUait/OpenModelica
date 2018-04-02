model p1_ans

function sf_bessel
input Real x;
output Real y1;
external y1 = sf_bessel(x) annotation(Library="libgsl.a",
 Include = "#include \"p1.c\"");
end sf_bessel;

parameter Real x1 = 5;
Real y1;

equation
y1 = sf_bessel(x1);
end p1_ans;
