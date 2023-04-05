mkdir logs
cd logs

for i in {1..100}
do
touch log$i.txt

echo "plik został utworzony przez skrypt: skrypt_lox.sh\n Date: " >> log$i.txt 
date >> log$i.txt

done
