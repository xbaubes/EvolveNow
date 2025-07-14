-- TAULA DÉU
CREATE TABLE Deu (
    id INT IDENTITY(1,1) PRIMARY KEY,
    username NVARCHAR(50) NOT NULL UNIQUE,
    password_hash NVARCHAR(MAX) NOT NULL,
    permet_creacio BIT NOT NULL
);

-- TAULA BIOMA
CREATE TABLE Bioma (
    id INT IDENTITY(1,1) PRIMARY KEY,
    caracteristiques NVARCHAR(MAX)
);

-- TAULA ESPECIE
CREATE TABLE Especie (
    id INT IDENTITY(1,1) PRIMARY KEY,
    nom NVARCHAR(100) NOT NULL,
    any_aparicio INT NOT NULL,
    especie_origen_id INT NULL,
    caracteristiques NVARCHAR(MAX),
    extinta BIT DEFAULT 0,
    motiu_extincio NVARCHAR(MAX),
    deu_id INT NULL,

    CONSTRAINT FK_Especie_Origen FOREIGN KEY (especie_origen_id) REFERENCES Especie(id),
    CONSTRAINT FK_Especie_Deu FOREIGN KEY (deu_id) REFERENCES Deu(id)
);

-- TAULA LLINATGE
CREATE TABLE Llinatge (
    any_aparicio INT NOT NULL,
    estadistiques_finals NVARCHAR(MAX),
    especie_id INT NOT NULL,
    bioma_id INT NOT NULL,
	
	CONSTRAINT PK_Llinatge PRIMARY KEY (especie_id, bioma_id),
    CONSTRAINT FK_Llinatge_Especie FOREIGN KEY (especie_id) REFERENCES Especie(id),
    CONSTRAINT FK_Llinatge_Bioma FOREIGN KEY (bioma_id) REFERENCES Bioma(id)
);

-- TAULA REGISTRE EVOLUTIU
CREATE TABLE RegistreEvolutiu (
    id INT IDENTITY(1,1) PRIMARY KEY,
    nombre_individus INT NOT NULL,
    caracteristiques_actuals NVARCHAR(MAX),
    estadistiques NVARCHAR(MAX),
    especie_id INT NOT NULL,
    bioma_id INT NOT NULL,

    CONSTRAINT FK_Registre_Llinatge FOREIGN KEY (especie_id, bioma_id) REFERENCES Llinatge(especie_id, bioma_id)
);
