
CREATE DATABASE bradesco;
USE bradesco;

CREATE TABLE clientes( codCliente INT PRIMARY KEY, nome VARCHAR(50) NOT NULL );

INSERT INTO clientes (codCliente, nome) VALUES  (1, 'John Doe'), (2, 'Jane Smith'), (3, 'Bob Johnson'), (4, 'Sarah Lee'), (5, 'Michael Brown'), (6, 'Emily Davis'), (7, 'William Thompson'), (8, 'Julia Rodriguez'), (9, 'David Kim'), (10, 'Stephanie Taylor');

CREATE TABLE vendedores( codVendedor INT, nome VARCHAR(50) NOT
NULL);

INSERT INTO vendedores (codVendedor, nome) VALUES  (1, 'John Smith'), (2, 'Jane Doe'), (3, 'Bob Johnson'), (4, 'Sarah Lee'), (5, 'Michael Brown'), (6, 'Emily Davis'), (7, 'William Thompson'), (8, 'Julia
Rodriguez'), (9, 'David Kim'), (10, 'Stephanie Taylor');


CREATE TABLE vendas ( codVendas INT PRIMARY KEY, datavenda DATE NOT NULL, codCliente INT, codVendedor INT)

INSERT INTO vendas (codVendas, datavenda, codCliente, codVendedor) VALUES  (1, '2023-04-25', 1, 1), (2, '2023-04-26', 2, 2), (3, '2023-04-27', 3, 3), (4, '2023-04-28', 4, 4), (5, '2023-04-29', 5, 5), (6, '2023-04-30', 6, 6), (7, '2023-05-01', 7, 7), (8, '2023-05-02', 8, 8), (9, '2023-05-03', 9, 9), (10, '2023-05-04', 10, 10);


#EXERCICIO ALTERANDO A TABELA
ALTER TABLE vendas ADD COLUMN pagamento VARCHAR(255);
ALTER TABLE vendas MODIFY COLUMN datavenda VARCHAR(100);
ALTER TABLE vendas RENAME COLUMN datavenda TO data_venda;
ALTER TABLE vendas DROP COLUMN pagamento;

#EXERCICIO UPDATE
UPDATE vendedores SET nome = 'John Smith Doe' WHERE codVendedor = 1;
UPDATE vendedores SET nome = 'Jane Doe Smith' WHERE codVendedor = 2;
UPDATE vendedores SET nome = 'Bob Johnson Smith' WHERE codVendedor = 3;
UPDATE vendedores SET nome = 'Sarah Lee Hilbert' WHERE codVendedor = 4;
UPDATE vendedores SET nome = 'Michael Jackson Brown' WHERE codVendedor = 5;

UPDATE clientes SET nome='John Doe Smith' WHERE codCliente = 1;
UPDATE clientes SET nome='Jane Smith Taylor' WHERE codCliente = 2;
UPDATE clientes SET nome='Bob Johnson Thompson' WHERE codCliente = 3;
UPDATE clientes SET nome='Sarah Lee Davis' WHERE codCliente = 4;
UPDATE clientes SET nome='Michael Brown Hilbert' WHERE codCliente = 5;

#EXERCICIO DE MANIPULACAO
SELECT * FROM vendas AS vs INNER JOIN clientes AS cs ON vs.codCliente = cs.codCliente;

SELECT * FROM vendas AS vs LEFT JOIN vendedores AS vd ON vs.codVendedor = vd.codVendedor;

SELECT * FROM vendas AS vs RIGHT JOIN vendedores AS vd ON vs.codVendedor = vd.codVendedor;

SELECT * FROM vendas AS vs INNER JOIN clientes AS cs ON vs.codCliente = cs.codCliente LEFT JOIN vendedores AS vd ON vs.codVendedor = vd.codVendedor;

SELECT vs.data_venda FROM vendas AS vs LEFT JOIN clientes AS cs ON vs.codCliente = cs.codCliente RIGHT JOIN vendedores AS vd ON vs.codVendedor = vd.codVendedor GROUP BY vs.data_venda ORDER BY vs.data_venda DESC; 


