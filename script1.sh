
echo "Iniciando proceso..."
echo " " > archivo.txt
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

	
    case $numexamen in
	p1)
    
		if [ $numexamen = "p1" ];
    	then 
		    echo "ENTRO A CASO P1"
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
				echo "El alumno $alumno acerto en el examen $numexamen " >> archivo.txt 
			
		
	 		fi 
			
		fi
	
	;;
	p2)
    	if [ $numexamen = "p2" ];
    	then 
		    echo "ENTRO A CASO P2"
	 		echo "Compilando el archivo $line "
	 		salida="$line.exe"
	 		gcc $line -o $salida
	
     		echo "Ejecutando $salida "
	 		result=$($salida < p2.in)
     
     		echo "La salida es $result"

	 		echo "Manda resultado a archivo .txt"
     
	 		echo $result > salida.txt
	 		echo "Compara resultados"
     		echo "EL resultado debe ser "
     		sal=$(cat resultado2.txt)
     		echo "$sal"
 
	 		if [ $(diff salida.txt resultado2.txt | wc -l) = 0 ];	
	 		then
				echo "El alumno $alumno acerto en el examen $numexamen " >> archivo.txt 
		
	 		fi 
			
		fi
		
	;;
	p3)    
		if [ $numexamen = "p3" ];
    	then 
            echo "ENTRO A CASO P3"
	 		echo "Compilando el archivo $line "
	 		salida="$line.exe"
	 		gcc $line -o $salida
	
     		echo "Ejecutando $salida "
	 		result=$($salida < p3.in)
     
     		echo "La salida es $result"

	 		echo "Manda resultado a archivo .txt"
     
	 		echo $result > salida.txt
	 		echo "Compara resultados"
     		echo "EL resultado debe ser "
     		sal=$(cat resultado3.txt)
     		echo "$sal"
 
	 		if [ $(diff salida.txt resultado3.txt | wc -l) = 0 ];	
	 		then
				echo "El alumno $alumno acerto en el examen $numexamen " >> archivo.txt 

		
	 		fi 
		fi
	;;
	p4)    
		if [ $numexamen = "p4" ];
    	then 
            echo "ENTRO A CASO P4"
	 		echo "Compilando el archivo $line "
	 		salida="$line.exe"
	 		gcc $line -o $salida
	
     		echo "Ejecutando $salida "
	 		result=$($salida < p4.in)
     
     		echo "La salida es $result"

	 		echo "Manda resultado a archivo .txt"
     
	 		echo $result > salida.txt
	 		echo "Compara resultados"
     		echo "EL resultado debe ser "
     		sal=$(cat resultado4.txt)
     		echo "$sal"
 
	 		if [ $(diff salida.txt resultado4.txt | wc -l) = 0 ];	
	 		then
				echo "El alumno $alumno acerto en el examen $numexamen " >> archivo.txt 

		
	 		fi 
		fi
	;;
	p5)    
		if [ $numexamen = "p5" ];
    	then 
            echo "ENTRO A CASO P5"
	 		echo "Compilando el archivo $line "
	 		salida="$line.exe"
	 		gcc $line -o $salida
	
     		echo "Ejecutando $salida "
	 		result=$($salida < p5.in)
     
     		echo "La salida es $result"

	 		echo "Manda resultado a archivo .txt"
     
	 		echo $result > salida.txt
	 		echo "Compara resultados"
     		echo "EL resultado debe ser "
     		sal=$(cat resultado5.txt)
     		echo "$sal"
 
	 		if [ $(diff salida.txt resultado5.txt | wc -l) = 0 ];	
	 		then
				echo "El alumno $alumno acerto en el examen $numexamen " >> archivo.txt 

		
	 		fi 
		fi
	;;
	*)

	esac

done;	

echo "Cuenta aciertos"

while read line;
do
counter=$( grep -c $line archivo.txt) 
echo "$line got $counter/5" 
done < alumnos.txt 
