CREATE TABLE type_plant (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom TEXT NOT NULL
);

CREATE TABLE pépiniériste (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom TEXT NOT NULL
);

CREATE TABLE année (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
);

CREATE TABLE plantation (
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    campagne INT NOT NULL,  
    etat TEXT NOT NULL,
    parcelle_id INT UNSIGNED NOT NULL,  
    nombre_plants INT NOT NULL,
    variété_id INT UNSIGNED NOT NULL,  
    type_plants_id INT UNSIGNED NOT NULL,  
    fournisseur_id INT UNSIGNED NOT NULL,  
    pépiniériste_id INT UNSIGNED NOT NULL,  
    date DATE NOT NULL,
    passeport_phyto TEXT NOT NULL
);

CREATE TABLE variété (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom TEXT NOT NULL,
    fruit_id INT UNSIGNED NOT NULL,
    saisonnalité TEXT NOT NULL
);

CREATE TABLE type_plantation (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom TEXT NOT NULL
);

CREATE TABLE parcelle (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom TEXT NOT NULL,
    surface DECIMAL(8, 2) NOT NULL,
    type_id INT UNSIGNED NOT NULL  
);

CREATE TABLE type_plateau (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom TEXT NOT NULL,
    format TEXT NOT NULL,
    poids DECIMAL(8, 2) NOT NULL
);

CREATE TABLE fruit (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom TEXT NOT NULL
);

CREATE TABLE fournisseur (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom TEXT NOT NULL
);

CREATE TABLE ramassage (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    parcelle_id INT UNSIGNED NOT NULL, 
    date DATE NOT NULL,
    periode_journée TEXT NOT NULL,
    nombre_plateaux INT NOT NULL,
    type_plateau_id INT UNSIGNED NOT NULL  
);

-- Ajout des contraintes de clé étrangère

ALTER TABLE parcelle ADD CONSTRAINT parcelle_nom_foreign FOREIGN KEY(nom) REFERENCES plantation(parcelle_id);

ALTER TABLE fournisseur ADD CONSTRAINT fournisseur_nom_foreign FOREIGN KEY(nom) REFERENCES plantation(fournisseur_id);

ALTER TABLE pépiniériste ADD CONSTRAINT pépiniériste_nom_foreign FOREIGN KEY(nom) REFERENCES plantation(pépiniériste_id);

ALTER TABLE variété ADD CONSTRAINT variété_fruit_id_foreign FOREIGN KEY(fruit_id) REFERENCES fruit(id);

ALTER TABLE type_plant ADD CONSTRAINT type_plant_nom_foreign FOREIGN KEY(id) REFERENCES plantation(type_plants_id);

ALTER TABLE ramassage ADD CONSTRAINT ramassage_parcelle_foreign FOREIGN KEY(parcelle_id) REFERENCES parcelle(id);

ALTER TABLE plantation ADD CONSTRAINT plantation_campagne_foreign FOREIGN KEY(campagne) REFERENCES année(id);

ALTER TABLE variété ADD CONSTRAINT variété_nom_foreign FOREIGN KEY(nom) REFERENCES plantation(variété_id);

ALTER TABLE parcelle ADD CONSTRAINT parcelle_type_id_foreign FOREIGN KEY(type_id) REFERENCES type_plantation(id);

ALTER TABLE ramassage ADD CONSTRAINT ramassage_typeplateau_id_foreign FOREIGN KEY(type_plateau_id) REFERENCES type_plateau(id);