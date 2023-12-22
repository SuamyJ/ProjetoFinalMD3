use suCarloca;


INSERT INTO `Categoria` (`idCategoria`, `modelo_Categoria`, `ano_Categoria`) VALUES (1, 'Gatuno', '2023');
INSERT INTO `Categoria` (`idCategoria`, `modelo_Categoria`, `ano_Categoria`) VALUES (2, 'Espadachim', '2023');
INSERT INTO `Categoria` (`idCategoria`, `modelo_Categoria`, `ano_Categoria`) VALUES (3, 'Arqueiro', '2023');


INSERT INTO `Endereco` (`idEndereco`, `rua_Endereco`, `bairro_Endereco`, `cidade_Endereco`, `numero_Endereco`, `complemento_Endereco`) 
VALUES (1, 'Prontera', 'Bairro Central', 'CidadeX', 123, 'ComplementoXYZ');
INSERT INTO `Endereco` (`idEndereco`, `rua_Endereco`, `bairro_Endereco`, `cidade_Endereco`, `numero_Endereco`, `complemento_Endereco`) 
VALUES (2, 'Geffen', 'Bairro Central', 'CidadeX', 123, 'ComplementoXYZ');
INSERT INTO `Endereco` (`idEndereco`, `rua_Endereco`, `bairro_Endereco`, `cidade_Endereco`, `numero_Endereco`, `complemento_Endereco`) 
VALUES (3, 'Morroc', 'Bairro Central', 'CidadeX', 123, 'ComplementoXYZ');


INSERT INTO `Cliente` (`idCliente`, `nome_Cliente`, `cpf_Cliente`, `telefone_Cliente`, `idEndereco`) 
VALUES (1, 'Gatuno', '123.456.789-00', '(11) 99999-9999', 1);
INSERT INTO `Cliente` (`idCliente`, `nome_Cliente`, `cpf_Cliente`, `telefone_Cliente`, `idEndereco`) 
VALUES (2, 'Cavaleiro', '123.456.789-00', '(11) 99999-9999', 1);
INSERT INTO `Cliente` (`idCliente`, `nome_Cliente`, `cpf_Cliente`, `telefone_Cliente`, `idEndereco`) 
VALUES (3, 'Mago', '123.456.789-00', '(11) 99999-9999', 1);


INSERT INTO `Montadora` (`idMontadora`, `nome_Montadora`) 
VALUES (1, 'IzludeCar');
INSERT INTO `Montadora` (`idMontadora`, `nome_Montadora`) 
VALUES (2, 'YunoD');
INSERT INTO `Montadora` (`idMontadora`, `nome_Montadora`) 
VALUES (3, 'Niflhein');


INSERT INTO `Carro` (`idCarro`, `quilometragemAtual`, `Modelo`, `Disponivel`, `modalidade`, `idMontadora`, `idCategoria`, `Alugado`, `Cor`) 
VALUES (1, '1000 km', 'Kafra Motors', 1, 'Diaria', 1, 1, 0, 'Branco');
INSERT INTO `Carro` (`idCarro`, `quilometragemAtual`, `Modelo`, `Disponivel`, `modalidade`, `idMontadora`, `idCategoria`, `Alugado`, `Cor`) 
VALUES (2, '1000 km', 'Prontera drift', 1, 'Diaria', 1, 1, 0, 'Preto');
INSERT INTO `Carro` (`idCarro`, `quilometragemAtual`, `Modelo`, `Disponivel`, `modalidade`, `idMontadora`, `idCategoria`, `Alugado`, `Cor`) 
VALUES (3, '400 km', 'Morroc Draw', 1, 'Diaria', 1, 1, 0, 'Prata');



INSERT INTO `Unidade` (`idUnidade`, `nome_Unidade`, `telefone_Unidade`, `cep_Unidade`, `idEndereco`) 
VALUES (1, 'Alberta', '(11) 3213-8888', '12345-678', 1);
INSERT INTO `Unidade` (`idUnidade`, `nome_Unidade`, `telefone_Unidade`, `cep_Unidade`, `idEndereco`) 
VALUES (2, 'Comodo', '(11) 1234-8888', '3333-678', 1);
INSERT INTO `Unidade` (`idUnidade`, `nome_Unidade`, `telefone_Unidade`, `cep_Unidade`, `idEndereco`) 
VALUES (3, 'Payon', '(11) 3433-8888', '12345-678', 1);


INSERT INTO `Locacao` (`idLocacao`, `dataLocacao`, `dataDevolucao`, `quilometragemFinal`, `quilometragemInicial`, `idCarro`, `idCliente`, `idUnidade`) 
VALUES (1, '2023-01-01', '2023-12-10', '1200 km', '1000 km', 1, 1, 1);
UPDATE Carro SET Alugado = 1 WHERE idCarro = 1;
INSERT INTO `Locacao` (`idLocacao`, `dataLocacao`, `dataDevolucao`, `quilometragemFinal`, `quilometragemInicial`, `idCarro`, `idCliente`, `idUnidade`) 
VALUES (2, '2023-01-01', '2023-12-12', '3200 km', '1000 km', 2, 2, 1);
UPDATE Carro SET Alugado = 1 WHERE idCarro = 2;
INSERT INTO `Locacao` (`idLocacao`, `dataLocacao`, `dataDevolucao`, `quilometragemFinal`, `quilometragemInicial`, `idCarro`, `idCliente`, `idUnidade`) 
VALUES (3, '2023-01-01', '2023-12-03', '1000 km', '400 km', 3, 3, 2);
UPDATE Carro SET Alugado = 1 WHERE idCarro = 3;
