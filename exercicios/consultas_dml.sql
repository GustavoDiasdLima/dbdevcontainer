CREATE TABLE IF NOT EXISTS Especialidade(
    id int PRIMARY KEY,
    descricao varchar(300) NOT NULL
);

CREATE TABLE IF NOT EXISTS MedicoEspecialidade(
    cpf_medico char(11) PRIMARY KEY,
    id_especialidade int PRIMARY KEY,
    CONSTRAINT MedicoEspecialidade_Medico_FK FOREIGN KEY(cpf_medico) REFERENCES Medico(cpf_pessoa),
    CONSTRAINT MedicoEspecialidade_Especialidade_FK FOREIGN KEY(id_especialidade) REFERENCES Especialidade(id)
);

INSERT INTO Especialidade (descricao)
    values ('Pediatra'), ('Cardiologista'), ('Ortopedista');

INSERT INTO MedicoEspecialidade(cpf_medico, id_especialidade)
    values (001, 01), (004, 02), (004, 03);