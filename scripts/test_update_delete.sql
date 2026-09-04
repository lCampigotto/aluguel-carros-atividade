-- Teste de UPDATE (oK)
UPDATE cliente SET banco = 'Inter' WHERE id = 1;

-- Teste de DELETE bloqueado pela chave primaria (ok)
-- DELETE FROM cliente WHERE id = 1;

-- Teste de DELETE permitido (OK)
DELETE FROM atendente WHERE id = 3;

--tudo certo por aqui