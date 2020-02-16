find . -name "*.sql" | grep -v setwan | sed -e s/^/rm\ /g > file
sh file
rm -f file
