model p0_ans

function diff1
  input Real x;
  output Real y1;
 external y1=diff1(x) annotation(Include = "#include \"p0.c\"");
   
end diff1;

function diff2
  input Real x;
  output Real y2;
 external y2=diff2(x) annotation(Include = "#include \"p0.c\"");
 end diff2;

 parameter Real x1 = 5;
 parameter Real x2 = 5;
 Real y1;
 Real y2;
 
 equation
 y1 = diff1(x1);
 y2 = diff2(x2);
end p0_ans;