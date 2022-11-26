USE EMPRESA;
INSERT INTO DEPARTAMENTO VALUES
	('Pesquisa', '5', NULL, '1988-05-22'),
    ('Administração',' 4', NULL, '1995-01-01'),
    ('Matriz', '1', NULL, '1981-06-19');
    
INSERT INTO DEPT_lOCALIZACAO VALUES
	(1, 'Houston'),
    (4, 'Stalford'),
    (5, 'Bellaire'),
    (5, 'Sugarland');
    
INSERT INTO PROJETO VALUES
	('ProdutoX', 1, 'Bellaire', 5),
    ('ProdutoY', 2, 'Sugarland', 5),
    ('ProdutoZ', 3, 'Houston', 5),
    ('Automatização', 10, 'Stalford', 4),
    ('Reorganização', 20, 'Houston', 1),
    ('Novos benefícios', 30, 'Stalford', 4);

    
INSERT INTO EMPREGADO (Pnome, Minicial, Unome, SSN, Datanasc, Endereco, Sexo , Salario, Dno) 
VALUES	('James ', 'E', 'Borg ', '888665555', '1937-11-10', '450 Stone, Houston, TX ', 'M', 55000, 1),
		('John', 'B' ,'Smith' , '123456789', '1965-01-09', '731 Fondren, Houston, TX', 'M', '30000','5'),
		('Franklin', 'T', 'Wong', '333445555', '1955-12-08' ,'638 Voss, Houston, TX' ,'M', '40000','5'),
		('Alicia', 'J', 'Zelaya', '999887777', '1968-01-19', '3321 Castle, Spring, TX', 'F', '25000', '4'),
		('Jennifer', 's', 'Wallace', '987654321', '1941-06-20', '291 Berry, Bellaire, TX', 'F' ,'43000', '4'),
		('Ramesh', 'K', 'Narayan', '666884444', '1962-09-15', '975 Fire Oak, Humble, TX', 'M', '38000', '5'),
		('Joyce', 'A', 'English', '453453453', '1972-07-31', '5631 Rice, Houston, TX', 'F', '25000', '5'),
		('Ahmad', 'V', 'Jabbar', '987987987', '1969-03-29', '980 Dallas, Houston, TX', 'M', '25000', '4');
	
    
UPDATE EMPREGADO SET SuperSSN = null WHERE SSN = '888665555';
UPDATE EMPREGADO SET SuperSSN = '333445555' WHERE SSN = '123456789';
UPDATE EMPREGADO SET SuperSSN = '888665555' WHERE SSN = '333445555';
UPDATE EMPREGADO SET SuperSSN = '987654321' WHERE SSN = '999887777';
UPDATE EMPREGADO SET SuperSSN = '888665555' WHERE SSN = '987654321';
UPDATE EMPREGADO SET SuperSSN = '333445555' WHERE SSN = '666884444';
UPDATE EMPREGADO SET SuperSSN = '333445555' WHERE SSN = '453453453';
UPDATE EMPREGADO SET SuperSSN = '987654321' WHERE SSN = '987987987';

UPDATE DEPARTAMENTO SET GerSSN	= '888665555 ' WHERE Dnumero = 1;
UPDATE DEPARTAMENTO SET GerSSN = '987654321' WHERE Dnumero = 4;
UPDATE DEPARTAMENTO SET GerSSN = '333445555' WHERE Dnumero = 5;

INSERT INTO TRABALHA_EM VALUES
	('123456789', '1', '32.5'),
	('123456789', '2', '7.5'),
	('666884444', '3', '40.0'),
	('453453453', '1', '20.0'),
	('453453453', '2', '20.0'),
	('333445555', '2', '10.0'),
	('333445555', '3', '10.0'),
	('333445555', '10', '10.0'),
	('333445555', '20', '10.0'),
	('999887777', '30', '30.0'),
	('999887777', '10', '10.0'),
	('987987987', '10', '35.0'),
	('987987987', '30', '5.0'),
	('987654321', '30', '20.0'),
	('987654321', '20', '15.0'),
	('888665555', '20', NULL);
    
INSERT INTO DEPENDENTE VALUES
	('333445555', 'Alicia', 'F', '1986-04-05', 'Filha'),
	('333445555', 'Tiago', 'M', '1983-10-25', 'Filho'),
	('333445555', 'Janaína', 'F', '1958-05-03', 'cônjuge'),
	('987654321', 'Antonio', 'M', '1942-02-28', 'cônjuge'),
	('123456789', 'Michael', 'M', '1988-01-04', 'Filho'),
	('123456789', 'Alicia', 'F', '1988-12-30', 'Filha'),
	('123456789', 'Elizabeth', 'F', '1967-05-05', 'cônjuge');

