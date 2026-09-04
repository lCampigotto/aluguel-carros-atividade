CREATE TABLE IF NOT EXISTS contratos (
    idcontrato SERIAL PRIMARY KEY,
    numero VARCHAR(20) UNIQUE NOT NULL,
    inicio DATE NOT NULL,
    fim DATE NOT NULL,
    tipoPagamento VARCHAR(50) NOT NULL CHECK(tipoPagamento IN ('pix','cartao','boleto','transferencia')),
    idc INT NOT NULL REFERENCES cliente(id),
    idv INT NOT NULL REFERENCES veiculos(idv),
    ida_atendente INT REFERENCES atendente(ida)
);