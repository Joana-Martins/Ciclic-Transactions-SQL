-- teste_05 (PostgreSQL 10)
INSERT INTO "Schedule" ("time", "#t", "op", "attr") VALUES
(1, 1,'R','X'),
(2, 2, 'R', 'X'),
(3, 1, 'R', 'X'),
(4, 2, 'W', 'X'),
(5, 1, 'R', 'X'),
(6, 3, 'W', 'Y'),
(7, 3, 'C', 'Y'), 
(8, 2, 'C', '-'),
(9, 1, 'C', '-');
-- Resultado esperado: 0