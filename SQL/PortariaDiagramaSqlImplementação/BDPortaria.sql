
CREATE TABLE Pessoa (
    IdPessoa INT PRIMARY KEY,
    Nome VARCHAR NOT NULL,
    Sobrenome VARCHAR NOT NULL
);

CREATE TABLE Morador (
    IdMorador INT PRIMARY KEY,
    CPF VARCHAR,
    Telefone INT,
    foto INT,
    Numero INT,
    Cep INT,
    IdPessoa INT,
    FOREIGN KEY (IdPessoa) REFERENCES Pessoa (IdPessoa) ON DELETE CASCADE ON UPDATE SET NULL
);

CREATE TABLE Funcionario (
    IdFuncionario INT PRIMARY KEY,
    CPF VARCHAR,
    Telefone INT,
    foto INT,
    Atribuicoes INT,
    IdPessoa INT,
    FOREIGN KEY (IdPessoa) REFERENCES Pessoa (IdPessoa) ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE Visitante (
    IdVisit INT PRIMARY KEY,
    MotivoVisita VARCHAR,
    NomedoVisitado VARCHAR,
    IdPessoa INT,
    FOREIGN KEY (IdPessoa) REFERENCES Pessoa (IdPessoa) ON DELETE SET NULL ON UPDATE SET NULL
);

CREATE TABLE Veiculo (
    Placa INT PRIMARY KEY,
    Modelo VARCHAR,
    Proprietario VARCHAR,
    Cor INT,
    IdMorador INT,
    IdFuncionario INT,
    IdVisit INT,
    FOREIGN KEY (IdMorador) REFERENCES Morador (IdMorador),
    FOREIGN KEY (IdFuncionario) REFERENCES Funcionario (IdFuncionario),
    FOREIGN KEY (IdVisit) REFERENCES Visitante (IdVisit)
);

CREATE TABLE Endereço (
    numero INT,
    Rua VARCHAR,
    CEP VARCHAR,
    ID INT PRIMARY KEY,
    Pais VARCHAR,
    Estado VARCHAR,
    Cidade VARCHAR,
    IdFuncionario INT,
    FOREIGN KEY (IdFuncionario) REFERENCES Funcionario (IdFuncionario)
);

CREATE TABLE AcessoVisit (
    IdAcessoVisit INT PRIMARY KEY,
    IdVisit INT,
    FOREIGN KEY (IdVisit) REFERENCES Visitante (IdVisit)
);

CREATE TABLE AcessoFuncio (
    IdAcessoFuncio INT PRIMARY KEY,
    IdFuncionario INT,
    FOREIGN KEY (IdFuncionario) REFERENCES Funcionario (IdFuncionario)
);

CREATE TABLE AcessoMorador (
    IdAcessoM INT PRIMARY KEY,
    IdMorador INT,
    FOREIGN KEY (IdMorador) REFERENCES Morador (IdMorador)
);

CREATE TABLE AreaRestrita (
    IdAreaR INT PRIMARY KEY,
    NomeLocal VARCHAR,
    IdPessoa INT,
    FOREIGN KEY (IdPessoa) REFERENCES Pessoa (IdPessoa)
);

CREATE TABLE Biometria (
    IdBio INT PRIMARY KEY,
    tipoControle VARCHAR,
    IdMorador INT,
    IdFuncionario INT,
    FOREIGN KEY (IdMorador) REFERENCES Morador (IdMorador),
    FOREIGN KEY (IdFuncionario) REFERENCES Funcionario (IdFuncionario)
);

CREATE TABLE Filmagem (
    idFilmagem SERIAL PRIMARY KEY,
    horario TIME,
    dataf DATE
);

CREATE TABLE Portao (
    IdPortao INT PRIMARY KEY,
    tipo VARCHAR,
    IdBio INT,
    IdPessoa INT,
    DataAcesso DATE,
    FOREIGN KEY (IdBio) REFERENCES Biometria (IdBio),
    FOREIGN KEY (IdPessoa) REFERENCES Pessoa (IdPessoa)
);

CREATE TABLE Agenda (
    Hora TIME,
    DataAgenda DATE,
    IdAgenda SERIAL PRIMARY KEY
);

CREATE TABLE Alarme (
    IdAlarme INT PRIMARY KEY
);

CREATE TABLE Admin (
    IdAdmin INT PRIMARY KEY,
    Nome VARCHAR,
    permissao VARCHAR
);

CREATE TABLE Estacionamento (
    IdEstacionamento INT PRIMARY KEY,
    NumeroVaga INT
);

CREATE TABLE AdminFilme (
    idAdminFilm INT PRIMARY KEY,
    idFilmagem INT,
    IdAdmin INT,
    FOREIGN KEY (idFilmagem) REFERENCES Filmagem (idFilmagem),
    FOREIGN KEY (IdAdmin) REFERENCES Admin (IdAdmin)
);

CREATE TABLE RegistroFinan (
    IdRegistroFinan INT PRIMARY KEY,
    IdVisit INT,
    Valor FLOAT,
    FOREIGN KEY (IdVisit) REFERENCES Visitante (IdVisit)
);

CREATE TABLE Financeiro (
    IdFinanceiro INT PRIMARY KEY,
    idRegistrofinan INT,
    FOREIGN KEY (idRegistrofinan) REFERENCES RegistroFinan (IdRegistroFinan)
);

CREATE TABLE RegistroFilma (
    idRegistroFilma INT PRIMARY KEY,
    idFilmagem INT,
    FOREIGN KEY (idFilmagem) REFERENCES Filmagem (idFilmagem)
);

CREATE TABLE Dispara (
    IdDispara INT PRIMARY KEY,
    IdAlarme INT,
    FOREIGN KEY (IdAlarme) REFERENCES Alarme (IdAlarme)
);

CREATE TABLE Ocorrencia (
    idOcorrencia SERIAL PRIMARY KEY,
    Tipo VARCHAR(255),
    dataO TIMESTAMP,
    Hora TIME,
    idRegistroFilma INT,
    idDispara INT,
    FOREIGN KEY (idRegistroFilma) REFERENCES RegistroFilma (idRegistroFilma),
    FOREIGN KEY (idDispara) REFERENCES Dispara (IdDispara)
);

CREATE TABLE NotificaOco (
    IdNotificaOco INT PRIMARY KEY,
    idOcorrencia INT,
    FOREIGN KEY (idOcorrencia) REFERENCES Ocorrencia (idOcorrencia)
);

CREATE TABLE Notificacao (
    IdNotificacao INT PRIMARY KEY,
    idNotificaOco INT,
    FOREIGN KEY (idNotificaOco) REFERENCES NotificaOco (IdNotificaOco)
);

CREATE TABLE NotificaMorador (
    IdNotificaM INT PRIMARY KEY,
    IdMorador INT,
    idNotificacao INT,
    FOREIGN KEY (IdMorador) REFERENCES Morador (IdMorador),
    FOREIGN KEY (idNotificacao) REFERENCES Notificacao (IdNotificacao)
);

CREATE TABLE NotificaADM (
    IdNotAdm INT PRIMARY KEY,
    IdAdmin INT,
    idNotificacao INT,
    FOREIGN KEY (IdAdmin) REFERENCES Admin (IdAdmin),
    FOREIGN KEY (idNotificacao) REFERENCES Notificacao (IdNotificacao)
);

CREATE TABLE RegistraOcorrencia (
    idRegiOco INT PRIMARY KEY,
    idPessoa INT,
    idOcorrencia INT,
    FOREIGN KEY (idPessoa) REFERENCES Pessoa (IdPessoa),
    FOREIGN KEY (idOcorrencia) REFERENCES Ocorrencia (idOcorrencia)
);

CREATE TABLE Agendar (
    IdAgendar INT PRIMARY KEY,
    IdAgenda INT,
    idMorador INT,
    FOREIGN KEY (IdAgenda) REFERENCES Agenda (IdAgenda),
    FOREIGN KEY (idMorador) REFERENCES Morador (IdMorador)
);

CREATE TABLE MultaVis (
    IdMultaVis INT PRIMARY KEY,
    IdVisit INT,
    FOREIGN KEY (IdVisit) REFERENCES Visitante (IdVisit)
);

CREATE TABLE Multa (
    IdMulta INT PRIMARY KEY,
    Tipo VARCHAR,
    Valor INT,
    idMultaVis INT,
    FOREIGN KEY (idMultaVis) REFERENCES MultaVis (IdMultaVis)
);

CREATE TABLE RegEsta (
    IdRegEsta INT PRIMARY KEY,
    IdEstacionamento INT,
    FOREIGN KEY (IdEstacionamento) REFERENCES Estacionamento (IdEstacionamento)
);

CREATE TABLE Registro (
    IdRegistro SERIAL PRIMARY KEY,
    DataE DATE,
    HoraE TIME,
    DataS DATE,
    HoraS TIME,
    idAcessoVisit INT,
    idAcessoFuncio INT,
    idAcessoM INT,
    idRegEsta INT,
    FOREIGN KEY (idAcessoVisit) REFERENCES AcessoVisit (idAcessoVisit),
    FOREIGN KEY (idAcessoFuncio) REFERENCES AcessoFuncio (idAcessoFuncio),
    FOREIGN KEY (idAcessoM) REFERENCES AcessoMorador (idAcessoM),
    FOREIGN KEY (idRegEsta) REFERENCES RegEsta (IdRegEsta)
);

CREATE TABLE Relatorio (
    idRelatorio INT PRIMARY KEY,
    idRegistro INT,
    FOREIGN KEY (idRegistro) REFERENCES Registro (idRegistro)
);

ALTER TABLE Portao
ADD COLUMN IdPessoa INT,
ADD FOREIGN KEY (IdPessoa) REFERENCES Pessoa (IdPessoa);

ALTER TABLE Portao
ADD COLUMN DataAcesso DATE;



