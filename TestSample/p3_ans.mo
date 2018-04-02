model p3_ans

function poly_roots
input Real a;
input Real size1;
input Real z;
input Real size_z;
output Real y;

external y = poly_roots(a,size1,z,size_z) annotation(Library = "libgsl.a", Include = "#include \"p3.c\"");
end poly_roots;

parameter Real a[6] = {-1,0,0,0,0,1};
parameter Real size_a = 5;
parameter Real z ;
Real y1;

equation
y1 = poly_roots(a,size_a,z,10);
end p3_ans;
