-- teste_03 (PostgreSQL 10)
INSERT INTO "Schedule" ("time", "#t", "op", "attr")
VALUES (9, 1,'R','X'),
       (10, 2, 'R', 'X'),
       (11, 1, 'R', 'X'),
       (12, 2, 'W', 'X'),
       (13, 1, 'W', 'X'),
       (14, 2, 'C', '-'),
       (15, 3, 'R', 'X'),
       (16, 1, 'C', '-'),
       (17, 1, 'C', '-');
-- Resultado esperado: 1