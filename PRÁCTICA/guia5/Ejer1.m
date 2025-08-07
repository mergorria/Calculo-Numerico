#Ejercicio 1
## (a) Enuncie y demuestre el teorema de existencia y unicidad del polinomio interpolante (ver
##Teorema 1, secci¢¥on 6.1 del libro de Kincaid y Cheney).
Sea x0,x1,..xn un conjunto de n+1 puntos distintos en R y f(x0),f(x1),..,f(xn)
los valores correspondientes de una funcion f. Entonces:
Existe un unico polinomio Pn(x) de grado a lo sumo n tal que
Pn(xi) = f(xi) para i = 0,1,..n

Demo:
La unicidad se prueba suponiendo que existen dos polinomios p(x) y q(x)
que interpolan los mismos datos. Entonces R(x) = P(x) - Q(x) es un polinomio
de grado <= n con n+1 ceros en x0,x1,..xn. Como un polinomio de grado <=n no puede
tener mas de n ceros salvo que sea el polinomio nulo entonces R(x)=0 lo que hace que
P(x) = Q(x)


## (b) Escriba la forma de Newton del polinomio interpolante.
## (c) Escriba la forma de Lagrange del polinomio interpolante.
## (d) Escriba el m¢¥etodo de coeficientes indeterminados para el polinomio interpolante.
## (e) Analice las ventajas y desventajas entre las distintas formas de representaci¢¥on del polinomio
##interpolante.

M¢¥etodo de Newton:
Una de sus principales ventajas es que es eficiente al agregar nuevos puntos,
ya que se pueden recalcular los t¢¥erminos adicionales sin rehacer todo el polinomio.
Adem¢¥as, es f¢¥acil de implementar usando diferencias divididas.
Sin embargo, una de sus desventajas es que puede ser menos estable num¢¥ericamente que otros m¢¥etodos como el de Lagrange,
 especialmente cuando se manejan muchos puntos o puntos muy cercanos entre s¢¥i.

M¢¥etodo de Lagrange:
Este m¢¥etodo tiene la ventaja de ofrecer una forma expl¢¥icita y sim¢¥etrica del polinomio interpolante,
 lo que lo hace conceptualmente sencillo y f¢¥acil de entender. No obstante, su principal desventaja es la ineficiencia al agregar nuevos puntos,
 ya que requiere recalcular completamente el polinomio desde cero.

M¢¥etodo de coeficientes indeterminados:
Tiene la ventaja de ser un m¢¥etodo general que se puede aplicar con cualquier conjunto de puntos mediante el uso de ¢¥algebra lineal est¢¥andar.
Sin embargo, su desventaja radica en que involucra la resoluci¢¥on de un sistema lineal que puede estar mal condicionado, especialmente si los puntos
 est¢¥an muy pr¢¥oximos entre s¢¥i o mal distribuidos.

Consideraciones generales:
Todos los m¢¥etodos descritos interpolan exactamente los puntos dados, lo cual es su principal objetivo.
Sin embargo, una desventaja com¢¥un a todos es que, al usar muchos puntos, el polinomio resultante puede presentar oscilaciones no deseadas,
especialmente cerca de los extremos del intervalo de interpolaci¢¥on. Este fen¢¥omeno es conocido como el fen¢¥omeno de Runge. Por ello, para un n¢¥umero grande de puntos,
 se prefieren otros enfoques como la interpolaci¢¥on por trozos (splines).
