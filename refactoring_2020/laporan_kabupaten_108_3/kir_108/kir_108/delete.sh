#!/bin/bash

# muhammad@muntaza.id

# delete semua file sql, kecuali file setwan dan gabuangan


find . -name "*.sql" | grep -v -e setwan -e gabungan | sed -e s/^/rm\ /g > file
sh file
rm -f file
