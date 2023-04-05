while getopts "h:d" flag
do
	case $flag in
	h)
	Help
	exit 0
	;;
	
	d) 
	
	esac
done

Help()
{
	echo "Oto flagi przygotowane wtym skrypcie! \n"
	echo "--h Otwiera pomoc.\n"
	echo ""
}

Date()
{
	date
	exit 0
}