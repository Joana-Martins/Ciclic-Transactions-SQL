-- teste_04 (PostgreSQL 10)
INSERT INTO "Schedule" ("time", "#t", "op", "attr") VALUES
(1, 1,'R','X'),
(2, 2, 'R', 'X'),
(3, 1, 'R', 'X'),
(4, 2, 'W', 'X'),
(5, 1, 'W', 'Y'),
(6, 2, 'C', '-'),
(7, 1, 'C', '-');
-- Resultado esperado: 0