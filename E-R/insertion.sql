INSERT INTO Deu (username, password_hash, permet_creacio) VALUES
('zeus', 'hash_zeus', 1),
('athena', 'hash_athena', 1),
('hades', 'hash_hades', 0);

INSERT INTO Bioma (caracteristiques) VALUES
('Desert àrid i rocós'),
('Bosc tropical dens'),
('Medi marí profund');

-- Suposem que els déus tenen ID 1, 2 i 3
INSERT INTO Especie (nom, any_aparicio, especie_origen_id, caracteristiques, extinta, motiu_extincio, deu_id) VALUES
('T-Rex', 1000, NULL, '-', 1, 'Erupció global', 1),
('Aquatilis', 1010, NULL, 'Membranes aquàtiques, nadador eficient, velocitat:9', 0, NULL, 3),
('Ignivorus', 990, NULL, 'Placa tèrmica dorsal, defensa:7', 0, NULL, 2);
-- Suposem que l'espècie Aquatilis té ID 2
INSERT INTO Especie (nom, any_aparicio, especie_origen_id, caracteristiques, extinta, motiu_extincio, deu_id) VALUES
('Aquatilismilloratis', 50500, 2, 'Anfibi, desenvolupa pulmons al canviar de bioma, flotabilitat:10', 0, NULL, NULL);

-- Suposem que les espècies tenen ID 1, 2, 3 i 4
INSERT INTO Llinatge (any_aparicio, estadistiques_finals, especie_id, bioma_id) VALUES -- 1 registre per cada Especie a cada Bioma on habiti
(1000, 'numero individus depradats: 78217', 1,1),
(1010, NULL, 2,3),
(990, NULL, 3,2),
(20200, NULL, 2,2),
(50500, NULL, 4,2);

-- Suposem que els llinatges tenen ID 1, 2, 3, 4 i 5 i els biomes ID 1, 2 i 3
INSERT INTO RegistreEvolutiu (nombre_individus, caracteristiques_actuals, estadistiques, especie_id, bioma_id) VALUES
(3180, 'Aletes perfeccionades, Nadador turbinat, flotabilitat:8', 'assassinats:843', 2, 3),
(3000, 'Aletes perfeccionades, Nadador turbinat, flotabilitat:8,5', 'assassinats:899', 2, 3),
(3111, 'Aletes perfeccionades, Nadador turbinat, flotabilitat:8', 'assassinats:1112', 2, 3),
(1160, 'Placa reforçada, Resistència màxima, temperatura suportada: 700ºC', 'assassinats:1000', 3, 2),
(1300, 'Placa reforçada, Resistència màxima, temperatura suportada: 690ºC', 'assassinats:1200', 3, 2),
(900, 'Aletes perfeccionades, Nadador turbinat, caça en aigües molt poc profundes, pot romandre en aigua dolça per curts períodes de temps, flotabilitat:8', 'assassinats: 7865', 2, 2),
(990, 'Aletes perfeccionades, Nadador turbinat, caça en aigües molt poc profundes, pot romandre en aigua dolça per curts períodes de temps, flotabilitat:7,5', 'assassinats: 8565', 2, 2),
(1050, 'anfibi, salt: 8', 'assassinats: 500', 4, 2),
(1160, 'anfibi, salt: 8,5', 'assassinats: 600', 4, 2);
