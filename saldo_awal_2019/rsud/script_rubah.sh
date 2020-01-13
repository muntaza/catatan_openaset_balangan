cat obat_bmhp_rsud.sql | sed -e s/^/INSERT\ INTO\ persediaan\ \(id_transaksi\,\ id_barang\,\ jumlah\,\ harga\)\ VALUES\ \(87044\,/g -e s/$/\)\;/g > obat_bmhp_rsud_insert.sql
