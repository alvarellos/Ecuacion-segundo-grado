with Ada.Text_IO, Ada.Float_Text_IO, Ada.Numerics.Elementary_Functions;
use Ada.Text_IO, Ada.Float_Text_IO, Ada.Numerics.Elementary_Functions;


procedure Soluciones_Ecuacion_Segundo_Grado is

   function Calculo_Discriminante (A, B, C : Float) return Float is
   -- PRE: cierto
   -- POST: callcula las soluciones reales de una ecuacion de segundo grado
            begin
                  return ((B**2)-(4.0*A*C));
            end Calculo_Discriminante;

-- Declaracion global de variables

Coef_Cuadratico : Float;
Coef_Lineal : Float;
Termino_Indep : Float;
Discriminante : Float;
s1 : Float;
s2 : Float;

begin
     Put ("La forma de la ec de segundo grado es axx+bx+c=0 ");
     New_Line (2);
     Put ("Introduce el coeficiente cuadratico  ");
     Get (Coef_Cuadratico);
     New_Line;
     Put ("Introduce el coeficiente lineal  ");
     Get (Coef_Lineal);
     New_Line;
     Put ("Introduce el termino independiente  ");
     Get (Termino_Indep);
     New_Line;
     Discriminante := Calculo_Discriminante (Coef_Cuadratico, Coef_Lineal,
                                              Termino_Indep);

     if Discriminante > 0.0 then
        s1 := ((-Coef_Lineal)+Sqrt(Discriminante))/(2.0*Coef_Cuadratico);
        s2 := ((-Coef_Lineal)-Sqrt(Discriminante))/(2.0*Coef_Cuadratico);
        Put ("La solucion s1 es :  ");
        Put (S1);
        New_Line;
        Put ("La solucion s2 es :  ");
        Put (s2);
     elsif Discriminante = 0.0 then
        s1 := (-Coef_Lineal)/(2.0*Coef_Cuadratico);
        Put ("La unica solucion es :  ");
        Put (s1);
     else  Put ("No existen raices reales ");
     end if;

end Soluciones_Ecuacion_Segundo_Grado;