CREATE TABLE type_plant (
    id SERIAL PRIMARY KEY,
    nom TEXT NOT NULL
);

CREATE TABLE pépiniériste (
    id SERIAL PRIMARY KEY,
    nom TEXT NOT NULL
);

CREATE TABLE année (
    id SERIAL PRIMARY KEY
);

CREATE TABLE fruit (
    id SERIAL PRIMARY KEY,
    nom TEXT NOT NULL
);

CREATE TABLE type_plantation (
    id SERIAL PRIMARY KEY,
    nom TEXT NOT NULL
);

CREATE TABLE parcelle (
    id SERIAL PRIMARY KEY,
    nom TEXT NOT NULL,
    surface DECIMAL(8, 2) NOT NULL,
    type_id INT NOT NULL,
    CONSTRAINT parcelle_type_id_foreign FOREIGN KEY (type_id) REFERENCES type_plantation(id)
);

CREATE TABLE type_plateau (
    id SERIAL PRIMARY KEY,
    nom TEXT NOT NULL,
    format TEXT NOT NULL,
    poids DECIMAL(8, 2) NOT NULL
);

CREATE TABLE fournisseur (
    id SERIAL PRIMARY KEY,
    nom TEXT NOT NULL
);

CREATE TABLE variété (
    id SERIAL PRIMARY KEY,
    nom TEXT NOT NULL,
    fruit_id INT NOT NULL,
    saisonnalité TEXT NOT NULL,
    CONSTRAINT variété_fruit_id_foreign FOREIGN KEY (fruit_id) REFERENCES fruit(id)
);

CREATE TABLE plantation (
    id BIGSERIAL PRIMARY KEY,
    campagne INT NOT NULL,  
    etat TEXT NOT NULL,
    parcelle_id INT NOT NULL,  
    nombre_plants INT NOT NULL,
    variété_id INT NOT NULL,  
    type_plants_id INT NOT NULL,  
    fournisseur_id INT NOT NULL,  
    pépiniériste_id INT NOT NULL,  
    date DATE NOT NULL,
    passeport_phyto TEXT NOT NULL,
    CONSTRAINT plantation_campagne_foreign FOREIGN KEY (campagne) REFERENCES année(id),
    CONSTRAINT plantation_parcelle_foreign FOREIGN KEY (parcelle_id) REFERENCES parcelle(id),
    CONSTRAINT plantation_variete_foreign FOREIGN KEY (variété_id) REFERENCES variété(id),
    CONSTRAINT plantation_type_plant_foreign FOREIGN KEY (type_plants_id) REFERENCES type_plant(id),
    CONSTRAINT plantation_fournisseur_foreign FOREIGN KEY (fournisseur_id) REFERENCES fournisseur(id),
    CONSTRAINT plantation_pepinieriste_foreign FOREIGN KEY (pépiniériste_id) REFERENCES pépiniériste(id)
);

CREATE TABLE ramassage (
    id SERIAL PRIMARY KEY,
    parcelle_id INT NOT NULL, 
    date DATE NOT NULL,
    periode_journée TEXT NOT NULL,
    nombre_plateaux INT NOT NULL,
    type_plateau_id INT NOT NULL,
    CONSTRAINT ramassage_parcelle_foreign FOREIGN KEY (parcelle_id) REFERENCES parcelle(id),
    CONSTRAINT ramassage_typeplateau_id_foreign FOREIGN KEY (type_plateau_id) REFERENCES type_plateau(id)
);