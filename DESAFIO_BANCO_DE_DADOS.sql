/* 1)Crie o banco de dados “Armarinho”. */
CREATE DATABASE ARMARINHO;
USE ARMARINHO;

/*2) Crie a tabela clientes e insira as informações dos clientes de Maria da Glória. */
CREATE TABLE CLIENTES(
ID INT PRIMARY KEY auto_increment,
NAME VARCHAR(45) NOT NULL,
STREET VARCHAR(60) NOT NULL,
CITY VARCHAR (35) NOT NULL,
STATE CHAR (2) NOT NULL,
CREDIT_LIMITE DECIMAL (9,2) 


);

INSERT INTO CLIENTES( NAME, STREET, CITY,STATE,CREDIT_LIMITE) VALUES('PEDRO AUGUSTO DA ROCHA','RUA PEDRO CARLOS HOFFMAN','PORTO ALEGRE','RS',700.00),
('ANTONIO CARLOS MAMEL','AV PINHEIROS','BELO HORIZONTE','MG',3500.50),
('LUIZA AUGUSTA MHOR','RUA SALTO GRANDE','NITERÓI','RJ',4000.00),
('JANE ESTER','AV 7 DE SETEMBRO','ERECHIN','RS','800.50'),
('MARCOS ANTÔNIO DOS SANTOS','AV FARRAPOS','PORTO ALEGRE','RS',4250.25);

/*3) Faça o comando de visualização da tabela criada (no item 2).*/
SELECT *FROM CLIENTES;

/*4) Depois , insira mais três clientes na tabela. O preenchimento dos campos da tabela ficam a
seu critério. Os dados não precisam ser reais, mas precisam ter sentido. */

INSERT INTO CLIENTES( NAME, STREET, CITY,STATE,CREDIT_LIMITE) VALUES('GABRIELA ROCHA','RUA PEDRO GODIN','SALVADOR','BA',950.00),
('MANOEL RIBEIRO DOS SANTOS','RUA RPROFESSORA WANDA ','JOÃO PESSOA','PB',7500.80),
('BRUNO GABRIELLI ','AV ANA NERY','ARACAJU','SE',10000.00);

/*5) Faça o comando de visualização da tabela Cliente.*/
SELECT *FROM CLIENTES;

/*6) Para a reinauguração do Armarinho, mostre o nome e o endereço completo (com rua,
cidade e estado) dos clientes que  moram na região Sudeste do Brasil.*/

SELECT NAME,STREET,CITY,STATE
FROM CLIENTES
WHERE STATE IN ('RJ','RS','SP','MG')


