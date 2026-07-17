SELECT Agendamento.dh_consulta -- Seleciona a data e hora das consultas agendadas.

FROM Agendamento -- Começa pela tabela de agendamentos.

JOIN Medico -- Relaciona cada consulta ao médico responsável.
ON Agendamento.cpf_medico = Medico.cpf_pessoa

JOIN MedicoEspecialidade -- Relaciona o médico às suas especialidades.
ON Medico.cpf_pessoa = MedicoEspecialidade.cpf_medico

JOIN Especialidade -- Obtém a descrição da especialidade de cada médico.
ON MedicoEspecialidade.id_especialidade = Especialidade.id

WHERE Especialidade.descricao = 'Cardiologista'; -- Filtra apenas os médicos cuja especialidade é Cardiologista.

-- ==============================

SELECT
    Pessoa.nome, -- Seleciona o nome do médico.
    Medico.crm, -- Seleciona o CRM do médico.
    AVG(Agendamento.valor_consulta) AS media_consultas -- Calcula a média do valor das consultas do médico.

FROM Medico -- Começa pela tabela de médicos.

JOIN Pessoa -- Relaciona o médico aos seus dados pessoais.
ON Medico.cpf_pessoa = Pessoa.cpf

JOIN Agendamento -- Relaciona cada médico às consultas agendadas.
ON Medico.cpf_pessoa = Agendamento.cpf_medico

WHERE EXTRACT(MONTH FROM Agendamento.dh_consulta) = 12 -- Filtra apenas consultas realizadas no mês de dezembro.
AND EXTRACT(YEAR FROM Agendamento.dh_consulta) = 2020 -- Filtra apenas consultas realizadas no ano de 2020.

GROUP BY Pessoa.nome, Medico.crm; -- Agrupa os resultados por nome e CRM para calcular a média de cada médico.