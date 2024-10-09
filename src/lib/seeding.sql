-- Insérer des données dans la table `année`
INSERT INTO année (id) VALUES 
(2022), 
(2023), 
(2024);

-- Insérer des données dans la table `type_plant`
INSERT INTO type_plant (nom) VALUES 
('Plant motte'), 
('Tray plant'), 
('Mini motte');

-- Insérer des données dans la table `pépiniériste`
INSERT INTO pépiniériste (nom) VALUES 
('Pépiniériste A'), 
('Pépiniériste B');

-- Insérer des données dans la table `fruit`
INSERT INTO fruit (nom) VALUES 
('Fraise'), 
('Framboise');

-- Insérer des données dans la table `variété`
INSERT INTO variété (nom, fruit_id, saisonnalité) 
VALUES 
('Gariguette', 1, 'Printemps'), 
('Charlotte', 1, 'Été'), 
('Willamette', 2, 'Automne');

-- Insérer des données dans la table `fournisseur`
INSERT INTO fournisseur (nom) VALUES 
('Fournisseur 1'), 
('Fournisseur 2');

-- Insérer des données dans la table `type_plantation`
INSERT INTO type_plantation (nom) VALUES 
('Extérieur'), 
('Sous serre');

-- Insérer des données dans la table `parcelle`
INSERT INTO parcelle (nom, surface, type_id) 
VALUES 
('Parcelle A', 2.50, 1), 
('Parcelle B', 3.75, 2);

-- Insérer des données dans la table `type_plateau`
INSERT INTO type_plateau (nom, format, poids) 
VALUES 
('Petit Plateau', '30x40', 2.5), 
('Grand Plateau', '50x60', 5.0);

-- Insérer des données dans la table `plantation`
-- Année 2022
INSERT INTO plantation (campagne, etat, parcelle_id, nombre_plants, variété_id, type_plants_id, fournisseur_id, pépiniériste_id, date, passeport_phyto)
VALUES 
(2022, 'Récoltée', 1, 1200, 1, 1, 1, 1, '2022-04-15', 'Phyto-003'),
(2022, 'Récoltée', 2, 1300, 2, 2, 2, 2, '2022-05-20', 'Phyto-004');

-- Année 2023
INSERT INTO plantation (campagne, etat, parcelle_id, nombre_plants, variété_id, type_plants_id, fournisseur_id, pépiniériste_id, date, passeport_phyto)
VALUES 
(2023, 'Plantée', 1, 1000, 1, 1, 1, 1, '2023-04-10', 'Phyto-001'),
(2023, 'Plantée', 2, 1500, 2, 2, 2, 2, '2023-05-15', 'Phyto-002');

-- Année 2024
INSERT INTO plantation (campagne, etat, parcelle_id, nombre_plants, variété_id, type_plants_id, fournisseur_id, pépiniériste_id, date, passeport_phyto)
VALUES 
(2024, 'Plantée', 1, 1400, 1, 1, 1, 1, '2024-04-12', 'Phyto-005'),
(2024, 'Plantée', 2, 1600, 2, 2, 2, 2, '2024-05-18', 'Phyto-006');

-- Insérer des données dans la table `ramassage`
INSERT INTO ramassage (parcelle_id, date, periode_journée, nombre_plateaux, type_plateau_id)
VALUES 
(1, '2023-07-20', 'Matin', 10, 1),
(1, '2023-07-20', 'Après-midi', 8, 2),
(2, '2023-08-05', 'Matin', 15, 1);