model p2_ans

function co_var
input Real x;
input Real y;
input Real n;
output Real y1;

external y1 = co_var(x,y,n) annotation(Library = "libgsl.a",Include = "#include \"p2.c\"");
end co_var;

parameter Real x[5] = {1.0,7.7,2.5,3.1,2.444};
parameter Real y[5] = {1.4,3.2,8.1,6.7,2.12};
parameter Real n = 5;
Real y1;

equation 
y1 = co_var(x,y,n);
end p2_ans;
