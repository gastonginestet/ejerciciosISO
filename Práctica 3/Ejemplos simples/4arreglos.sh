#!/bin/bash

arreglo=(1 2 3 5 8 13 21)
arreglo[2]=spam
echo "El Primer elemento es ${arreglo[0]}"
echo "El tercer elemento es ${arreglo[2]}"
echo "La Longitud: ${#arreglo[*]}"
echo "Todos sus elementos: ${arreglo[*]}"
