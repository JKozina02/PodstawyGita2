while getopts "h:d" flag
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
	
	
	esac
done

Pomoc()
{
	echo "Oto flagi przygotowane wtym skrypcie! \n"
	echo "-h Otwiera pomoc.\n"
	echo ""
}

Date()
{
	echo "Dzisiejsza data\n"
	date
	exit 0
}