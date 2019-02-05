-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema University_Table
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema University_Table
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `University_Table` DEFAULT CHARACTER SET utf8 ;
USE `University_Table` ;

-- -----------------------------------------------------
-- Table `University_Table`.`Universities`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `University_Table`.`Universities` (
  `University ID` INT NOT NULL AUTO_INCREMENT,
  `Rank` INT NOT NULL,
  `University Name` VARCHAR(400) NOT NULL DEFAULT 'null',
  `Entry Standards` INT NOT NULL DEFAULT 0 COMMENT 'Average UCAS tariff',
  `Student Satisfaction` FLOAT NOT NULL DEFAULT 0 COMMENT 'Maximum 5.00',
  `Research Quality` FLOAT NOT NULL DEFAULT 0 COMMENT 'Maximum 4.00',
  `Research Intensity` FLOAT NOT NULL DEFAULT 0 COMMENT 'Maximum: 1.00',
  `Graduate Prospects` FLOAT NOT NULL DEFAULT 0 COMMENT 'Maximum 1.00',
  `Student-Staff Ratio` FLOAT NOT NULL DEFAULT 0,
  `Academic Services Spend` FLOAT NOT NULL DEFAULT 0 COMMENT 'The expenditure per student on staff',
  `Facilities Spend` INT NOT NULL DEFAULT 0 COMMENT 'The expenditure on facilites per student',
  `Good Honours` FLOAT NOT NULL DEFAULT 0 COMMENT 'Maximum 100',
  `Degree Completion` FLOAT NOT NULL DEFAULT 0 COMMENT 'Maximum 100',
  `Overall Score` INT NOT NULL DEFAULT 0 COMMENT 'Maximum 1000',
  PRIMARY KEY (`University ID`),
  UNIQUE INDEX `University ID_UNIQUE` (`University ID` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `University_Table`.`Accounting & Finance`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `University_Table`.`Accounting & Finance` (
  `University ID` INT NOT NULL,
  `Rank` INT NOT NULL,
  `University Name` VARCHAR(400) NOT NULL DEFAULT 'null',
  `Entry Standards` INT NOT NULL DEFAULT 0,
  `Student Satisfaction` FLOAT NOT NULL DEFAULT 0,
  `Research Quality` FLOAT NOT NULL DEFAULT 0,
  `Research Intensity` FLOAT NOT NULL DEFAULT 0,
  `Graduate Prospects` INT NOT NULL DEFAULT 0,
  `Overall Score` FLOAT NOT NULL DEFAULT 0,
  PRIMARY KEY (`University ID`),
  UNIQUE INDEX `University ID_UNIQUE` (`University ID` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `University_Table`.`Aeronautical & Manufacturing Engineering`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `University_Table`.`Aeronautical & Manufacturing Engineering` (
  `University ID` INT NOT NULL,
  `Rank` INT NOT NULL,
  `University Name` VARCHAR(400) NOT NULL DEFAULT 'null',
  `Entry Standards` INT NOT NULL DEFAULT 0,
  `Student Satisfaction` FLOAT NOT NULL DEFAULT 0,
  `Research Quality` FLOAT NOT NULL DEFAULT 0,
  `Research Intensity` FLOAT NOT NULL DEFAULT 0,
  `Graduate Prospects` INT NOT NULL DEFAULT 0,
  `Overall Score` FLOAT NOT NULL DEFAULT 0,
  PRIMARY KEY (`University ID`),
  UNIQUE INDEX `University ID_UNIQUE` (`University ID` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
