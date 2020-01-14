#!/bin/sh

for lama in *.sql; do
    baru="$(echo $lama | sed -e s/2015/2016/)"
    mv  "$lama" "$baru"
done

#for lama in *.sql; do
#    baru="$(echo $lama | sed -e s/2014/2015/)"
#    mv  "$lama" "$baru"
#done
