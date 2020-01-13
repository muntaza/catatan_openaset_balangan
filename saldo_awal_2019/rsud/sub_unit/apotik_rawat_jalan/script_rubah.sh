cat apotik_rawat_jalan.sql | sed -e s/^/INSERT\ INTO\ persediaan\ \(id_transaksi\,\ id_barang\,\ jumlah\,\ harga\)\ VALUES\ \(87046\,/g -e s/$/\)\;/g > apotik_rawat_jalan_insert.sql
cat apotik_rawat_jalan_keluar.sql | sed -e s/^/INSERT\ INTO\ persediaan\ \(id_transaksi\,\ id_barang\,\ jumlah\,\ harga\)\ VALUES\ \(87047\,/g -e s/$/\)\;/g > apotik_rawat_jalan_keluar_insert.sql
