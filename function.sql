-- function signature (PostgreSQL 10)
CREATE OR REPLACE FUNCTION "testeScheduleSerial" () 
RETURNS integer AS $$
DECLARE
-- variáveis de controle para contar transações e ciclos
  cnt INTEGER;
  cycles INTEGER;
BEGIN
-- inicializa o número de ciclos como 0
  cycles := 0; 
  FOR cnt IN 1..(SELECT COUNT(*) FROM "Schedule") LOOP
  -- Define uma operação recursiva para achar o caminho da transação
    WITH recursive "Transaction" (time, "#t", op, attr, path, cycle) AS (
      SELECT "time", "#t", "op", "attr", ARRAY[time], false
      FROM "Schedule"
      WHERE time = cnt
    UNION ALL
      SELECT s."time", s."#t", s."op", s."attr", path || s."time", 
             s."#t" = ANY(path)
      FROM "Transaction" t
      JOIN "Schedule" s ON s."#t" = t."#t" AND s."time" > t."time"
    )
    -- Conta o numero de transações que tem ciclos
    SELECT INTO cycles 
      COUNT(*) 
    FROM "Transaction" 
    WHERE cycle = true;
    IF cycles > 0 THEN
    -- Se ciclos forem detectados, retorna 0. Pássivel de deadlocks
      RETURN 0;
    END IF;
  END LOOP;
  -- Se ciclos não forem detectados, retorna 1, significando que é serializável 
  RETURN 1;
END;
$$ LANGUAGE plpgsql;

-- calling function
SELECT "testeScheduleSerial"() AS resp;
