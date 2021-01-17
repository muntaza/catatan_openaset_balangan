cat kelompok_barang_108.sql | sed -e s/^/INSERT\ INTO\ kelompok_barang_108\ \(kode_kelompok_barang\,\ nama_kelompok_barang\)\ VALUES\ \(/g -e s/$/\)\;/g > kelompok_barang_108_insert.sql
cat penambahan_umur_108.sql | sed -e s/^/INSERT\ INTO\ penambahan_umur_108\ \(id_kelompok_barang_108\,\ persen\,\ umur\)\ VALUES\ \(/g -e s/$/\)\;/g > penambahan_umur_108_insert.sql
