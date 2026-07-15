SELECT cpf, nome, email
FROM paciente
WHERE cidade = 'Natal';

SELECT cpf, nome, email, data_nascimento
FROM paciente
ORDER BY data_nascimento;

SELECT COUNT(*) AS quantidade_pacientes
FROM paciente
WHERE plano_saude IS NULL;

SELECT data_consulta,
       MAX(valor) AS maior_valor,
       MIN(valor) AS menor_valor
FROM consulta
GROUP BY data_consulta;