create database suCarloca;

use suCarloca;

CREATE TABLE `Carro` ( 
  `idCarro` INT AUTO_INCREMENT NOT NULL,
  `quilometragemAtual` VARCHAR(255) NOT NULL,
  `Modelo` VARCHAR(255) NOT NULL,
  `Disponivel` TINYINT NOT NULL,
  `modalidade` ENUM ('Diaria') NOT NULL DEFAULT 'Diaria',
  `idMontadora` INT NOT NULL,
  `idCategoria` INT NOT NULL,
  `Alugado` BOOLEAN NOT NULL DEFAULT FALSE,
  `Cor` ENUM('Branco', 'Prata', 'Preto') NOT NULL DEFAULT 'Branco',
  CONSTRAINT `PRIMARY` PRIMARY KEY (`idCarro`)
);
CREATE TABLE `Categoria` ( 
  `idCategoria` INT AUTO_INCREMENT NOT NULL,
  `modelo_Categoria` VARCHAR(50) NOT NULL,
  `ano_Categoria` VARCHAR(10) NOT NULL,
  CONSTRAINT `PRIMARY` PRIMARY KEY (`idCategoria`)
);
CREATE TABLE `Cliente` ( 
  `idCliente` INT AUTO_INCREMENT NOT NULL,
  `nome_Cliente` VARCHAR(255) NOT NULL,
  `cpf_Cliente` VARCHAR(15) NOT NULL,
  `telefone_Cliente` VARCHAR(20) NOT NULL,
  `idEndereco` INT NOT NULL,
  CONSTRAINT `PRIMARY` PRIMARY KEY (`idCliente`)
);
CREATE TABLE `Endereco` ( 
  `idEndereco` INT AUTO_INCREMENT NOT NULL,
  `rua_Endereco` VARCHAR(50) NOT NULL,
  `bairro_Endereco` VARCHAR(50) NOT NULL,
  `cidade_Endereco` VARCHAR(50) NOT NULL,
  `numero_Endereco` INT NOT NULL,
  `complemento_Endereco` VARCHAR(50) NOT NULL,
  CONSTRAINT `PRIMARY` PRIMARY KEY (`idEndereco`)
);
CREATE TABLE `Locacao` ( 
  `idLocacao` INT AUTO_INCREMENT NOT NULL,
  `dataLocacao` DATE NOT NULL,
  `dataDevolucao` DATE NULL,
  `quilometragemFinal` VARCHAR(255) NULL,
  `quilometragemInicial` VARCHAR(255) NOT NULL,
  `idCarro` INT NOT NULL,
  `idCliente` INT NOT NULL,
  `idUnidade` INT NOT NULL,
  CONSTRAINT `PRIMARY` PRIMARY KEY (`idLocacao`)
);
CREATE TABLE `Montadora` ( 
  `idMontadora` INT AUTO_INCREMENT NOT NULL,
  `nome_Montadora` VARCHAR(255) NOT NULL,
  CONSTRAINT `PRIMARY` PRIMARY KEY (`idMontadora`)
);
CREATE TABLE `Unidade` ( 
  `idUnidade` INT AUTO_INCREMENT NOT NULL,
  `nome_Unidade` VARCHAR(50) NOT NULL,
  `telefone_Unidade` VARCHAR(25) NOT NULL,
  `cep_Unidade` VARCHAR(25) NOT NULL,
  `idEndereco` INT NOT NULL,
  CONSTRAINT `PRIMARY` PRIMARY KEY (`idUnidade`)
);
ALTER TABLE `Carro` ADD CONSTRAINT `categoria_carro_fk` FOREIGN KEY (`idCategoria`) REFERENCES `Categoria` (`idCategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE `Carro` ADD CONSTRAINT `montadora_carro_fk` FOREIGN KEY (`idMontadora`) REFERENCES `Montadora` (`idMontadora`) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE `Cliente` ADD CONSTRAINT `endereco_cliente_fk` FOREIGN KEY (`idEndereco`) REFERENCES `Endereco` (`idEndereco`) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE `Cliente` ADD CONSTRAINT `endereco_cliente_fk2` FOREIGN KEY (`idEndereco`) REFERENCES `Endereco` (`idEndereco`) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE `Locacao` ADD CONSTRAINT `carro_locacao_fk` FOREIGN KEY (`idCarro`) REFERENCES `Carro` (`idCarro`) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE `Locacao` ADD CONSTRAINT `cliente_locacao_fk` FOREIGN KEY (`idCliente`) REFERENCES `Cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE `Locacao` ADD CONSTRAINT `unidade_locacao_fk` FOREIGN KEY (`idUnidade`) REFERENCES `Unidade` (`idUnidade`) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE `Unidade` ADD CONSTRAINT `endereco_unidade_fk` FOREIGN KEY (`idEndereco`) REFERENCES `Endereco` (`idEndereco`) ON DELETE NO ACTION ON UPDATE NO ACTION;
