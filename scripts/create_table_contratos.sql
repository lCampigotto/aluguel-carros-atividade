CREATE TABLE IF NOT EXISTS contratos (
    idcontrato SERIAL PRIMARY KEY,
    numero VARCHAR(20) UNIQUE NOT NULL,
    inicio DATE NOT NULL,
    fim DATE NOT NULL,
    tipoPagamento VARCHAR(50) NOT NULL CHECK(tipoPagamento IN ('pix','cartao','boleto','transferencia')),
    id INT NOT NULL REFERENCES cliente(id),
    idv INT NOT NULL REFERENCES veiculos(idv)
);