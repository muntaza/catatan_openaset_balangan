cat dinkes_obat.sql | sed -e s/^/INSERT\ INTO\ persediaan\ \(id_transaksi\,\ id_barang\,\ jumlah\,\ harga\)\ VALUES\ \(40338\,/g -e s/$/\)\;/g > dinkes_obat_insert.sql

cat dinkes_bmhp.sql | sed -e s/^/INSERT\ INTO\ persediaan\ \(id_transaksi\,\ id_barang\,\ jumlah\,\ harga\)\ VALUES\ \(40339\,/g -e s/$/\)\;/g > dinkes_bmhp_insert.sql

cat dinkes_lab.sql | sed -e s/^/INSERT\ INTO\ persediaan\ \(id_transaksi\,\ id_barang\,\ jumlah\,\ harga\)\ VALUES\ \(40340\,/g -e s/$/\)\;/g > dinkes_lab_insert.sql
