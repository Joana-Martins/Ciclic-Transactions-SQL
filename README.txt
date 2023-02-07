Trabalho Prático de Banco de Dados
Autores: Joana Martins
Professor: Rodrigo Laiola

Como executar:
1 - Clone o repositório em sua máquina ou decompate a pasta zipada
2 - Abra a pasta no terminal
3 - Digite "docker compose up"
4 - Abra o navegador em "localhost:8080"
5 - Acesse o adminer com o Postgresql com Usuário: user e Senha: 123
6 - A tabela utilizada se encontra em Schedule.sql
7 - A função utilizada se encontra em function.sql
8 - Na pasta teste escolha o teste que irá popular a tabela
9 - Abra uma nova consulta no Adminer e cole o conteúdo dos arquivos.
10 - Clique em executar!

Explicação dos resultados:
1 - Caso retorne o valor 1, não há ciclos, portanto serializável 
2 - Caso retorne 0, é porque há ciclos, ocorrendo deadlock

Testes:
1 - Troque os valores de insersão da tabela "Schedule" para a inserção que deseja testar.
2 - No próprio arquivo .sql dos testes está comentado o resultado esperado. 