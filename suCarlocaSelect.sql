use suCarloca;

--Selecionar os carros disponíveis por modelo

SELECT * FROM Carro WHERE Disponivel = 1 ORDER BY Modelo;

--Selecionar todos os clientes

SELECT * FROM Cliente;

--Selecionar todos os Locacao;

SELECT * FROM Locacao;

--Selecionar todos os Montadora;

SELECT * FROM Montadora;

--Selecionar todos os endereços onde a cidade é 'nome' e ordenada pela 'rua'.

SELECT * FROM Endereco WHERE cidade_Endereco = 'CidadeX' ORDER BY rua_Endereco;

--Checar a quilometragem dos carros

SELECT Categoria.modelo_Categoria, Montadora.nome_Montadora, Carro.Modelo, Unidade.nome_Unidade, Locacao.quilometragemFinal
FROM Categoria
JOIN Carro ON Categoria.idCategoria = Carro.idCategoria
JOIN Montadora ON Carro.idMontadora = Montadora.idMontadora
JOIN Locacao ON Carro.idCarro = Locacao.idCarro
JOIN Unidade ON Locacao.idUnidade = Unidade.idUnidade
ORDER BY Categoria.modelo_Categoria, Montadora.nome_Montadora, Carro.Modelo, Unidade.nome_Unidade, Locacao.quilometragemFinal;

--Selecionar quais carros estão alugados ou não.

SELECT * FROM Carro WHERE Disponivel = 0;
SELECT * FROM Carro WHERE Disponivel = 1;

--Quantidade de carros por nome do cliente

SELECT C.nome_Cliente, COUNT(L.idCarro) AS 'Quantidade de Carros Alugados'
FROM Cliente C
LEFT JOIN Locacao L ON C.idCliente = L.idCliente
LEFT JOIN Carro CR ON L.idCarro = CR.idCarro
WHERE CR.Alugado = 1
GROUP BY C.idCliente, C.nome_Cliente;

-- Quantidade de carros alugados pelo id do cliente

SELECT C.nome_Cliente, COUNT(L.idCarro) AS 'Quantidade de Carros Alugados'
FROM Cliente C
LEFT JOIN Locacao L ON C.idCliente = L.idCliente
LEFT JOIN Carro CR ON L.idCarro = CR.idCarro
WHERE CR.Alugado = 1 AND C.idCliente = 1
GROUP BY C.idCliente, C.nome_Cliente;
