create database exercicio3;
use exercicio3;

DROP TABLE IF EXISTS alocacao CASCADE;
DROP TABLE IF EXISTS departamento CASCADE;
DROP TABLE IF EXISTS dependente CASCADE;
DROP TABLE IF EXISTS empregado CASCADE;
DROP TABLE IF EXISTS projeto CASCADE;


CREATE TABLE empregado (
	matricula int(11) NOT NULL,
    nome varchar(80),
    endereco varchar(80),
    salario int(11),
    supervisor int(11),
    depto int(11),
    
    primary key (matricula)
) ENGINE=InnoDB;

CREATE TABLE departamento (
	coddep int(11) NOT NULL,
    nome varchar(80),
    gerente int(11),
    dataini date,
    
    primary key (coddep)
) ENGINE=InnoDB;

CREATE TABLE projeto (
	codproj int(11) NOT NULL,
    nome varchar(80),
    locall varchar(80),
    depart int(11),
    
    primary key (codproj)
) ENGINE=InnoDB;

CREATE TABLE alocacao (
	matric int(11) NOT NULL,
    codigop int(11) NOT NULL,
    horas int(10),
    
    primary key (matric, codigop)
) ENGINE=InnoDB;

CREATE TABLE dependente (
	coddepend int(11) NOT NULL,
    matricula int(11) NOT NULL,
    nome varchar(80),
    sexo char(2),
    
    primary key (coddepend,matricula)
) ENGINE=InnoDB;

ALTER TABLE empregado ADD CONSTRAINT fk_supervisor FOREIGN KEY (supervisor) REFERENCES empregado(matricula);
ALTER TABLE empregado ADD CONSTRAINT fk_depto FOREIGN KEY (depto) REFERENCES departamento(coddep);
ALTER TABLE departamento ADD CONSTRAINT fk_gerente FOREIGN KEY (gerente) REFERENCES empregado(matricula);
ALTER TABLE projeto ADD CONSTRAINT fk_depart FOREIGN KEY (depart) REFERENCES departamento(coddep);
ALTER TABLE alocacao ADD CONSTRAINT fk_matric FOREIGN KEY (matric) REFERENCES empregado(matricula);
ALTER TABLE alocacao ADD CONSTRAINT fk_codigop FOREIGN KEY (codigop) REFERENCES projeto(codproj);
ALTER TABLE dependente ADD CONSTRAINT fk_matricula FOREIGN KEY (matricula) REFERENCES empregado(matricula);