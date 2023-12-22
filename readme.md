Projeto suCARLOCA = suamy + CARLOCA

OBS.: O projeto já vem com CREATE suCARLOCA e o USE suCARLOCA em prol de facilitar o uso.
OBS.: O banco está para Não Alugado como '0' e Alugado como '1'.

🌐 Visão Geral

Projeto realizado no módulo 03(MySQL) do curso BackEnd da Ada-Tech em conjunto com o IFOOD que consiste na criação de um database "Carloca" conforme:

📌 Instruções de Uso

Diagrama para visualização das relações entre tabelas em suCARLOCA.jpeg;
Para criar o banco de dados, execute os scripts SQL fornecidos no arquivo suCarlocaCreat.sql na sua interface;
Para inserção de dados execute os scripts SQL fornecidos no arquivo suCarlocaInsert.sql, esse arquivo inclue informações ficticias apenas para implementação prática;
Para validar cada requisito funcional utilize as consultas de exemplo fornecidas no arquivo suCarlocaSelect.sql.
Os arquivos foram testados nas interfaces Dbeaver 23.2.5 e DbGate 5.2.7.

Atenção:

Na tabela CREATE CARRO, existe o enum com as cores Branco, Preto e Cinza, entretanto quando é rodado no DbGate, gerando o script SQL CREATE
o próprio DbGate converte para tinyint.


📋 Requisitos Funcionais

Modelagem de Carro:

  ✅ Um carro possui modelo, montadora, cor e versão.

Cores Disponíveis:

  ✅ As cores de carro disponiveis são apenas branco, preto e prata.

Categorias de Veículos:

  ✅ Existem várias categorias de veiculos (hatch, sedam compacto, sedam médio, SUV, etc...).

Modalidade de Locação:

  ✅ Um cliente pode alugar um carro somente na modalidade "diária".

Restrição de Locação por Cliente:

  ✅ Um cliente não pode alugar mais de um carro por vez.

Exclusividade de Locação:
  
  ✅ Enquanto um carro estiver locado por um cliente não pode ser ofertado para outro.

Histórico de Locações por Cliente:

  ✅ O sistema deve manter o histórico dos clientes que locaram determinado carro.

Registro de Quilometragem:

  ✅ O sistema deve manter o histórico de quantos quilometros o cliente rodou com o carro bem como a quilometragem atual de cada um dos carros.

Rastreamento de Localização:

  ✅ Existem várias unidades da fraquia CARLOCA o sistema deve saber onde o carro foi locado e onde foi devolvido cada veículo.

💡 Requisitos não funcionais:

  ✅ Devem ser gerados inserts e selects que possibilitem validar cada um dos requisitos acima.



🗃️ Estrutura do Banco de Dados

  O banco de dados foi projetado considerando os princípios de normalização de dados. As principais tabelas incluem:

  Carro: Armazena detalhes dos veículos, incluindo informações como modelo, cor, fabricante e categoria.

  Montadora: Registra os dados das empresas responsáveis pela fabricação dos veículos, contendo principalmente o nome dessas empresas.

  Categoria: Classifica os veículos em diferentes categorias, como sedan, SUV, hatchback, entre outros tipos.

  Endereco: Centraliza informações referentes a endereços, como nome da rua, cidade e CEP. É referenciada por tabelas como Cliente e Franquia, garantindo maior consistência nos dados.
  
  Cliente: Mantém informações sobre os clientes, não incorporando campos de endereço diretamente. Esse design visa normalizar os dados, evitando redundância.

  Unidade: Contém detalhes sobre as filiais ou unidades da locadora. Similar à tabela Cliente, não possui campos de endereço diretamente, mantendo uma abordagem normalizada. Na coluna `id_cliente`, recebe uma restrição de 'unique key', garantindo que uma unidade não   repita o mesmo endereço de outra, estabelecendo um relacionamento único com a tabela Endereco.

  Locacao: Armazena todas as informações essenciais relacionadas a um aluguel específico de veículo, incluindo datas, quilometragem e demais detalhes relevantes para o registro da locação.



🔌 Formas Normais

Algumas formas normais não foram utilizadas no projeto de maneira de simplificar. Entretanto, segue a explicação de cada uma forma:

Primeira Forma Normal (1FN)
Cada célula da tabela deve conter um único valor.
Todos os valores em uma coluna devem ser do mesmo domínio.
Não deve haver repetição de grupos de colunas.

Segunda Forma Normal (2FN)
Atende à 1FN.
Todos os campos não-chave são dependentes da chave primária completa.
As tabelas devem possuir uma chave primária para identificar unicamente cada linha.

Terceira Forma Normal (3FN)
Atende à 2FN.
Não há dependência transitiva: os campos que não são chave devem depender apenas da chave primária, não de outros campos não-chave.

Forma Normal de Boyce-Codd (BCNF)
Uma forma mais rigorosa da 3FN.
Para cada dependência funcional não trivial, a chave candidata é necessária para ser uma superchave.

Quarta Forma Normal (4FN) e Forma Normal de Domínio-Chave (DKNF)
Lida com dependências multivaloradas e join-dependências.

Quinta Forma Normal (5FN)
Refina ainda mais as dependências de projeção, junção e outras.

É isso! vlwww!

EN-US

# Project suCARLOCA = suamy + CARLOCA

OBS.: The project already contains CREATE suCARLOCA and USE suCARLOCA to facilitate usage.
OBS.: The database is set to 'Not Alugado' as '0' and 'Alugado' as '1'.


🌐 Overview

Project developed in module 03(MySQL) of Ada-Tech's BackEnd course in collaboration with IFOOD, aiming to create a 'Carloca' database according to:


📌 Usage Instructions

Diagram for visualizing table relationships in suCARLOCA.jpeg;
To create the database, execute the SQL scripts provided in the suCarlocaCreat.sql file on your interface;
For data insertion, execute the SQL scripts provided in the suCarlocaInsert.sql file, which includes fictitious information for practical implementation;
To validate each functional requirement, use the example queries provided in the suCarlocaSelect.sql file.
The files were tested on Dbeaver 23.2.5 and DbGate 5.2.7 interfaces.

Attention:

In the CREATE CARRO table, there is an enum with colors White, Black, and Gray. However, when run in DbGate, generating the SQL CREATE script, DbGate itself converts it to tinyint.

📋 Functional Requirements

Car Model:

  ✅ A car has a model, manufacturer, color, and version.

Available Colors:

  ✅ The available car colors are only white, black, and silver.

Vehicle Categories:

  ✅ There are various vehicle categories (hatch, compact sedan, midsize sedan, SUV, etc.).

Rental Modality:

  ✅ A client can rent a car only in the "daily" modality.

Client Rental Restriction:

  ✅ A client cannot rent more than one car at a time.

Rental Exclusivity:

  ✅ While a car is rented by a client, it cannot be offered to another.

Client Rental History:

  ✅ The system must keep a record of clients who rented a particular car.

Mileage Record:

  ✅ The system must maintain the history of how many kilometers the client drove with the car, as well as the current mileage of each car.

Location Tracking:

  ✅ There are several CARLOCA franchise units; the system must know where each car was rented and where each vehicle was returned.


💡 Non-Functional Requirements:

  ✅ Inserts and selects must be generated to validate each of the above requirements.



🗃️ Database Structure

  The database was designed considering the principles of data normalization. The main tables include:

  Car: Stores vehicle details, including information such as model, color, manufacturer, and category.

  Manufacturer: Records data from companies responsible for vehicle manufacturing, primarily containing the name of these companies.

  Category: Classifies vehicles into different categories, such as sedan, SUV, hatchback, among other types.

  Address: Centralizes information related to addresses, such as street name, city, and ZIP code. It is referenced by tables like Client and Franchise, ensuring greater data consistency.

  Client: Holds information about clients, without directly incorporating address fields. This design aims to normalize data, avoiding redundancy.

  Unit: Contains details about branches or units of the rental agency. Similar to the Client table, it does not have address fields directly, maintaining a normalized approach. In the `id_cliente` column, it receives a 'unique key' constraint, ensuring that a unit does not repeat the same address as another, establishing a unique relationship with the Address table.

  Location: Stores all essential information related to a specific vehicle rental, including dates, mileage, and other details relevant to the rental record.

🔌 Normal Forms

Some normal forms were not used in the project to simplify. However, here is the explanation of each form:

First Normal Form (1NF)
Every cell in the table must contain a single value.
All values in a column must be from the same domain.
There should be no repetition of groups of columns.

Second Normal Form (2NF)
Meets 1NF.
All fields that are not part of the primary key are dependent on the complete primary key.
Tables must have a primary key to uniquely identify each row.

Third Normal Form (3NF)
Meets 2NF.
There is no transitive dependency: non-key fields should depend only on the primary key, not on other non-key fields.

Boyce-Codd Normal Form (BCNF)
A more rigorous form of 3NF.
For every non-trivial functional dependency, the candidate key is required to be a superkey.

Fourth Normal Form (4NF) and Domain-Key Normal Form (DKNF)
Deals with multivalued dependencies and join dependencies.

Fifth Normal Form (5NF)
Further refines projection, join, and other dependencies.

this is it. thx!!
