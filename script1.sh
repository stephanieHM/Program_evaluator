

echo "Iniciando proceso..."

for line in $(find -name "*.c") ;
do
	echo "Leyendo el archivo $line "
	echo "Compilando el archivo $line "
	salida="$line.exe"
	echo "gcc $line -o $salida"
	echo "Ejecutando $salida "
	echo "$salida"
	echo "Entrada de datos a programa"
	echo "$salida < ex01_a.txt"
	echo "Manda resultado a archivo .txt"
	echo "ex01_b.txt < $salida"
	echo "Compara resultados"
	echo "diff ex01_b.txt ex01_br.txt"
	if [ $(diff ex01_b.txt ex01_br.txt) = ""];

	then
		echo "Ningun error"
		
	fi 
		echo "Hay errores"
		
		




done;	
