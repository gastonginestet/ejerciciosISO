#!/bin/bash
#Utilizando variables que contengan el nombre de un almuno , la carrera que  estudia y la facultad donde estudia,
#imprimir un mensaje en pantalla del estilo: El alumno X estudia la carrera Y en la Facultad Z.
#EJEMPLO
#x=100
#y='500$x'
#echo $y # Mostrará.. '500$x'
#y="500$x"
#echo $y # Mostrará.. '500100'
x='Juan Perez'
z='Licenciatura en Sistemas'
y='Facultad de Informatica'
a="El alumno $x estudia la carrera $z en $y."
echo $a
