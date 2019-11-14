use exercicio3;

INSERT INTO `alocacao`(`matric`,`codigop`,`horas`)
	VALUES(00,00,30);
INSERT INTO `alocacao`(`matric`,`codigop`,`horas`)
	VALUES(01,01,60);
INSERT INTO `alocacao`(`matric`,`codigop`,`horas`)
	VALUES(02,02,90);
INSERT INTO `alocacao`(`matric`,`codigop`,`horas`)
	VALUES(03,03,30);
INSERT INTO `alocacao`(`matric`,`codigop`,`horas`)
	VALUES(04,04,120);

INSERT INTO `departamento`(`coddep`,`nome`,`gerente`,`dataini`)
	VALUES(00,'depA',00,'2012-05-20');
INSERT INTO `departamento`(`coddep`,`nome`,`gerente`,`dataini`)
	VALUES(01,'depB',00,'2012-05-21');
INSERT INTO `departamento`(`coddep`,`nome`,`gerente`,`dataini`)
	VALUES(02,'depC',00,'2012-05-22');
INSERT INTO `departamento`(`coddep`,`nome`,`gerente`,`dataini`)
	VALUES(03,'depD',00,'2012-05-23');
INSERT INTO `departamento`(`coddep`,`nome`,`gerente`,`dataini`)
	VALUES(04,'depE',00,'2012-05-24');

INSERT INTO `dependente`(`coddepend`,`matricula`,`nome`,`sexo`)
	VALUES(00,00,'dependA','M');
INSERT INTO `dependente`(`coddepend`,`matricula`,`nome`,`sexo`)
	VALUES(01,01,'dependB','M');
INSERT INTO `dependente`(`coddepend`,`matricula`,`nome`,`sexo`)
	VALUES(02,02,'dependC','M');
INSERT INTO `dependente`(`coddepend`,`matricula`,`nome`,`sexo`)
	VALUES(03,03,'dependD','M');
INSERT INTO `dependente`(`coddepend`,`matricula`,`nome`,`sexo`)
	VALUES(04,04,'dependE','M');

INSERT INTO `empregado`(`matricula`,`nome`,`endereco`,`salario`,`supervisor`,`depto`)
	VALUES(00,'empA','end1',1000,04,01);
INSERT INTO `empregado`(`matricula`,`nome`,`endereco`,`salario`,`supervisor`,`depto`)
	VALUES(01,'empB','end2',1000,04,01);
INSERT INTO `empregado`(`matricula`,`nome`,`endereco`,`salario`,`supervisor`,`depto`)
	VALUES(02,'empC','end3',2000,04,01);
INSERT INTO `empregado`(`matricula`,`nome`,`endereco`,`salario`,`supervisor`,`depto`)
	VALUES(03,'empD','end4',4000,04,01);
INSERT INTO `empregado`(`matricula`,`nome`,`endereco`,`salario`,`supervisor`,`depto`)
	VALUES(04,'empE','end5',4000,NULL,01);

INSERT INTO `projeto`(`codproj`,`nome`,`locall`,`depart`)
	VALUES(00,'projA','localA',00);
INSERT INTO `projeto`(`codproj`,`nome`,`locall`,`depart`)
	VALUES(01,'projB','localB',01);
INSERT INTO `projeto`(`codproj`,`nome`,`locall`,`depart`)
	VALUES(02,'projC','localC',02);
INSERT INTO `projeto`(`codproj`,`nome`,`locall`,`depart`)
	VALUES(03,'projD','localD',03);
INSERT INTO `projeto`(`codproj`,`nome`,`locall`,`depart`)
	VALUES(04,'projE','localE',04);






