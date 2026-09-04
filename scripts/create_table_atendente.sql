CREATE TABLE IF NOT EXISTS atendente (
    ida SERIAL PRIMARY KEY,
    cpf VARCHAR(11) UNIQUE NOT NULL,
    nomeCompleto VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL CHECK (email ~ '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$'),
    endereco VARCHAR(8) NOT NULL,
    matricula VARCHAR(20) UNIQUE NOT NULL,
    dataAdmissao DATE NOT NULL
);