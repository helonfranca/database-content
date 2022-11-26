CREATE DATABASE EMPRESA;
USE EMPRESA;

/*Criar indices primários para a tab EMPREGADO e um índice secundário também. 
As demais tabelas podem ter outros indices definidos pelo aluno.

Geralmente a PRIMARY KEY e FOREIGN KEY é indexada automatico para acelerar a busca. 
*/

CREATE TABLE EMPREGADO(
 Pnome 				VARCHAR(15) 	NOT NULL,
 Minicial		 	CHAR,
 Unome 				VARCHAR(15) 	NOT NULL,
 SSN 				CHAR(11) 		NOT NULL,
 Datanasc 			DATE			NOT NULL,
 Endereco 			VARCHAR(50),
 Sexo 				CHAR,
 Salario 			DECIMAL(10,3),
 SuperSSN			CHAR(11),
 Dno 				INT 			NOT NULL,
 PRIMARY KEY (SSN),
 FOREIGN KEY (SuperSSN) REFERENCES EMPREGADO (SSN)
);

/*a seguir cria um índice não clusterizado exclusivo na coluna SSN da tabela Empregado no 
banco de dados Empresa. O índice imporá a exclusividade dos dados inseridos na coluna Name.

Quando não declaramos NONCLUSTERED em uma chave-primária, este campo automaticamente
assume o valor de CLUSTERED. */

CREATE UNIQUE INDEX PrimaryIndexSSN ON empresa.empregado(SSN);
CREATE INDEX SecondaryIndexDno ON empresa.empregado(Dno);
SHOW INDEX FROM EMPREGADO;

CREATE TABLE DEPARTAMENTO(
 Dnome 					VARCHAR(15) 	NOT NULL,
 Dnumero 				INT 			NOT NULL,
 GerSSN					CHAR(11),
 GerDataInicio			DATE,

 PRIMARY KEY (Dnumero),
 FOREIGN KEY (GerSSN) REFERENCES EMPREGADO(SSN)
);

 ALTER TABLE EMPREGADO ADD FOREIGN KEY (Dno) REFERENCES DEPARTAMENTO(Dnumero);

CREATE INDEX PrimaryIndexGerSSN ON empresa.departamento(GerSSN);
SHOW INDEX FROM Departamento;

CREATE TABLE DEPT_lOCALIZACAO(
 Dnumero 		INT 			NOT NULL,
 Dlocalizacao 	VARCHAR(50) 	NOT NULL,
 
 PRIMARY KEY (Dnumero, Dlocalizacao),
 FOREIGN KEY (Dnumero) REFERENCES DEPARTAMENTO (Dnumero)
 );
 
 CREATE TABLE PROJETO(
  Pjnome 		VARCHAR(20) 	NOT NULL,
  Pnumero 		INT 			NOT NULL,
  Plocalizacao 	VARCHAR(50),
  Dnum 			INT   			NOT NULL,
  
  PRIMARY KEY (Pnumero),
  FOREIGN KEY (Dnum) REFERENCES DEPARTAMENTO (Dnumero)
 );
 
CREATE INDEX PrimaryIndexPjNome ON empresa.projeto(Pjnome);
SHOW INDEX FROM PROJETO;
 
 CREATE TABLE DEPENDENTE(
  ESSN 				CHAR(11) 		NOT NULL,
  Nome_dependente 	VARCHAR(20) 	NOT NULL,
  Sexo 				CHAR			NOT NULL,
  Datanasc 			DATE 			NOT NULL,
  Parentesco 		VARCHAR(10)		NOT NULL,
  
  PRIMARY KEY (ESSN, Nome_Dependente),
  FOREIGN KEY (ESSN) REFERENCES EMPREGADO (SSN)
 );

CREATE INDEX PrimaryIndexParentesco ON empresa.DEPENDENTE(Parentesco);
SHOW INDEX FROM DEPENDENTE;
 
  CREATE TABLE TRABALHA_EM(
  ESSN 		CHAR(11) 		NOT NULL,
  Pno 		INT 			NOT NULL,
  Horas 	FLOAT,

  PRIMARY KEY (ESSN, Pno),
  FOREIGN KEY (ESSN) REFERENCES EMPREGADO (SSN),
  FOREIGN KEY (Pno) REFERENCES PROJETO (Pnumero)
 );
 
 

 