model p4_ans

function vector_mul
input Real a;
input Real b;
input Real c;
input Real size1;
output Real y;
external y = vector_mul(a,b,c,size1) annotation(Library = "libgsl.a",Include = "#include \"p4.c\"");
end vector_mul;

parameter Real a[5] = {1.0,2.0,3.0,4.0,5.0};
parameter Real b[5] = {0.1,0.2,0.3,0.4,0.5};
parameter Real c;
Real y1;

equation
y1 = vector_mul(a,b,c,5);
end p4_ans;

