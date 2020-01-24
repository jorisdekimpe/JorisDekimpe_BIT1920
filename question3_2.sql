-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Patient`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Patient` (
  `idPatient` INT UNSIGNED NOT NULL,
  `Patient_name` VARCHAR(45) NULL,
  `gender` ENUM('Man', 'Woman') NULL,
  `age` VARCHAR(45) NULL,
  PRIMARY KEY (`idPatient`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`patient_syn`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`patient_syn` (
  `idPatient` INT UNSIGNED NOT NULL,
  `idsyndrome` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idPatient`, `idsyndrome`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`syndrome`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`syndrome` (
  `idsyndrome` INT UNSIGNED NOT NULL,
  `patient_syndrome` VARCHAR(45) NULL,
  `syndrome_comment` VARCHAR(45) NULL,
  `gene_id` INT NULL,
  PRIMARY KEY (`idsyndrome`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`gene`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`gene` (
  `gene_id2` INT UNSIGNED NOT NULL,
  `chromosoom` INT NULL,
  `start` INT NULL,
  `end` INT NULL,
  PRIMARY KEY (`gene_id2`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = cp932;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
