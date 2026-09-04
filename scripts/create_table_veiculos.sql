CREATE TABLE IF NOT EXISTS veiculos (
    idv SERIAL PRIMARY KEY,
    placa VARCHAR(7) UNIQUE NOT NULL CHECK (placa ~ '^[A-Z]{3}[0-9]{4}$'),
    marcaModelo VARCHAR(50) NOT NULL,
    tipo VARCHAR(20) NOT NULL CHECK(tipo IN ('moto','carro'))
);