#!/bin/bash

[[ -z `find ../home/ -type f -mmin -20 ! -iname "*.txt" ! -iname "*.log"` ]]
if [ $? -eq 0 ]
then
    echo -e "nothing has changed"
else
find ../home/ -type f -mmin -20 ! -iname "*.txt" ! -iname "*.log"> salida.txt
mail -s "SERVIDOR CON ALERTA MODIFICACION DIRECTORIO" -a salida.txt  correo@gmail.com <<< 'HOLA SE REALIZO UNA MODIFICACION DEL DIRECTORIO HOME HACE 20 MINUTOS'
fi
