-- pariwisat ke dinas pemuda
UPDATE peralatan_mesin SET id_mutasi_berkurang = 2 WHERE id = 113668;
INSERT INTO skpd_tujuan_peralatan_mesin (id_peralatan_mesin, id_skpd) VALUES (113668, 23) ON CONFLICT (id_peralatan_mesin) DO UPDATE SET id_skpd = 23;
INSERT INTO tahun_berkurang_peralatan_mesin (id_peralatan_mesin, tahun_berkurang) VALUES (113668, 2021) ON CONFLICT (id_peralatan_mesin) DO UPDATE SET tahun_berkurang = 2021;
