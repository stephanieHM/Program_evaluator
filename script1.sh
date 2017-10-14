
echo "Iniciando proceso..."
for line in $(find -name "*.c") ;
do
	echo "Leyendo el archivo $line "
    line1=$line   
    numexamen1="${line1##*/}"
    numexamen=$(echo ${numexamen1%.*}) 
    line2=$line
    direccion=$(echo "${line2%/*}")
    echo "la direccion es $direccion"
    alumno=$(echo ${direccion:12})
    echo "el alumno es $alumno"
    echo "El archivo es el examen nùmero $numexamen "

    if [ $numexamen = "p1" ];
    then 
    
    
	 echo "Compilando el archivo $line "
	 salida="$line.exe"
	 gcc $line -o $salida
	
     echo "Ejecutando $salida "
	 result=$($salida < p1.in)
     
     echo "La salida es $result"

	 echo "Manda resultado a archivo .txt"
     
	 echo $result > salida.txt
	 echo "Compara resultados"
     echo "EL resultado debe ser "
     sal=$(cat resultado1.txt)
     echo "$sal"
 
	 if [ $(diff salida.txt resultado1.txt | wc -l) = 0 ];	
	 then
		echo $alumno >> archivo.txt 
		
	 fi 
		echo "Hay errores"
		
	fi	
    



done;	

