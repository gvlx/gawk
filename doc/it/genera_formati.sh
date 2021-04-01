:
# questo script, eseguito in questa directory
# genera tutti i formati della documentazione gawk
# che si possono ricavare a partire
# da gawktexi.in, nella directory ./manual
#
# dapprima si prepara il file di input (gawk.texi)
#
awk -f sidebar.awk < gawktexi.in > gawk.texi
#
# poi si invoca lo script che genera i vari formati
#
./gendocs.sh gawk gawk
