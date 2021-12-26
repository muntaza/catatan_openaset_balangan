-- pariwisat ke dinas pemuda
UPDATE peralatan_mesin SET id_sub_skpd = 438 WHERE id = 100741;
UPDATE harga_peralatan_mesin SET id_asal_usul = 7, tahun_mutasi = 2021 WHERE id_peralatan_mesin = 100741;
INSERT INTO skpd_asal_peralatan_mesin (id_peralatan_mesin, id_skpd) VALUES (100741, 46) ON CONFLICT (id_peralatan_mesin) DO UPDATE SET id_skpd = 46;
