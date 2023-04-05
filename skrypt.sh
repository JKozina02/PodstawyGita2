
Pomoc()
{
	echo "Oto flagi przygotowane wtym skrypcie! "
	echo "-h Otwiera pomoc."
	echo "-d Pokazuje dzisiejszą datę."
	echo "-l <number> Tworzy plik log, number wskazuje ile razy utworzy plik."
}
Log()
{
	mkdir logs
	cd logs
	for (( i=1; i<=arg_x ; i++))
	do
	touch log$i.txt

	echo "plik został utworzony przez skrypt: skrypt_lox.sh\n Date: " >> log$i.txt 
	date >> log$i.txt

	done
}
Date()
{
	echo "Dzisiejsza data\n"
	date
	exit 0
}

while getopts 'hdl:' flag;
do
	case $flag in
	h)
		Pomoc
		exit 0
	;;
	
	d)
		Date
		exit 0
	;;
	
	l)
		arg_x=$((OPTARG))
		Log 
	;;
	esac
done
