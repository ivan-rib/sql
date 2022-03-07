-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema NOVO_MYDB2
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema NOVO_MYDB2
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `NOVO_MYDB2` DEFAULT CHARACTER SET utf8 ;
USE `NOVO_MYDB2` ;

-- -----------------------------------------------------
-- Table `NOVO_MYDB2`.`NATUREZAS_JURIDICAS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `NOVO_MYDB2`.`NATUREZAS_JURIDICAS` (
  `codigo` VARCHAR(10) NOT NULL,
  `descricao` VARCHAR(45) NULL,
  PRIMARY KEY (`codigo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `NOVO_MYDB2`.`EMPRESAS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `NOVO_MYDB2`.`EMPRESAS` (
  `cnpj` VARCHAR(20) NOT NULL,
  `razao_social` LONGTEXT NULL,
  `NATUREZAS_JURIDICAS_codigo` VARCHAR(10) NOT NULL,
  `qualificacao_do_responsavel` VARCHAR(45) NULL,
  `capital_social` FLOAT NULL,
  `porte_empresa` INT NULL,
  `ente_federativo_responsavel` VARCHAR(45) NULL,
  PRIMARY KEY (`cnpj`),
  INDEX `fk_EMPRESAS_NATUREZAS_JURIDICAS1_idx` (`NATUREZAS_JURIDICAS_codigo` ASC) VISIBLE,
  CONSTRAINT `fk_EMPRESAS_NATUREZAS_JURIDICAS1`
    FOREIGN KEY (`NATUREZAS_JURIDICAS_codigo`)
    REFERENCES `NOVO_MYDB2`.`NATUREZAS_JURIDICAS` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `NOVO_MYDB2`.`CNAEs`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `NOVO_MYDB2`.`CNAEs` (
  `codigo` VARCHAR(10) NOT NULL,
  `descricao` VARCHAR(45) NULL,
  PRIMARY KEY (`codigo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `NOVO_MYDB2`.`MUNICIPIOS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `NOVO_MYDB2`.`MUNICIPIOS` (
  `codigo` VARCHAR(10) NOT NULL,
  `descricao` VARCHAR(45) NULL,
  PRIMARY KEY (`codigo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `NOVO_MYDB2`.`ESTABELECIMENTOS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `NOVO_MYDB2`.`ESTABELECIMENTOS` (
  `EMPRESAS_cnpj` VARCHAR(20) NOT NULL,
  `CNPJ_ordem` VARCHAR(30) NULL,
  `CNPJ_dv` VARCHAR(30) NULL,
  `identificador_matriz_filial` VARCHAR(1) NULL,
  `nome_fantasia` LONGTEXT NULL,
  `situacao_cadastral` VARCHAR(2) NULL,
  `data_situacao_cadastral` DATE NULL,
  `motivo_situacao_cadastral` VARCHAR(5) NULL,
  `nome_da_cidade_no_exterior` VARCHAR(45) NULL,
  `pais` VARCHAR(5) NULL,
  `data_de_inicio_atividade` DATE NULL,
  `CNAEs_Primario` VARCHAR(10) NOT NULL,
  `cnae_fiscal_secundaria` VARCHAR(10) NULL,
  `tipo_de_logradouro` VARCHAR(45) NULL,
  `logradouro` VARCHAR(45) NULL,
  `numero` VARCHAR(10) NULL,
  `complemento` VARCHAR(45) NULL,
  `bairro` VARCHAR(45) NULL,
  `cep` VARCHAR(10) NULL,
  `uf` VARCHAR(5) NULL,
  `MUNICIPIOS_codigo` VARCHAR(10) NOT NULL,
  `ddd_1` VARCHAR(10) NULL,
  `telefone_1` VARCHAR(20) NULL,
  `ddd_2` VARCHAR(10) NULL,
  `telefone_2` VARCHAR(20) NULL,
  `ddd_do_fax` VARCHAR(10) NULL,
  `fax` VARCHAR(20) NULL,
  `correio_eletronico` VARCHAR(45) NULL,
  `situacao_especial` VARCHAR(45) NULL,
  `data_da_situacao_especial` DATE NULL,
  PRIMARY KEY (`EMPRESAS_cnpj`),
  INDEX `fk_ESTABELECIMENTOS_CNAEs1_idx` (`CNAEs_Primario` ASC) VISIBLE,
  INDEX `fk_ESTABELECIMENTOS_MUNICIPIOS1_idx` (`MUNICIPIOS_codigo` ASC) VISIBLE,
  INDEX `fk_ESTABELECIMENTOS_EMPRESAS1_idx` (`EMPRESAS_cnpj` ASC) VISIBLE,
  CONSTRAINT `fk_ESTABELECIMENTOS_CNAEs1`
    FOREIGN KEY (`CNAEs_Primario`)
    REFERENCES `NOVO_MYDB2`.`CNAEs` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ESTABELECIMENTOS_MUNICIPIOS1`
    FOREIGN KEY (`MUNICIPIOS_codigo`)
    REFERENCES `NOVO_MYDB2`.`MUNICIPIOS` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ESTABELECIMENTOS_EMPRESAS1`
    FOREIGN KEY (`EMPRESAS_cnpj`)
    REFERENCES `NOVO_MYDB2`.`EMPRESAS` (`cnpj`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
