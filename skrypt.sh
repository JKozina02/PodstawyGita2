Pomoc()
{
	echo "Oto flagi przygotowane wtym skrypcie! "
	echo "-h|--help Otwiera pomoc."
	echo "-d|--date Pokazuje dzisiejszą datę."
	echo "-l <number>|--log <number> Tworzy plik log w katalogu log, number wskazuje ile razy utworzy plik."
	echo "-i|--init klonuje repozytorium oraz tworzy ścieżkę PATH"
	echo "-e <number>|--error <number> Tworzy plik error w katalogu error, number wskazuje ile razy utworzy plik."
}
Log()
{
	mkdir logs
	cd logs
	i=$1
	while ((i>0)) 
	do
		mkdir log"$i"
		touch log$i.txt
		echo "plik został utworzony przez skrypt: skrypt.sh" >> log$i/log$i.txt 
		date >> log$i/log$i.txt
		i=$(($i-1))
	done
	
}
Error()
{
	mkdir error
	cd error
	y=$1
	while ((y>0)) 
	do
		mkdir error"$y"
		touch error$y.txt
		echo "plik został utworzony przez skrypt: skrypt.sh" >> error$y/error$y.txt 
		y=$(($y-1))
	done
	
}
Date()
{
	echo "Dzisiejsza data:"
	date
	exit 0
}

if ! flag=$(getopt -o hdl:ie: -l help,date,log:,init,error: -- $@)
then
	exit 1
fi
set -- $flag

while [ $# -gt 0 ]
do
	case $1 in
	
	-h|--help)
		Pomoc
	;;
	
	-d|--date)
		Date
	;;
	
	-l|--log)	
		argx=$2
		a=${argx:1:-1}		
		Log $a
		shift
	;;
	
	-i|--init)
		rep="https://github.com/JKozina02/PodstawyGita2"
		fol="PodstawyGita2"
		dir=$(pwd)
		
		git clone $rep $fol
		echo "sklonowano repozytorium"
		
		echo "export PATH=\"$dir/$fol:\$PATH\"" >> ~/.bashrc
		source ~/.bashrc
		echo "utworzono ścierzkę PATH"
	;;
	
	-e|--error)
		argy=$2
		n=${argy:1:-1}		
		Error $n
		shift
	;;
	esac
	
	exit 0 
done