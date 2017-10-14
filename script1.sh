
echo "STARTING PROCESS..."
echo " " > archivo.txt
for line in $(find -name "*.c") ;
do
    echo "READING FILE $line "
    line1=$line   
    numexamen1="${line1##*/}"
    numexamen=$(echo ${numexamen1%.*}) 
    line2=$line
    direccion=$(echo "${line2%/*}")
    echo "ADDRESS IS $direccion"
    alumno=$(echo ${direccion:12})
    echo "STUDENT IS $alumno"
    echo "FILE IS TEST $numexamen "

	
    case $numexamen in
	p1)
    
		if [ $numexamen = "p1" ];
    	then 
		    echo "CASE P1"
	 		echo "COMPILING FILE $line "
	 		salida="$line.exe"
	 		gcc $line -o $salida
	
     		echo "EXECUTING $salida "
	 		result=$($salida < p1.in)
     
     		echo "EXIT IS $result"

	 		echo "SEND EXIT TO  salida.txt"
     
	 		echo $result > salida.txt
	 		echo "COMPARING RESULTS"
     		echo "RESULT MUST BE "
     		sal=$(cat resultado1.txt)
     		echo "$sal"
 
	 		if [ $(diff salida.txt resultado1.txt | wc -l) = 0 ];	
	 		then
				echo "STUDENT $alumno IS RIGHT ON TEST $numexamen " >> archivo.txt
				echo "STUDENT $alumno IS RIGHT ON TEST $numexamen "
			
			
		
	 		fi 
		echo "                


"
			
		fi
		
	
	;;
	p2)
    	if [ $numexamen = "p2" ];
    	then 
		    echo "CASE P2"
	 		echo "COMPILING FILE $line "
	 		salida="$line.exe"
	 		gcc $line -o $salida
	
     		echo "EXECUTING $salida "
	 		result=$($salida < p2.in)
     
     		echo "EXIT IS $result"

	 		echo "SEND RESULT TO salida.txt"
     
	 		echo $result > salida.txt
	 		echo "COMPARING RESULTS"
     		echo "RESULT MUST BE "
     		sal=$(cat resultado2.txt)
     		echo "$sal"
 
	 		if [ $(diff salida.txt resultado2.txt | wc -l) = 0 ];	
	 		then
				echo "STUDENT $alumno IS RIGHT ON TEST $numexamen " >> archivo.txt
				echo "STUDENT $alumno IS RIGHT ON TEST $numexamen "
		
	 		fi 
		echo "                


"
			
		fi
		
	;;
	p3)    
		if [ $numexamen = "p3" ];
    	then 
            echo "CASE P3"
	 		echo "COMPILING $line "
	 		salida="$line.exe"
	 		gcc $line -o $salida
	
     		echo "EXECUTING $salida "
	 		result=$($salida < p3.in)
     
     		echo "EXIT IS $result"

	 		echo "SEND EXIT TO  salida.txt"
     
	 		echo $result > salida.txt
	 		echo "COMPARING RESULTS"
     		echo "RESULT MUST BE "
     		sal=$(cat resultado3.txt)
     		echo "$sal"
 
	 		if [ $(diff salida.txt resultado3.txt | wc -l) = 0 ];	
	 		then
				echo "STUDENT $alumno IS RIGHT ON TEST $numexamen " >> archivo.txt  
				echo "STUDENT $alumno IS RIGHT ON TEST $numexamen "

		
	 		fi 
		echo "                


"
		fi
	;;
	p4)    
		if [ $numexamen = "p4" ];
    	then 
            echo "CASE P4"
	 		echo "COMPILING FILE $line "
	 		salida="$line.exe"
	 		gcc $line -o $salida
	
     		echo "EXECUTING $salida "
	 		result=$($salida < p4.in)
     
     		echo "EXIT IS $result"

	 		echo "SEND RESULT TO  salida.txt"
     
	 		echo $result > salida.txt
	 		echo "COMPARING RESULTS"
     		echo "RESULT MUST BE"
     		sal=$(cat resultado4.txt)
     		echo "$sal"
 
	 		if [ $(diff salida.txt resultado4.txt | wc -l) = 0 ];	
	 		then
				echo "STUDENT $alumno IS RIGHT ON TEST $numexamen " >> archivo.txt 
				echo "STUDENT $alumno IS RIGHT ON TEST $numexamen "

		
	 		fi 
		echo "                


"

		fi
	;;
	p5)    
		if [ $numexamen = "p5" ];
    	then 
            echo "CASE P5"
	 		echo "COMPILING FILE $line "
	 		salida="$line.exe"
	 		gcc $line -o $salida
	
     		echo "EXECUTING $salida "
	 		result=$($salida < p5.in)
     
     		echo "EXIT IS $result"

	 		echo "SEND RESULT TO  salida.txt"
     
	 		echo $result > salida.txt
	 		echo "COMPARING RESULTS"
     		echo "RESULT MUST BE"
     		sal=$(cat resultado5.txt)
     		echo "$sal"
 
	 		if [ $(diff salida.txt resultado5.txt | wc -l) = 0 ];	
	 		then
				echo "STUDENT $alumno IS RIGHT ON TEST $numexamen " >> archivo.txt 
				echo "STUDENT $alumno IS RIGHT ON TEST $numexamen "

		
	 		fi 
		echo "                


"
		fi
	;;
	*)

	esac

done;	

echo "                


"
echo "SCORES"

while read line;
do
counter=$( grep -c $line archivo.txt) 
echo "$line GOT: $counter/5" 
done < alumnos.txt 
