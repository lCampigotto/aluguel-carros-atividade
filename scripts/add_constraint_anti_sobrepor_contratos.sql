ALTER TABLE contratos
ADD CONSTRAINT antiSobreporContratos
EXCLUDE USING GIST (
    idv WITH =,
    daterange(inicio, fim, '[]') WITH &&
);