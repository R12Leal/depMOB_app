-- MySQL Script generated by MySQL Workbench
-- jue 12 oct 2017 00:30:08 CEST
-- Model: Sakila Full    Version: 2.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema depmob_app
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema depmob_app
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `depmob_app` ;
USE `depmob_app` ;

-- -----------------------------------------------------
-- Table `depmob_app`.`empresa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `depmob_app`.`empresa` (
  `idEmpresa` INT NOT NULL AUTO_INCREMENT,
  `nEmpresa` VARCHAR(45) NULL,
  PRIMARY KEY (`idEmpresa`),
  UNIQUE INDEX `idempresa_UNIQUE` (`idEmpresa` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `depmob_app`.`situacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `depmob_app`.`situacion` (
  `idSituacion` INT NOT NULL,
  `nCalle` VARCHAR(45) NULL,
  `nNum` INT NULL,
  `nBarriada` VARCHAR(45) NULL,
  PRIMARY KEY (`idSituacion`),
  UNIQUE INDEX `idSituacion_UNIQUE` (`idSituacion` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `depmob_app`.`orden`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `depmob_app`.`orden` (
  `idOrden` INT NOT NULL AUTO_INCREMENT,
  `nExpediente` VARCHAR(45) NOT NULL,
  `nDecreto` VARCHAR(45) NOT NULL,
  `data_ini` DATE NULL,
  `data_fin` DATE NOT NULL,
  `comentario` VARCHAR(45) NULL,
  `estado` VARCHAR(45) NULL,
  `idEmpresa` INT NOT NULL,
  `idSituacion` INT NOT NULL,
  PRIMARY KEY (`idOrden`),
  INDEX `fk_orden_empresa1_idx` (`idEmpresa` ASC),
  UNIQUE INDEX `idOrden_UNIQUE` (`idOrden` ASC),
  INDEX `fk_orden_situacion1_idx` (`idSituacion` ASC),
  CONSTRAINT `fk_orden_empresa1`
    FOREIGN KEY (`idEmpresa`)
    REFERENCES `depmob_app`.`empresa` (`idEmpresa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_orden_situacion1`
    FOREIGN KEY (`idSituacion`)
    REFERENCES `depmob_app`.`situacion` (`idSituacion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `depmob_app`.`trabajo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `depmob_app`.`trabajo` (
  `idTrabajo` INT NOT NULL AUTO_INCREMENT,
  `nTrabajo` VARCHAR(45) NOT NULL,
  `commentario` VARCHAR(45) NULL,
  PRIMARY KEY (`idTrabajo`),
  UNIQUE INDEX `idTrabajo_UNIQUE` (`idTrabajo` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `depmob_app`.`ord_tra_sit`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `depmob_app`.`ord_tra_sit` (
  `id_ot` INT NOT NULL AUTO_INCREMENT,
  `idOrden` INT NOT NULL,
  `idTrabajo` INT NOT NULL,
  `ot_data_ini` DATE NULL,
  `ot_data_fin` DATE NULL,
  `cantidad` INT NULL,
  `precio` INT NULL,
  INDEX `fk_orden_has_trabajo_trabajo1_idx` (`idTrabajo` ASC),
  INDEX `fk_orden_has_trabajo_orden_idx` (`idOrden` ASC),
  PRIMARY KEY (`id_ot`),
  CONSTRAINT `fk_orden_has_trabajo_orden`
    FOREIGN KEY (`idOrden`)
    REFERENCES `depmob_app`.`orden` (`idOrden`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_orden_has_trabajo_trabajo1`
    FOREIGN KEY (`idTrabajo`)
    REFERENCES `depmob_app`.`trabajo` (`idTrabajo`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `depmob_app`.`empresa`
-- -----------------------------------------------------
START TRANSACTION;
USE `depmob_app`;
INSERT INTO `depmob_app`.`empresa` (`idEmpresa`, `nEmpresa`) VALUES (1, 'BRIGADA');
INSERT INTO `depmob_app`.`empresa` (`idEmpresa`, `nEmpresa`) VALUES (2, 'CONTRATISTA');

COMMIT;


-- -----------------------------------------------------
-- Data for table `depmob_app`.`situacion`
-- -----------------------------------------------------
START TRANSACTION;
USE `depmob_app`;
INSERT INTO `depmob_app`.`situacion` (`idSituacion`, `nCalle`, `nNum`, `nBarriada`) VALUES (1, 'C/ MIRAMAR', 14, 'CALATRAVA');
INSERT INTO `depmob_app`.`situacion` (`idSituacion`, `nCalle`, `nNum`, `nBarriada`) VALUES (2, 'C/ CAPITÀ VILA', 25, 'PERE GARAU');
INSERT INTO `depmob_app`.`situacion` (`idSituacion`, `nCalle`, `nNum`, `nBarriada`) VALUES (3, 'Av. SANT FERRAN', 10, 'SON DAMETO');
INSERT INTO `depmob_app`.`situacion` (`idSituacion`, `nCalle`, `nNum`, `nBarriada`) VALUES (4, 'C/ GOETHE', 15, 'ES FORTÍ');
INSERT INTO `depmob_app`.`situacion` (`idSituacion`, `nCalle`, `nNum`, `nBarriada`) VALUES (5, 'C/ DOS DE MAIG', 35, 'EL TERRENO');
INSERT INTO `depmob_app`.`situacion` (`idSituacion`, `nCalle`, `nNum`, `nBarriada`) VALUES (6, 'C/ DEL TER', 11, 'SON CLADERA');
INSERT INTO `depmob_app`.`situacion` (`idSituacion`, `nCalle`, `nNum`, `nBarriada`) VALUES (7, 'C/ SOCORS', 43, 'SANTA EULÀLIA');
INSERT INTO `depmob_app`.`situacion` (`idSituacion`, `nCalle`, `nNum`, `nBarriada`) VALUES (8, 'C/ HORTS', 05, 'MISSIO');
INSERT INTO `depmob_app`.`situacion` (`idSituacion`, `nCalle`, `nNum`, `nBarriada`) VALUES (9, 'C/ SAGRERA', 55, 'DRASSANA');
INSERT INTO `depmob_app`.`situacion` (`idSituacion`, `nCalle`, `nNum`, `nBarriada`) VALUES (10, 'C/ VOLTA DE LA MERCÈ', 23, 'BANC DE S\'OLI');

COMMIT;


-- -----------------------------------------------------
-- Data for table `depmob_app`.`orden`
-- -----------------------------------------------------
START TRANSACTION;
USE `depmob_app`;
INSERT INTO `depmob_app`.`orden` (`idOrden`, `nExpediente`, `nDecreto`, `data_ini`, `data_fin`, `comentario`, `estado`, `idEmpresa`, `idSituacion`) VALUES (1, 'EXPE 280020101234567', '4500/35', '2017-05-12', '2017-05-28', 'PA KE KIERES SABER ESO JAJA', 'ABIERTO', 1, 3);
INSERT INTO `depmob_app`.`orden` (`idOrden`, `nExpediente`, `nDecreto`, `data_ini`, `data_fin`, `comentario`, `estado`, `idEmpresa`, `idSituacion`) VALUES (2, 'EXPE 070120101111111', '3500/45', '2017-05-12', '2017-05-28', 'KOMO LO ZUPO', 'CERRADO', 2, 6);
INSERT INTO `depmob_app`.`orden` (`idOrden`, `nExpediente`, `nDecreto`, `data_ini`, `data_fin`, `comentario`, `estado`, `idEmpresa`, `idSituacion`) VALUES (3, 'EXPE 00423423454322', '3200/12', '2017-05-12', '2017-05-28', 'QUE DISE HUSTED?', 'ABIERTO', 2, 9);

COMMIT;


-- -----------------------------------------------------
-- Data for table `depmob_app`.`trabajo`
-- -----------------------------------------------------
START TRANSACTION;
USE `depmob_app`;
INSERT INTO `depmob_app`.`trabajo` (`idTrabajo`, `nTrabajo`, `commentario`) VALUES (1, 'Asfaltar', 'BLA BLA BLA');
INSERT INTO `depmob_app`.`trabajo` (`idTrabajo`, `nTrabajo`, `commentario`) VALUES (2, 'Fresar', 'BLA BLA BLA');
INSERT INTO `depmob_app`.`trabajo` (`idTrabajo`, `nTrabajo`, `commentario`) VALUES (3, 'Barrer', 'BLA BLA BLA');
INSERT INTO `depmob_app`.`trabajo` (`idTrabajo`, `nTrabajo`, `commentario`) VALUES (4, 'Reparar', 'BLA BLA BLA');
INSERT INTO `depmob_app`.`trabajo` (`idTrabajo`, `nTrabajo`, `commentario`) VALUES (5, 'Señalizar ', 'BLA BLA BLA');

COMMIT;


-- -----------------------------------------------------
-- Data for table `depmob_app`.`ord_tra_sit`
-- -----------------------------------------------------
START TRANSACTION;
USE `depmob_app`;
INSERT INTO `depmob_app`.`ord_tra_sit` (`id_ot`, `idOrden`, `idTrabajo`, `ot_data_ini`, `ot_data_fin`, `cantidad`, `precio`) VALUES (1, 2, 1, '2017-05-12', '2017-05-29', 10, 10.50);
INSERT INTO `depmob_app`.`ord_tra_sit` (`id_ot`, `idOrden`, `idTrabajo`, `ot_data_ini`, `ot_data_fin`, `cantidad`, `precio`) VALUES (2, 1, 4, '2017-05-12', '2017-05-29', 20, 13.50);
INSERT INTO `depmob_app`.`ord_tra_sit` (`id_ot`, `idOrden`, `idTrabajo`, `ot_data_ini`, `ot_data_fin`, `cantidad`, `precio`) VALUES (3, 3, 1, '2017-05-12', '2017-05-29', 25, 25.40);
INSERT INTO `depmob_app`.`ord_tra_sit` (`id_ot`, `idOrden`, `idTrabajo`, `ot_data_ini`, `ot_data_fin`, `cantidad`, `precio`) VALUES (4, 3, 3, '2017-05-12', '2017-05-29', 5, 33.50);
INSERT INTO `depmob_app`.`ord_tra_sit` (`id_ot`, `idOrden`, `idTrabajo`, `ot_data_ini`, `ot_data_fin`, `cantidad`, `precio`) VALUES (5, 3, 5, '2017-05-12', '2017-05-29', 12, 4.95);

COMMIT;

