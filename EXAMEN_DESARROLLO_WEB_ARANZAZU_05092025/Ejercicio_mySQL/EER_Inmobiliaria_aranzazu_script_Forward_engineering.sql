-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Inmobiliaria_aranzazu
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Inmobiliaria_aranzazu
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Inmobiliaria_aranzazu` DEFAULT CHARACTER SET utf8 ;
USE `Inmobiliaria_aranzazu` ;

-- -----------------------------------------------------
-- Table `Inmobiliaria_aranzazu`.`propietarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Inmobiliaria_aranzazu`.`propietarios` (
  `id_propietarios` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `apellidos` VARCHAR(100) NULL,
  `email` VARCHAR(45) NULL,
  PRIMARY KEY (`id_propietarios`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Inmobiliaria_aranzazu`.`casas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Inmobiliaria_aranzazu`.`casas` (
  `id_casa` INT NOT NULL AUTO_INCREMENT,
  `direccion` VARCHAR(150) NOT NULL,
  `precio` FLOAT NULL,
  `anno_construccion` INT NULL,
  `id_propietarios` INT NOT NULL,
  PRIMARY KEY (`id_casa`, `id_propietarios`),
  INDEX `fk_casas_propietarios_idx` (`id_propietarios` ASC),
  CONSTRAINT `fk_casas_propietarios`
    FOREIGN KEY (`id_propietarios`)
    REFERENCES `Inmobiliaria_aranzazu`.`propietarios` (`id_propietarios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
