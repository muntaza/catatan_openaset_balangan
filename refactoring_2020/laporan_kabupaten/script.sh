#!/bin/bash
#kode barang 108


cat tanah.sql | sed -e s/kode_barang/kode_barang_108/g | \
	sed -e s/view_tanah_kabupaten/view_tanah_108_kabupaten/g | \
        sed -e s/14/18/g   > tanah_108.sql

cat peralatan_mesin.sql | sed -e s/kode_barang/kode_barang_108/g | \
	sed -e s/view_peralatan_mesin_kabupaten/view_peralatan_mesin_108_kabupaten/g | \
        sed -e s/14/18/g   > peralatan_mesin_108.sql

cat gedung_bangunan.sql | sed -e s/kode_barang/kode_barang_108/g | \
	sed -e s/view_gedung_bangunan_kabupaten/view_gedung_bangunan_108_kabupaten/g | \
        sed -e s/14/18/g   > gedung_bangunan_108.sql

cat jalan_irigasi_jaringan.sql | sed -e s/kode_barang/kode_barang_108/g | \
	sed -e s/view_jalan_irigasi_jaringan_kabupaten/view_jalan_irigasi_jaringan_108_kabupaten/g | \
        sed -e s/14/18/g   > jalan_irigasi_jaringan_108.sql

cat atl.sql | sed -e s/kode_barang/kode_barang_108/g | \
	sed -e s/view_atl_kabupaten/view_atl_108_kabupaten/g | \
        sed -e s/14/18/g   > atl_108.sql

cat buku_inventaris_aset_tetap_l2.sql | sed -e s/kode_barang/kode_barang_108/g | \
	sed -e s/view_buku_inventaris_aset_tetap_l2/view_buku_inventaris_aset_tetap_l2_108_kabupaten/g | \
        sed -e s/14/18/g   > buku_inventaris_aset_tetap_l2_108.sql




sh ./gabung.sh
