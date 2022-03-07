-- ---------------------------------------------------
-- ##### ATIVIDADE LISTA TRIGGER #####
-- ---------------------------------------------------
CREATE DATABASE lista_trigger;
use lista_trigger;
drop database lista_trigger
-- ------------------------------------------------
-- TABELA PROFESSOR
-- ------------------------------------------------
CREATE TABLE IF NOT EXISTS lista_trigger.`PROFESSOR`(
  `codprofessor` INT NOT NULL AUTO_INCREMENT,
  `nomeprofessor` VARCHAR(45) NULL,
  `cpfprofessor` VARCHAR(45) NULL,
  `senhaprofessor` VARCHAR(45) NULL,
  `quantdisciplinas` VARCHAR(45) NULL,
  PRIMARY KEY (`codprofessor`))
ENGINE = InnoDB;

INSERT INTO PROFESSOR (nomeprofessor, cpfprofessor, senhaprofessor, quantdisciplinas) VALUES
("Carlos Maldonado","123.456.789.00","muitasaulas123","3"),
("Anderson Simeão","321.654.987-01","logicapura321","1"),
("José Maurício","192.168.255-17","tonarede789","2"),
("Henrique Borba","159.456.357-52","loucuratotal951","3"),
("Antenor Barbosa","147.258.369.07","sentapua456","1");


-- ------------------------------------------------
-- TABELA DISCIPLINA
-- ------------------------------------------------
CREATE TABLE IF NOT EXISTS lista_trigger.`DISCIPLINA` (
  `coddisciplina` INT NOT NULL AUTO_INCREMENT,
  `nomedisciplina` VARCHAR(45) NULL,
  `codprofessor` INT NOT NULL,
  PRIMARY KEY (`coddisciplina`),
  INDEX `fk_DISCIPLINA_PROFESSOR_idx` (`codprofessor` ASC) VISIBLE,
  CONSTRAINT `fk_DISCIPLINA_PROFESSOR`
    FOREIGN KEY (`codprofessor`)
    REFERENCES lista_trigger.`PROFESSOR` (`codprofessor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO DISCIPLINA (nomedisciplina, codprofessor) VALUES
("Gerência de Redes",3),
("Fundamentos de Redes",3),
("Lógica de Programação",4),
("Desenvolvimento de Software",4),
("Desenvolvimento Web",4),
("Direito Civil",1),
("Ética",1),
("Processo Civil",1),
("Direito Constitucional",5),
("Direito Penal",2);




-- ------------------------------------------------
-- TABELA NOTA
-- ------------------------------------------------
CREATE TABLE IF NOT EXISTS lista_trigger.`NOTA` (
  `codnota` INT NOT NULL AUTO_INCREMENT,
  `nota1semestre` DECIMAL(4,1) NULL,
  `nota2semestre` DECIMAL(4,1) NULL,
  `notafinal` DECIMAL(4,1) NULL,
  `coddisciplina` INT NOT NULL,
  `codaluno` INT NOT NULL,
  PRIMARY KEY (`codnota`),
  INDEX `fk_NOTA_DISCIPLINA1_idx` (`coddisciplina` ASC) VISIBLE,
  INDEX `fk_NOTA_ALUNO1_idx` (`codaluno` ASC) VISIBLE,
  CONSTRAINT `fk_NOTA_DISCIPLINA1`
    FOREIGN KEY (`coddisciplina`)
    REFERENCES lista_trigger.`DISCIPLINA` (`coddisciplina`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_NOTA_ALUNO1`
    FOREIGN KEY (`codaluno`)
    REFERENCES lista_trigger.`ALUNO` (`codaluno`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


INSERT INTO NOTA (nota1semestre, nota2semestre, notafinal, coddisciplina, codaluno) VALUES
(10.0,7.5,8.75,1,1),
(9.5,8.5,9,2,1),
(9.0,9.5,9.25,3,1),
(8.5,6.5,7.5,4,1),
(8.0,10.0,9,5,1),
(7.5,7.5,7.5,1,2),
(7.0,8.5,7.75,2,2),
(6.5,9.5,8,3,2),
(6.0,6.5,6.25,4,2),
(5.5,10.0,7.75,5,2),
(5.0,7.5,6.25,1,3),
(10.0,8.5,9.25,2,3),
(9.5,9.5,9.5,3,3),
(9.0,6.5,7.75,4,3),
(8.5,10.0,9.25,5,3),
(8.0,7.5,7.75,1,4),
(7.5,8.5,8,2,4),
(7.0,9.5,8.25,3,4),
(6.5,6.5,6.5,4,4),
(6.0,10.0,8,5,4),
(5.5,7.5,6.5,1,5),
(5.0,8.5,6.75,2,5),
(10.0,9.5,9.75,3,5),
(9.5,6.5,8,4,5),
(9.0,10.0,9.5,5,5),
(8.5,7.5,8,1,6),
(8.0,8.5,8.25,2,6),
(7.5,9.5,8.5,3,6),
(7.0,6.5,6.75,4,6),
(6.5,10.0,8.25,5,6),
(6.0,7.5,6.75,1,7),
(5.5,8.5,7,2,7),
(5.0,9.5,7.25,3,7),
(10.0,6.5,8.25,4,7),
(9.5,10.0,9.75,5,7),
(9.0,7.5,8.25,1,8),
(8.5,8.5,8.5,2,8),
(8.0,9.5,8.75,3,8),
(7.5,6.5,7,4,8),
(7.0,10.0,8.5,5,8),
(6.5,7.5,7,1,9),
(6.0,8.5,7.25,2,9),
(5.5,9.5,7.5,3,9),
(5.0,6.5,5.75,4,9),
(10.0,10.0,10,5,9),
(9.5,7.5,8.5,1,10),
(9.0,8.5,8.75,2,10),
(8.5,9.5,9,3,10),
(8.0,6.5,7.25,4,10),
(7.5,10.0,8.75,5,10),
(7.0,7.5,7.25,6,11),
(6.5,8.5,7.5,7,11),
(6.0,9.5,7.75,8,11),
(5.5,6.5,6,9,11),
(5.0,10.0,7.5,10,11),
(10.0,7.5,8.75,6,12),
(9.5,8.5,9,7,12),
(9.0,9.5,9.25,8,12),
(8.5,6.5,7.5,9,12),
(8.0,10.0,9,10,12),
(7.5,7.5,7.5,6,13),
(7.0,8.5,7.75,7,13),
(6.5,9.5,8,8,13),
(6.0,6.5,6.25,9,13),
(5.5,10.0,7.75,10,13),
(5.0,7.5,6.25,6,14),
(10.0,8.5,9.25,7,14),
(9.5,9.5,9.5,8,14),
(9.0,6.5,7.75,9,14),
(8.5,10.0,9.25,10,14),
(8.0,7.5,7.75,6,15),
(7.5,8.5,8,7,15),
(7.0,9.5,8.25,8,15),
(6.5,6.5,6.5,9,15),
(6.0,10.0,8,10,15),
(5.5,7.5,6.5,6,16),
(5.0,8.5,6.75,7,16),
(10.0,9.5,9.75,8,16),
(9.5,6.5,8,9,16),
(9.0,10.0,9.5,10,16),
(8.5,7.5,8,6,17),
(8.0,8.5,8.25,7,17),
(7.5,9.5,8.5,8,17),
(7.0,6.5,6.75,9,17),
(6.5,10.0,8.25,10,17),
(6.0,7.5,6.75,6,18),
(5.5,8.5,7,7,18),
(5.0,9.5,7.25,8,18),
(10.0,6.5,8.25,9,18),
(9.5,10.0,9.75,10,18),
(9.0,7.5,8.25,6,19),
(8.5,8.5,8.5,7,19),
(8.0,9.5,8.75,8,19),
(7.5,6.5,7,9,19),
(7.0,10.0,8.5,10,19),
(6.5,7.5,7,6,20),
(6.0,8.5,7.25,7,20),
(5.5,9.5,7.5,8,20),
(5.0,6.5,5.75,9,20),
(10.0,10.0,10,10,20);
-- ------------------------------------------------
-- TABELA ALUNO
-- ------------------------------------------------

CREATE TABLE IF NOT EXISTS lista_trigger.`ALUNO` (
  `codaluno` INT NOT NULL AUTO_INCREMENT,
  `nomealuno` VARCHAR(100) NULL,
  `cpfaluno` VARCHAR(45) NULL,
  `senhaaluno` VARCHAR(100) NULL,
  `statusaluno` INT NULL,
  PRIMARY KEY (`codaluno`))
ENGINE = InnoDB;


INSERT INTO ALUNO (nomealuno, cpfaluno, senhaaluno, statusaluno) VALUES
("Alberto","949.456.251-12","senha1",1),
("Bruna","758.478.102-95","senha2",1),
("Carlos","363.535.656-84","senha3",2),
("Daniela","141.521.458-47","senha4",2),
("Eduardo","120.320.650-45","senha5",1),
("Flávia","171.194.301-58","senha6",1),
("Guilherme","975.648.318-54","senha20",2),
("Helena","356.542.197-50","senha7",2),
("Igor","147.962.159-87","senha8",1),
("Joana","345.326.301-97","senha9",1),
("Kleber","963.357.852-94","senha10",2),
("Lúcia","154.954.302-97","senha11",2),
("Marcos","330.264.557-85","senha12",1),
("Neuza","127.554.956-88","senha13",1),
("Oswaldo","945.568.852-95","senha14",2),
("Patrícia","345.215.653-66","senha15",2),
("Quintino","984.455.610-98","senha16",1),
("Roberta","345.555.678-99","senha17",1),
("Saulo","002.345.124-11","senha18",2),
("Tatiana","315.547.558-94","senha19",2);

-- ------------------------------------------------
-- TABELA TURMA_ALUNO
-- ------------------------------------------------

CREATE TABLE IF NOT EXISTS lista_trigger.`TURMA_ALUNO` (
  `codturma_aluno` INT NOT NULL AUTO_INCREMENT,
  `codaluno` INT NOT NULL,
  `codturma` INT NOT NULL,
  PRIMARY KEY (`codturma_aluno`),
  INDEX `fk_TURMA_ALUNO_ALUNO1_idx` (`codaluno` ASC) VISIBLE,
  INDEX `fk_TURMA_ALUNO_TURMA1_idx` (`codturma` ASC) VISIBLE,
  CONSTRAINT `fk_TURMA_ALUNO_ALUNO1`
    FOREIGN KEY (`codaluno`)
    REFERENCES lista_trigger.`ALUNO` (`codaluno`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_TURMA_ALUNO_TURMA1`
    FOREIGN KEY (`codturma`)
    REFERENCES lista_trigger.`TURMA` (`codturma`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



INSERT INTO TURMA_ALUNO (codaluno, codturma) VALUES
(1,1),
(2,1),
(3,1),
(4,1),
(5,1),
(6,1),
(7,1),
(8,1),
(9,1),
(10,1),
(11,2),
(12,2),
(13,2),
(14,2),
(15,2),
(16,2),
(17,2),
(18,2),
(19,2),
(20,2);


-- ------------------------------------------------
-- TABELA TURMA
-- ------------------------------------------------

CREATE TABLE IF NOT EXISTS lista_trigger.`TURMA` (
  `codturma` INT NOT NULL AUTO_INCREMENT,
  `nometurma` VARCHAR(45) NULL,
  `quantidadealunos` INT NULL,
  PRIMARY KEY (`codturma`))
ENGINE = InnoDB
COMMENT = '	';

INSERT INTO TURMA (nometurma, quantidadealunos) VALUES
("Sistemas de Informação",10),
("Direito",10);

-- ------------------------------------------------
-- TABELA LOG
-- ------------------------------------------------

CREATE TABLE IF NOT EXISTS lista_trigger.`LOG` (
  `codlog` INT NOT NULL AUTO_INCREMENT,
  `descricaolog` LONGTEXT NULL,
  PRIMARY KEY (`codlog`))
ENGINE = InnoDB;



-- ---------------------------------------------------
-- ###### questão 6 #####-----------------------------
-- ---------------------------------------------------
DELIMITER //
CREATE TRIGGER adicionar_professor_AI AFTER INSERT ON DISCIPLINA  
FOR EACH ROW
	BEGIN
		UPDATE PROFESSOR 
		set quantdisciplinas = CAST((CAST(quantdisciplinas as UNSIGNED)+1) AS CHAR)
		WHERE codprofessor=new.codprofessor;
		
	END //
DELIMITER ;






