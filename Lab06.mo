model Lab06

parameter Real N = 17000; // общая численность популяции  
parameter Real I0 = 117; // количество инфицированных особей в начальный момент времени  
parameter Real R0 = 17; // количество здоровых особей с иммунитетом в начальный момент времени  
parameter Real S0 = N - I0 - R0; // количество восприимчивых к болезни особей в начальный момент времени  

parameter Real a = 0.01; // коэффициент заболеваемости  
parameter Real b = 0.02; // коэффициент выздоровления  

Real S(start=S0); 
Real I(start=I0); 
Real R(start=R0); 

equation  

//случай I(0) <= I*  
der(S) = 0;  
der(I) = -b*I;  
der(R) = b*I;  

/*случай I(0) > I*  
der(S) = -a*S;  
der(I) = a*S-b*I;  
der(R) = b*I; */ 

end Lab06;
