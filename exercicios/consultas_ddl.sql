CREATE TABLE IF NOT EXISTS Especialidade(
    id int PRIMARY KEY,
    descricao varchar(300) NOT NULL
);

CREATE TABLE IF NOT EXISTS MedicoEspecialidade(
    CONSTRAINT cpf_medico char(11) PRIMARY KEY FOREIGN KEY(cpf) REFERENCES Medico,
    CONSTRAINT id_especialidade int PRIMARY KEY FOREIGN KEY(id) REFERENCES Especialidade
);