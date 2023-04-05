Pomoc()
{
	echo "Oto flagi przygotowane wtym skrypcie! "
	echo "-h Otwiera pomoc.\n"
	echo "-d Pokazuje dzisiejszą datę.\n"
}

Date()
{
	echo "Dzisiejsza data\n"
	date
	exit 0
}

while getopts ":help:date" flag
do
	case "${flag}" in
	h)
		Pomoc
		exit 0
	;;
	
	d)
		Date
		exit 0
	;;
	
	
	esac
done
