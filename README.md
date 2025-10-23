Ejercicio realizado con el fin de resolver un laboratorio propuesto en clase de programación 3 que data de lo siguiente

1.(solo concurrencia-sin envío de mensajes ni comunicación de procesos)  Construya dos procesos  (t1 y t2 ) independientes que realicen las asignaciones de las instrucciones (t1)S1, (t2)S2.
Cada proceso es independiente (Propio)
En el main() se debe lanzar la ejecución t1,t2 una vez que terminen se realizan las instrucciones S3 y S4 .
El main() debe esperar a que terminen t1 y t2.

S1 => a = dado una matriz de enteros obtener la suma de los números que están por debajo de la diagonal principal             forma recursiva(sin la diagonal).
S2 => b = obtener el promedio de los elementos que están por encima de la diagonal principal.
	S3 => c =a*b
	S4 => imprimir c
