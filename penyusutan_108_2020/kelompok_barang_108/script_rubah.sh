cat kelompok_barang_108.sql | sed -e s/^/INSERT\ INTO\ kelompok_barang_108\ \(kode_kelompok_barang\,\ nama_kelompok_barang\)\ VALUES\ \(/g -e s/$/\)\;/g > kelompok_barang_108_insert.sql
