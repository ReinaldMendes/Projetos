/* Exercicio numero 1 */
Create table Produto(
id_nf int,
id_item int,
cod_prod int,
valor_unit float,
quantidade int,
desconto  float,
PRIMARY KEY(id_nf,id_item,cod_prod)
);

INSERT INTO Produto(id_nf,id_item,cod_prod,valor_unit,quantidade,desconto ) VALUES(1,1,1,25.00,10,5);
INSERT INTO Produto(id_nf,id_item,cod_prod,valor_unit,quantidade,desconto ) VALUES(1,2,2,13.50,3,NULL);
INSERT INTO Produto(id_nf,id_item,cod_prod,valor_unit,quantidade,desconto ) VALUES(1,3,3,15.00,2,NULL);
INSERT INTO Produto(id_nf,id_item,cod_prod,valor_unit,quantidade,desconto ) VALUES(1,4,4,10.00,1,NULL);
INSERT INTO Produto(id_nf,id_item,cod_prod,valor_unit,quantidade,desconto ) VALUES(1,5,5,30.00,1,NULL);
INSERT INTO Produto(id_nf,id_item,cod_prod,valor_unit,quantidade,desconto ) VALUES(2,1,3,15.00,4,NULL);
INSERT INTO Produto(id_nf,id_item,cod_prod,valor_unit,quantidade,desconto ) VALUES(2,2,4,10.00,5,NULL);
INSERT INTO Produto(id_nf,id_item,cod_prod,valor_unit,quantidade,desconto ) VALUES(2,3,5,30.00,7,NULL);
INSERT INTO Produto(id_nf,id_item,cod_prod,valor_unit,quantidade,desconto ) VALUES(3,1,1,25.00,5,NULL);
INSERT INTO Produto(id_nf,id_item,cod_prod,valor_unit,quantidade,desconto ) VALUES(3,2,4,10.00,4,NULL);
INSERT INTO Produto(id_nf,id_item,cod_prod,valor_unit,quantidade,desconto ) VALUES(3,3,5,30.00,5,NULL);
INSERT INTO Produto(id_nf,id_item,cod_prod,valor_unit,quantidade,desconto ) VALUES(3,4,2,13.50,7,NULL);
INSERT INTO Produto(id_nf,id_item,cod_prod,valor_unit,quantidade,desconto ) VALUES(4,1,5,30.00,10,15);
INSERT INTO Produto(id_nf,id_item,cod_prod,valor_unit,quantidade,desconto ) VALUES(4,2,4,10.00,12,5);
INSERT INTO Produto(id_nf,id_item,cod_prod,valor_unit,quantidade,desconto ) VALUES(4,3,1,25.00,13,5);
INSERT INTO Produto(id_nf,id_item,cod_prod,valor_unit,quantidade,desconto ) VALUES(4,4,2,13.50,15,5);
INSERT INTO Produto(id_nf,id_item,cod_prod,valor_unit,quantidade,desconto ) VALUES(5,1,3,15.00,3,NULL);
INSERT INTO Produto(id_nf,id_item,cod_prod,valor_unit,quantidade,desconto ) VALUES(5,2,5,30.00,6,NULL);
INSERT INTO Produto(id_nf,id_item,cod_prod,valor_unit,quantidade,desconto ) VALUES(6,1,1,25.00,22,15);
INSERT INTO Produto(id_nf,id_item,cod_prod,valor_unit,quantidade,desconto ) VALUES(6,2,3,15.00,25,20);
INSERT INTO Produto(id_nf,id_item,cod_prod,valor_unit,quantidade,desconto ) VALUES(7,1,1,25.00,10,3);
INSERT INTO Produto(id_nf,id_item,cod_prod,valor_unit,quantidade,desconto ) VALUES(7,2,2,13.50,10,4);
INSERT INTO Produto(id_nf,id_item,cod_prod,valor_unit,quantidade,desconto ) VALUES(7,3,3,15.00,10,4);
INSERT INTO Produto(id_nf,id_item,cod_prod,valor_unit,quantidade,desconto ) VALUES(7,4,5,30.00,10,1);

-------------------------------------------------------------------------------------------------------------

SELECT id_nf,id_item,cod_prod,valor_unit  
FROM Produto 
WHERE desconto ISNULL;

SELECT id_nf,id_item,cod_prod, valor_unit - (valor_unit*(desconto/100)) as valor_vendido  
FROM Produto 
WHERE desconto notNULL;

UPDATE Produto SET desconto = 0 WHERE desconto ISNULL;

SELECT id_nf,id_item,cod_prod, valor_unit,quantidade *  valor_unit as valor_total, valor_unit - (valor_unit*(desconto/100)) as valor_vendido, desconto 
from Produto;


SELECT id_nf, SUM (quantidade *  valor_unit) as valor_total 
FROM Produto
GROUP BY id_nf
ORDER BY valor_total DESC;

SELECT id_nf, SUM (valor_unit - (valor_unit*(desconto/100))) as valor_vendido ,  SUM (quantidade *  valor_unit) as valor_total 
FROM Produto
GROUP BY id_nf
ORDER BY valor_vendido DESC;

SELECT cod_prod
FROM produto
WHERE quantidade = (SELECT MAX(quantidade) FROM produto)
GROUP BY cod_prod;

SELECT id_nf, cod_prod, quantidade
FROM produto
WHERE quantidade > 10
GROUP BY quantidade,id_nf, cod_prod;

SELECT id_nf, SUM (quantidade *  valor_unit) as valor_total 
FROM Produto where id_nf = 4 OR id_nf > 5
GROUP BY id_nf 
ORDER by valor_total DESC;

SELECT cod_prod, AVG(desconto) AS media_desconto
FROM Produto
GROUP BY cod_prod;


SELECT cod_prod, AVG(desconto) AS media, AVG(desconto) AS maior, AVG(desconto) AS menor
FROM Produto
GROUP BY cod_prod
ORDER by cod_prod , maior desc

SELECT ID_NF, COUNT(*) AS QTD_ITENS
FROM produto
GROUP BY ID_NF
HAVING COUNT(*) > 3;

--------------------------------------------------------------------------------------------------------------------------------------------------------------
/* Exercicio numero 2 */
Create table Aluno(
MAT int ,
nome varchar(100),
endereco varchar(100),
cidade varchar(15),
PRIMARY KEY(MAT)
);
Create table Disciplina(
cod_Disc varchar (10),
nome_Disc varchar (60),
carga_Hor varchar (60),
PRIMARY KEY(Cod_Disc)
);
Create table Professor(
cod_prof int PRIMARY KEY,
Nome varchar(60),
Endereco varchar (40),
Cidade varchar(30 )
);
Create table Turma(
cod_turma int,
ano varchar(20),
horario varchar (100),
cod_Disc varchar,
cod_prof int,
PRIMARY KEY(cod_turma,ano,cod_Disc,cod_prof),
FOREIGN KEY(cod_Disc) REFERENCES Disciplina(cod_Disc),
FOREIGN KEY(cod_prof) REFERENCES Professor(cod_prof)
);

Create table Historico(
MAT int ,
cod_Disc varchar,
cod_turma int,
cod_prof int, 
ano varchar(20),
frequencia varchar(10),
nota INT,
PRIMARY KEY(MAT,cod_Disc,cod_prof,cod_turma,ano),
FOREIGN KEY(MAT) REFERENCES Aluno(MAT),
FOREIGN KEY(cod_Disc,cod_prof,cod_turma,ano) REFERENCES Turma(cod_Disc,cod_prof,cod_turma,ano)
);
-----------------------------------------------------------------------------------------------------------------------------------------
/*Insira os seguintes registros*/
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
INSERT INTO aluno(MAT,nome,endereco,cidade) VALUES('2015010101','José de Alencar','Rua das Almas', 'Natal');
INSERT INTO aluno(MAT,nome,endereco,cidade) VALUES('2015010102','João José','Avenida Ruy Carneiro', 'João Pessoa');
INSERT INTO aluno(MAT,nome,endereco,cidade) VALUES('2015010103','Maria Joaquina','Rua Carrossel', 'Recife');
INSERT INTO aluno(MAT,nome,endereco,cidade) VALUES('2015010104','Maria Das Dores','Rua das Ladeira', 'Fortaleza');
INSERT INTO aluno(MAT,nome,endereco,cidade) VALUES('2015010105','Josué Claudino Dos Santos','Centro', 'Natal');
INSERT INTO aluno(MAT,nome,endereco,cidade) VALUES('2015010106','Josuélisson Claudino Dos Santos','Centro', 'Natal');

INSERT INTO Disciplina(cod_Disc,nome_Disc,carga_Hor) VALUES('BD','Banco de Dados','100');
INSERT INTO Disciplina(cod_Disc,nome_Disc,carga_Hor) VALUES('POO','Programação Com Acesso a Banco de Dados','100');
INSERT INTO Disciplina(cod_Disc,nome_Disc,carga_Hor) VALUES('WEB','Autoria WEB','50');;
INSERT INTO Disciplina(cod_Disc,nome_Disc,carga_Hor) VALUES('ENG','Engenharia de Software','80');

INSERT INTO Professor(cod_prof,Nome, endereco, cidade) VALUES('212131','Nickerson Ferreira','Rua Manaira', 'João Pessoa');
INSERT INTO Professor(cod_prof,Nome, endereco, cidade) VALUES('122135','Adorilson Bezerra','Avenida Salgado Filho', 'Natal');
INSERT INTO Professor(cod_prof,Nome, endereco, cidade) VALUES('192011','Diego Oliveira','Avenida Roberto Freire', 'Natal');

INSERT INTO Turma(cod_Disc,cod_turma,cod_prof,ano,horario) VALUES('BD','1','212131','2015','11H-12H');
INSERT INTO Turma(cod_Disc,cod_turma,cod_prof,ano,horario) VALUES('BD','2','212131','2015','13H-14H');
INSERT INTO Turma(cod_Disc,cod_turma,cod_prof,ano,horario) VALUES('POO','1','192011','2015','08H-09H');
INSERT INTO Turma(cod_Disc,cod_turma,cod_prof,ano,horario) VALUES('WEB','1','192011','2015','07H-08H');
INSERT INTO Turma(cod_Disc,cod_turma,cod_prof,ano,horario) VALUES('ENG','1','122135','2015','10H-11H');

INSERT INTO Historico(MAT,cod_Disc,cod_turma,cod_prof,ano,frequencia,nota) VALUES('2015010101','BD','1','212131','2015','100',8);
INSERT INTO Historico(MAT,cod_Disc,cod_turma,cod_prof,ano,frequencia,nota) VALUES('2015010101','POO','1','192011','2015','60',6);
INSERT INTO Historico(MAT,cod_Disc,cod_turma,cod_prof,ano,frequencia,nota) VALUES('2015010101','WEB','1','192011','2015','80',7);
INSERT INTO Historico(MAT,cod_Disc,cod_turma,cod_prof,ano,frequencia,nota) VALUES('2015010101','ENG','1','122135','2015','100',9);

INSERT INTO Historico(MAT,cod_Disc,cod_turma,cod_prof,ano,frequencia,nota) VALUES('2015010102','BD','2','212131','2015','50',4);
INSERT INTO Historico(MAT,cod_Disc,cod_turma,cod_prof,ano,frequencia,nota) VALUES('2015010102','POO','1','192011','2015','70',7);
INSERT INTO Historico(MAT,cod_Disc,cod_turma,cod_prof,ano,frequencia,nota) VALUES('2015010102','WEB','1','192011','2015','80',7);
INSERT INTO Historico(MAT,cod_Disc,cod_turma,cod_prof,ano,frequencia,nota) VALUES('2015010102','ENG','1','122135','2015','100',9);

INSERT INTO Historico(MAT,cod_Disc,cod_turma,cod_prof,ano,frequencia,nota) VALUES('2015010103','BD','2','212131','2015','50',4);
INSERT INTO Historico(MAT,cod_Disc,cod_turma,cod_prof,ano,frequencia,nota) VALUES('2015010103','POO','1','192011','2015','70',7);
INSERT INTO Historico(MAT,cod_Disc,cod_turma,cod_prof,ano,frequencia,nota) VALUES('2015010103','WEB','1','192011','2015','80',7);
INSERT INTO Historico(MAT,cod_Disc,cod_turma,cod_prof,ano,frequencia,nota) VALUES('2015010103','ENG','1','122135','2015','100',9);

INSERT INTO Historico(MAT,cod_Disc,cod_turma,cod_prof,ano,frequencia,nota) VALUES('2015010104','BD','1','212131','2015','50',4);
INSERT INTO Historico(MAT,cod_Disc,cod_turma,cod_prof,ano,frequencia,nota) VALUES('2015010104','POO','1','192011','2015','70',7);
INSERT INTO Historico(MAT,cod_Disc,cod_turma,cod_prof,ano,frequencia,nota) VALUES('2015010104','WEB','1','192011','2015','80',7);
INSERT INTO Historico(MAT,cod_Disc,cod_turma,cod_prof,ano,frequencia,nota) VALUES('2015010104','ENG','1','122135','2015','100',9);

INSERT INTO Historico(MAT,cod_Disc,cod_turma,cod_prof,ano,frequencia,nota) VALUES('2015010105','BD','1','212131','2015','90',8);
INSERT INTO Historico(MAT,cod_Disc,cod_turma,cod_prof,ano,frequencia,nota) VALUES('2015010105','POO','1','192011','2015','40',2);
INSERT INTO Historico(MAT,cod_Disc,cod_turma,cod_prof,ano,frequencia,nota) VALUES('2015010105','WEB','1','192011','2015','60',5);
INSERT INTO Historico(MAT,cod_Disc,cod_turma,cod_prof,ano,frequencia,nota) VALUES('2015010105','ENG','1','122135','2015','90',9);

INSERT INTO Historico(MAT,cod_Disc,cod_turma,cod_prof,ano,frequencia,nota) VALUES('2015010106','BD','2','212131','2015','70',9);
INSERT INTO Historico(MAT,cod_Disc,cod_turma,cod_prof,ano,frequencia,nota) VALUES('2015010106','POO','1','192011','2015','70',3);
INSERT INTO Historico(MAT,cod_Disc,cod_turma,cod_prof,ano,frequencia,nota) VALUES('2015010106','WEB','1','192011','2015','60',5);
INSERT INTO Historico(MAT,cod_Disc,cod_turma,cod_prof,ano,frequencia,nota) VALUES('2015010106','ENG','1','122135','2015','20',4);

SELECT mat BD  FROM historico WHERE nota < 5;

SELECT AVG(nota) AS media_POO, MAT
FROM historico WHERE cod_disc = 'POO' AND nota > 6  GROUP BY MAT;

SELECT AVG(nota) AS media_POO, MAT
FROM historico WHERE cod_disc = 'POO' AND nota > 6  GROUP BY MAT;

SELECT cidade, MAT   FROM Aluno WHERE NOT cidade =  'Natal';












