UPDATE peralatan_mesin SET id_mutasi_berkurang = 2 WHERE id = 118180;
UPDATE peralatan_mesin SET id_mutasi_berkurang = 2 WHERE id = 118181;
UPDATE peralatan_mesin SET id_mutasi_berkurang = 2 WHERE id = 118182;
UPDATE peralatan_mesin SET id_mutasi_berkurang = 2 WHERE id = 118183;
INSERT INTO skpd_tujuan_peralatan_mesin (id_peralatan_mesin, id_skpd) VALUES (118180, 19) ON CONFLICT (id_peralatan_mesin) DO UPDATE SET id_skpd = 19;
INSERT INTO skpd_tujuan_peralatan_mesin (id_peralatan_mesin, id_skpd) VALUES (118181, 19) ON CONFLICT (id_peralatan_mesin) DO UPDATE SET id_skpd = 19;
INSERT INTO skpd_tujuan_peralatan_mesin (id_peralatan_mesin, id_skpd) VALUES (118182, 19) ON CONFLICT (id_peralatan_mesin) DO UPDATE SET id_skpd = 19;
INSERT INTO skpd_tujuan_peralatan_mesin (id_peralatan_mesin, id_skpd) VALUES (118183, 19) ON CONFLICT (id_peralatan_mesin) DO UPDATE SET id_skpd = 19;
INSERT INTO tahun_berkurang_peralatan_mesin (id_peralatan_mesin, tahun_berkurang) VALUES (118180, 2021) ON CONFLICT (id_peralatan_mesin) DO UPDATE SET tahun_berkurang = 2021;
INSERT INTO tahun_berkurang_peralatan_mesin (id_peralatan_mesin, tahun_berkurang) VALUES (118181, 2021) ON CONFLICT (id_peralatan_mesin) DO UPDATE SET tahun_berkurang = 2021;
INSERT INTO tahun_berkurang_peralatan_mesin (id_peralatan_mesin, tahun_berkurang) VALUES (118182, 2021) ON CONFLICT (id_peralatan_mesin) DO UPDATE SET tahun_berkurang = 2021;
INSERT INTO tahun_berkurang_peralatan_mesin (id_peralatan_mesin, tahun_berkurang) VALUES (118183, 2021) ON CONFLICT (id_peralatan_mesin) DO UPDATE SET tahun_berkurang = 2021;
