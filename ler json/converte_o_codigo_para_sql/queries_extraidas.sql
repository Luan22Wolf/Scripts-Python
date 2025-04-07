ALTER TABLE consultas DROP FOREIGN KEY consultas_ibfk_1;

ALTER TABLE consultas 
ADD CONSTRAINT consultas_ibfk_1 
FOREIGN KEY (paciente_id) 
REFERENCES pacientes(id) 
ON DELETE CASCADE;;

ALTER TABLE pacientes 
ADD COLUMN usuario_id INT,
ADD CONSTRAINT fk_paciente_usuario FOREIGN KEY (usuario_id) REFERENCES usuarios_sistema(id);;

DESC usuario_sistema;
DESC pacientes;;

ALTER TABLE pacientes 
ADD COLUMN usuario_id INT,
ADD CONSTRAINT fk_paciente_usuario FOREIGN KEY (usuario_id) REFERENCES usuario_sistema(id);;

SELECT TABLE_NAME, COLUMN_NAME, CONSTRAINT_NAME, REFERENCED_TABLE_NAME, REFERENCED_COLUMN_NAME 
FROM information_schema.KEY_COLUMN_USAGE 
WHERE TABLE_NAME IN ('usuario_sistema', 'pacientes')
AND REFERENCED_TABLE_NAME IS NOT NULL;;

SELECT TABLE_NAME, COLUMN_NAME, CONSTRAINT_NAME, REFERENCED_TABLE_NAME, REFERENCED_COLUMN_NAME 
FROM information_schema.KEY_COLUMN_USAGE 
WHERE REFERENCED_TABLE_NAME = 'usuario_sistema';;

SELECT TABLE_NAME, COLUMN_NAME, CONSTRAINT_NAME, REFERENCED_TABLE_NAME, REFERENCED_COLUMN_NAME 
FROM information_schema.KEY_COLUMN_USAGE 
WHERE REFERENCED_TABLE_NAME = 'pacientes';;

SELECT TABLE_NAME, COLUMN_NAME, CONSTRAINT_NAME, REFERENCED_TABLE_NAME, REFERENCED_COLUMN_NAME 
FROM information_schema.KEY_COLUMN_USAGE 
WHERE REFERENCED_TABLE_NAME = 'usuario_sistema';;

SELECT TABLE_NAME, COLUMN_NAME, CONSTRAINT_NAME, REFERENCED_TABLE_NAME, REFERENCED_COLUMN_NAME 
FROM information_schema.KEY_COLUMN_USAGE 
WHERE REFERENCED_TABLE_NAME = 'usuario_sistema';;

ALTER TABLE consultas 
ADD CONSTRAINT fk_medico FOREIGN KEY (medico_id) REFERENCES medicos(id);;

DESCRIBE pacientes;
DESCRIBE consultas;;

DESCRIBE pacientes;
DESCRIBE consultas;;

DESCRIBE pacientes;
DESCRIBE consultas;;

ALTER TABLE consultas ADD CONSTRAINT fk_paciente
FOREIGN KEY (paciente_id) REFERENCES pacientes(id) ON DELETE CASCADE;;

CREATE TABLE pacientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_completo VARCHAR(255) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    data_nascimento DATE NOT NULL
);;

SELECT *
FROM consultas 
LIMIT 1000;

ALTER TABLE consultas MODIFY observacoes TEXT NULL;;

INSERT INTO consultas (paciente_id, data_consulta, medico_nome, especialidade, status) VALUES
(1, '2025-04-01', 'Dr. Carlos Almeida', 'Clínico Geral', 'Agendada'),
(1, '2025-04-05', 'Dra. Marina Souza', 'Cardiologia', 'Realizada'),
(1, '2025-04-10', 'Dr. Ricardo Lima', 'Ortopedia', 'Cancelada'),
(1, '2025-04-15', 'Dra. Juliana Mendes', 'Neurologia', 'Agendada'),
(1, '2025-04-20', 'Dr. Fábio Torres', 'Gastroenterologia', 'Realizada'),
(1, '2025-04-25', 'Dra. Carolina Andrade', 'Dermatologia', 'Agendada'),
(1, '2025-04-30', 'Dr. Henrique Castro', 'Pediatria', 'Cancelada'),
(1, '2025-05-05', 'Dra. Laura Fernandes', 'Endocrinologia', 'Realizada'),
(1, '2025-05-10', 'Dr. Marcelo Farias', 'Urologia', 'Agendada'),
(1, '2025-05-15', 'Dra. Paula Nascimento', 'Psiquiatria', 'Realizada'),

(2, '2025-04-02', 'Dr. André Barros', 'Cardiologia', 'Agendada'),
(2, '2025-04-06', 'Dra. Ana Bezerra', 'Neurologia', 'Realizada'),
(2, '2025-04-11', 'Dr. Tiago Pereira', 'Ortopedia', 'Cancelada'),
(2, '2025-04-16', 'Dra. Vanessa Oliveira', 'Dermatologia', 'Agendada'),
(2, '2025-04-21', 'Dr. José Silva', 'Clínico Geral', 'Realizada'),
(2, '2025-04-26', 'Dra. Silvia Ramos', 'Pediatria', 'Agendada'),
(2, '2025-05-01', 'Dr. Mauro Gonçalves', 'Endocrinologia', 'Cancelada'),
(2, '2025-05-06', 'Dra. Amanda Couto', 'Gastroenterologia', 'Realizada'),
(2, '2025-05-11', 'Dr. César Martins', 'Psiquiatria', 'Agendada'),
(2, '2025-05-16', 'Dra. Fabiana Lopes', 'Urologia', 'Realizada'),

;

INSERT INTO consultas (paciente_id, data_consulta, medico_nome, especialidade, status) VALUES
(1, '2025-04-01', 'Dr. Carlos Almeida', 'Clínico Geral', 'Agendada'),
(1, '2025-04-05', 'Dra. Marina Souza', 'Cardiologia', 'Realizada'),
(1, '2025-04-10', 'Dr. Ricardo Lima', 'Ortopedia', 'Cancelada'),
(1, '2025-04-15', 'Dra. Juliana Mendes', 'Neurologia', 'Agendada'),
(1, '2025-04-20', 'Dr. Fábio Torres', 'Gastroenterologia', 'Realizada'),
(1, '2025-04-25', 'Dra. Carolina Andrade', 'Dermatologia', 'Agendada'),
(1, '2025-04-30', 'Dr. Henrique Castro', 'Pediatria', 'Cancelada'),
(1, '2025-05-05', 'Dra. Laura Fernandes', 'Endocrinologia', 'Realizada'),
(1, '2025-05-10', 'Dr. Marcelo Farias', 'Urologia', 'Agendada'),
(1, '2025-05-15', 'Dra. Paula Nascimento', 'Psiquiatria', 'Realizada'),

(2, '2025-04-02', 'Dr. André Barros', 'Cardiologia', 'Agendada'),
(2, '2025-04-06', 'Dra. Ana Bezerra', 'Neurologia', 'Realizada'),
(2, '2025-04-11', 'Dr. Tiago Pereira', 'Ortopedia', 'Cancelada'),
(2, '2025-04-16', 'Dra. Vanessa Oliveira', 'Dermatologia', 'Agendada'),
(2, '2025-04-21', 'Dr. José Silva', 'Clínico Geral', 'Realizada'),
(2, '2025-04-26', 'Dra. Silvia Ramos', 'Pediatria', 'Agendada'),
(2, '2025-05-01', 'Dr. Mauro Gonçalves', 'Endocrinologia', 'Cancelada'),
(2, '2025-05-06', 'Dra. Amanda Couto', 'Gastroenterologia', 'Realizada'),
(2, '2025-05-11', 'Dr. César Martins', 'Psiquiatria', 'Agendada'),
(2, '2025-05-16', 'Dra. Fabiana Lopes', 'Urologia', 'Realizada'),

-- Continue para os demais pacientes de maneira similar até o ID 10;

INSERT INTO internacoes (paciente_id, data_internacao, cirurgia, hora_cirurgia, tipo_acomodacao, acompanhante_nome, acompanhante_cpf, acompanhante_telefone, acompanhante_relacao) VALUES
(1, '2025-04-01', 'Nenhuma', NULL, 'convênio', 'Maria Ferreira', '123.456.789-10', '(11) 91234-5678', 'Esposa'),
(2, '2025-03-29', 'Broncoscopia diagnóstica', '14:00', 'sus', 'Carlos Santos', '321.654.987-21', '(21) 99876-5432', 'Irmão'),
(3, '2025-04-02', 'Cateterismo cardíaco', '10:30', 'particular', 'Fernanda Lima', '654.321.789-32', '(41) 98765-4321', 'Esposa'),
(4, '2025-03-27', 'Nenhuma', NULL, 'convênio', 'Roberto Souza', '987.654.321-43', '(51) 90012-3456', 'Filho'),
(5, '2025-04-03', 'Artroscopia do joelho', '08:45', 'particular', 'Ana Oliveira', '159.357.468-54', '(31) 95678-1234', 'Filha'),
(6, '2025-03-31', 'Nenhuma', NULL, 'sus', 'Pedro Mendes', '753.951.852-65', '(92) 96543-2100', 'Pai'),
(7, '2025-04-04', 'Nenhuma', NULL, 'convênio', 'Luciana Lopes', '369.852.147-76', '(81) 97865-4321', 'Esposa'),
(8, '2025-04-01', 'Apendicectomia', '15:15', 'sus', 'Cláudio Batista', '852.741.963-87', '(71) 98876-5544', 'Pai'),
(9, '2025-03-28', 'Nenhuma', NULL, 'particular', 'Renata Pereira', '741.963.852-98', '(85) 97654-3321', 'Mãe'),
(10, '2025-04-05', 'Nenhuma', NULL, 'convênio', 'Juliana Silva', '147.258.369-09', '(61) 95432-1098', 'Esposa');;

INSERT INTO prontuario (paciente_id, anamnese, historico_familiar, descricao_sintomas, cirurgias, tratamentos, prescricoes, plano_pos_alta, hipoteses_diagnosticas, diagnosticos_definitivos, diagnostico_alta) VALUES
(1, 'Paciente apresenta dores lombares persistentes há 6 meses.', 'Histórico de hipertensão na família.', 'Dores iniciaram após esforço físico intenso.', 'Nenhuma realizada.', 'Fisioterapia e analgesia.', 'Ibuprofeno 600mg 2x ao dia.', 'Evitar esforços físicos.', 'Hérnia de disco.', 'Hérnia de disco confirmada.', 'Liberado com orientações.'),
(2, 'Queixa de tosse seca e cansaço há 2 semanas.', 'Histórico de asma na infância.', 'Sintomas agravados à noite.', 'Nenhuma realizada.', 'Uso de broncodilatadores.', 'Salbutamol inalatório.', 'Evitar poeira e ácaros.', 'Bronquite asmática.', 'Bronquite asmática confirmada.', 'Controle com pneumologista.'),
(3, 'Paciente com dores no peito ao esforço.', 'Pai infartou aos 50 anos.', 'Dor piora com exercício e alivia com repouso.', 'Nenhuma realizada.', 'Uso de nitratos e beta-bloqueadores.', 'Atenolol 25mg 1x ao dia.', 'Reeducação alimentar e exercícios leves.', 'Angina instável.', 'Angina instável confirmada.', 'Encaminhado para cardiologista.'),
(4, 'Paciente relata episódios frequentes de refluxo.', 'Histórico de gastrite na família.', 'Azia piora após refeições gordurosas.', 'Nenhuma realizada.', 'Dieta e uso de inibidores de bomba.', 'Omeprazol 20mg ao dia.', 'Evitar álcool e café.', 'Refluxo gastroesofágico.', 'Refluxo confirmado.', 'Alta com orientações dietéticas.'),
(5, 'Queixa de dores articulares difusas.', 'Histórico de artrite reumatoide na família.', 'Dores mais intensas pela manhã.', 'Nenhuma realizada.', 'Uso de anti-inflamatórios.', 'Diclofenaco 50mg 2x ao dia.', 'Fisioterapia e exercícios leves.', 'Artrite reumatoide.', 'Artrite reumatoide confirmada.', 'Encaminhado para reumatologista.'),
(6, 'Paciente apresenta febre e mal-estar há 3 dias.', 'Sem histórico relevante.', 'Febre alta, dor de cabeça e fadiga.', 'Nenhuma realizada.', 'Hidratação e controle sintomático.', 'Paracetamol 500mg 3x ao dia.', 'Repouso e hidratação.', 'Dengue.', 'Dengue confirmada.', 'Alta após melhora clínica.'),
(7, 'Paciente com queixa de tontura e fadiga.', 'Histórico de anemia na família.', 'Fadiga progressiva nos últimos meses.', 'Nenhuma realizada.', 'Suplementação de ferro.', 'Sulfato ferroso 40mg ao dia.', 'Dieta rica em ferro.', 'Anemia ferropriva.', 'Anemia ferropriva confirmada.', 'Alta com suplementação.'),
(8, 'Dor abdominal intensa e intermitente.', 'Sem histórico relevante.', 'Dor localizada em fossa ilíaca direita.', 'Cirurgia de apendicectomia agendada.', 'Antibióticos e analgesia.', 'Ciprofloxacino 500mg 2x ao dia.', 'Evitar alimentos gordurosos.', 'Apendicite.', 'Apendicite confirmada.', 'Encaminhado para cirurgia.'),
(9, 'Paciente apresenta crises de enxaqueca frequentes.', 'Histórico familiar positivo.', 'Dor latejante unilateral, associada a náusea.', 'Nenhuma realizada.', 'Uso de triptanos e mudança de hábitos.', 'Sumatriptano 50mg sob demanda.', 'Redução do estresse e sono regular.', 'Enxaqueca.', 'Enxaqueca confirmada.', 'Alta com acompanhamento neurológico.'),
(10, 'Paciente relata aumento da sede e urina excessiva.', 'Pai diabético tipo 2.', 'Perda de peso inexplicada nos últimos meses.', 'Nenhuma realizada.', 'Uso de hipoglicemiantes.', 'Metformina 500mg 2x ao dia.', 'Controle alimentar e atividade física.', 'Diabetes mellitus tipo 2.', 'Diabetes tipo 2 confirmado.', 'Encaminhado para endocrinologista.');;

INSERT INTO prontuario (paciente_id, anamnese, historico_familiar, descricao_sintomas, exames_realizados, cirurgias, tratamentos, prescricoes, plano_pos_alta, hipoteses_diagnosticas, diagnosticos_definitivos, diagnostico_alta) VALUES
(1, 'Paciente apresenta dores lombares persistentes há 6 meses.', 'Histórico de hipertensão na família.', 'Dores iniciaram após esforço físico intenso.', 'Raio-X da coluna.', 'Nenhuma realizada.', 'Fisioterapia e analgesia.', 'Ibuprofeno 600mg 2x ao dia.', 'Evitar esforços físicos.', 'Hérnia de disco.', 'Hérnia de disco confirmada.', 'Liberado com orientações.'),
(2, 'Queixa de tosse seca e cansaço há 2 semanas.', 'Histórico de asma na infância.', 'Sintomas agravados à noite.', 'Espirometria e RX de tórax.', 'Nenhuma realizada.', 'Uso de broncodilatadores.', 'Salbutamol inalatório.', 'Evitar poeira e ácaros.', 'Bronquite asmática.', 'Bronquite asmática confirmada.', 'Controle com pneumologista.'),
(3, 'Paciente com dores no peito ao esforço.', 'Pai infartou aos 50 anos.', 'Dor piora com exercício e alivia com repouso.', 'Eletrocardiograma e teste ergométrico.', 'Nenhuma realizada.', 'Uso de nitratos e beta-bloqueadores.', 'Atenolol 25mg 1x ao dia.', 'Reeducação alimentar e exercícios leves.', 'Angina instável.', 'Angina instável confirmada.', 'Encaminhado para cardiologista.'),
(4, 'Paciente relata episódios frequentes de refluxo.', 'Histórico de gastrite na família.', 'Azia piora após refeições gordurosas.', 'Endoscopia digestiva alta.', 'Nenhuma realizada.', 'Dieta e uso de inibidores de bomba.', 'Omeprazol 20mg ao dia.', 'Evitar álcool e café.', 'Refluxo gastroesofágico.', 'Refluxo confirmado.', 'Alta com orientações dietéticas.'),
(5, 'Queixa de dores articulares difusas.', 'Histórico de artrite reumatoide na família.', 'Dores mais intensas pela manhã.', 'Exames de fator reumatoide e PCR.', 'Nenhuma realizada.', 'Uso de anti-inflamatórios.', 'Diclofenaco 50mg 2x ao dia.', 'Fisioterapia e exercícios leves.', 'Artrite reumatoide.', 'Artrite reumatoide confirmada.', 'Encaminhado para reumatologista.'),
(6, 'Paciente apresenta febre e mal-estar há 3 dias.', 'Sem histórico relevante.', 'Febre alta, dor de cabeça e fadiga.', 'Hemograma e sorologia.', 'Nenhuma realizada.', 'Hidratação e controle sintomático.', 'Paracetamol 500mg 3x ao dia.', 'Repouso e hidratação.', 'Dengue.', 'Dengue confirmada.', 'Alta após melhora clínica.'),
(7, 'Paciente com queixa de tontura e fadiga.', 'Histórico de anemia na família.', 'Fadiga progressiva nos últimos meses.', 'Hemograma completo.', 'Nenhuma realizada.', 'Suplementação de ferro.', 'Sulfato ferroso 40mg ao dia.', 'Dieta rica em ferro.', 'Anemia ferropriva.', 'Anemia ferropriva confirmada.', 'Alta com suplementação.'),
(8, 'Dor abdominal intensa e intermitente.', 'Sem histórico relevante.', 'Dor localizada em fossa ilíaca direita.', 'Ultrassom abdominal.', 'Cirurgia de apendicectomia agendada.', 'Antibióticos e analgesia.', 'Ciprofloxacino 500mg 2x ao dia.', 'Evitar alimentos gordurosos.', 'Apendicite.', 'Apendicite confirmada.', 'Encaminhado para cirurgia.'),
(9, 'Paciente apresenta crises de enxaqueca frequentes.', 'Histórico familiar positivo.', 'Dor latejante unilateral, associada a náusea.', 'Ressonância magnética.', 'Nenhuma realizada.', 'Uso de triptanos e mudança de hábitos.', 'Sumatriptano 50mg sob demanda.', 'Redução do estresse e sono regular.', 'Enxaqueca.', 'Enxaqueca confirmada.', 'Alta com acompanhamento neurológico.'),
(10, 'Paciente relata aumento da sede e urina excessiva.', 'Pai diabético tipo 2.', 'Perda de peso inexplicada nos últimos meses.', 'Glicemia de jejum e curva glicêmica.', 'Nenhuma realizada.', 'Uso de hipoglicemiantes.', 'Metformina 500mg 2x ao dia.', 'Controle alimentar e atividade física.', 'Diabetes mellitus tipo 2.', 'Diabetes tipo 2 confirmado.', 'Encaminhado para endocrinologista.');;

INSERT INTO prontuario (paciente_id, anamnese, historico_familiar, descricao_sintomas, exames_realizados, cirurgias, tratamentos, prescricoes, plano_pos_alta, hipoteses_diagnosticas, diagnosticos_definitivos, diagnostico_alta) VALUES
(1, 'Paciente apresenta dores lombares persistentes há 6 meses.', 'Histórico de hipertensão na família.', 'Dores iniciaram após esforço físico intenso.', 'Raio-X da coluna.', 'Nenhuma realizada.', 'Fisioterapia e analgesia.', 'Ibuprofeno 600mg 2x ao dia.', 'Evitar esforços físicos.', 'Hérnia de disco.', 'Confirmado hérnia de disco.', 'Liberado com orientações.'),
(2, 'Queixa de tosse seca e cansaço há 2 semanas.', 'Histórico de asma na infância.', 'Sintomas agravados à noite.', 'Espirometria e RX de tórax.', 'Nenhuma realizada.', 'Uso de broncodilatadores.', 'Salbutamol inalatório.', 'Evitar poeira e ácaros.', 'Bronquite asmática.', 'Confirmado bronquite asmática.', 'Controle com pneumologista.'),
(3, 'Paciente com dores no peito ao esforço.', 'Pai infartou aos 50 anos.', 'Dor piora com exercício e alivia com repouso.', 'Eletrocardiograma e teste ergométrico.', 'Nenhuma realizada.', 'Uso de nitratos e beta-bloqueadores.', 'Atenolol 25mg 1x ao dia.', 'Reeducação alimentar e exercícios leves.', 'Angina instável.', 'Confirmado angina instável.', 'Encaminhado para cardiologista.'),
(4, 'Paciente relata episódios frequentes de refluxo.', 'Histórico de gastrite na família.', 'Azia piora após refeições gordurosas.', 'Endoscopia digestiva alta.', 'Nenhuma realizada.', 'Dieta e uso de inibidores de bomba.', 'Omeprazol 20mg ao dia.', 'Evitar álcool e café.', 'Refluxo gastroesofágico.', 'Confirmado refluxo gastroesofágico.', 'Alta com orientações dietéticas.'),
(5, 'Queixa de dores articulares difusas.', 'Histórico de artrite reumatoide na família.', 'Dores mais intensas pela manhã.', 'Exames de fator reumatoide e PCR.', 'Nenhuma realizada.', 'Uso de anti-inflamatórios.', 'Diclofenaco 50mg 2x ao dia.', 'Fisioterapia e exercícios leves.', 'Artrite reumatoide.', 'Confirmado artrite reumatoide.', 'Encaminhado para reumatologista.'),
(6, 'Paciente apresenta febre e mal-estar há 3 dias.', 'Sem histórico relevante.', 'Febre alta, dor de cabeça e fadiga.', 'Hemograma e sorologia.', 'Nenhuma realizada.', 'Hidratação e controle sintomático.', 'Paracetamol 500mg 3x ao dia.', 'Repouso e hidratação.', 'Dengue.', 'Confirmado dengue.', 'Alta após melhora clínica.'),
(7, 'Paciente com queixa de tontura e fadiga.', 'Histórico de anemia na família.', 'Fadiga progressiva nos últimos meses.', 'Hemograma completo.', 'Nenhuma realizada.', 'Suplementação de ferro.', 'Sulfato ferroso 40mg ao dia.', 'Dieta rica em ferro.', 'Anemia ferropriva.', 'Confirmado anemia ferropriva.', 'Alta com suplementação.'),
(8, 'Dor abdominal intensa e intermitente.', 'Sem histórico relevante.', 'Dor localizada em fossa ilíaca direita.', 'Ultrassom abdominal.', 'Nenhuma realizada.', 'Antibióticos e analgesia.', 'Ciprofloxacino 500mg 2x ao dia.', 'Evitar alimentos gordurosos.', 'Apendicite.', 'Confirmado apendicite.', 'Encaminhado para cirurgia.'),
(9, 'Paciente apresenta crises de enxaqueca frequentes.', 'Histórico familiar positivo.', 'Dor latejante unilateral, associada a náusea.', 'Ressonância magnética.', 'Nenhuma realizada.', 'Uso de triptanos e mudança de hábitos.', 'Sumatriptano 50mg sob demanda.', 'Redução do estresse e sono regular.', 'Enxaqueca.', 'Confirmado enxaqueca.', 'Alta com acompanhamento neurológico.'),
(10, 'Paciente relata aumento da sede e urina excessiva.', 'Pai diabético tipo 2.', 'Perda de peso inexplicada nos últimos meses.', 'Glicemia de jejum e curva glicêmica.', 'Nenhuma realizada.', 'Uso de hipoglicemiantes.', 'Metformina 500mg 2x ao dia.', 'Controle alimentar e atividade física.', 'Diabetes mellitus tipo 2.', 'Confirmado diabetes tipo 2.', 'Encaminhado para endocrinologista.');;

INSERT INTO pacientes (nome_completo, data_nascimento, genero, endereco, tipo_sanguineo, contato_emergencia, rg_cpf) VALUES
('João Carlos Ferreira', '1985-03-15', 'Masculino', 'Rua das Acácias, 123, São Paulo - SP', 'O+', '(11) 98765-4321', '123.456.789-00'),
('Pedro Henrique Santos', '1992-08-22', 'Masculino', 'Av. Brasil, 450, Rio de Janeiro - RJ', 'A-', '(21) 91234-5678', '321.654.987-11'),
('Marcos Antônio Lima', '1978-11-10', 'Masculino', 'Rua Florianópolis, 222, Curitiba - PR', 'B+', '(41) 99876-5432', '654.321.789-22'),
('Ricardo Alves Souza', '1980-05-05', 'Masculino', 'Praça Central, 17, Porto Alegre - RS', 'AB+', '(51) 90012-3456', '987.654.321-33'),
('Lucas Matheus Oliveira', '1995-02-28', 'Masculino', 'Rua Bahia, 89, Belo Horizonte - MG', 'O-', '(31) 95678-1234', '159.357.468-44'),
('Thiago dos Santos Mendes', '1989-07-14', 'Masculino', 'Av. Amazonas, 300, Manaus - AM', 'A+', '(92) 96543-2100', '753.951.852-55'),
('Gustavo Ferreira Lopes', '1973-09-03', 'Masculino', 'Rua do Comércio, 77, Recife - PE', 'B-', '(81) 97865-4321', '369.852.147-66'),
('Eduardo Lima Batista', '1999-12-09', 'Masculino', 'Rua Sol Nascente, 11, Salvador - BA', 'AB-', '(71) 98876-5544', '852.741.963-77'),
('Rafael Cardoso Pereira', '1984-06-18', 'Masculino', 'Alameda das Palmeiras, 55, Fortaleza - CE', 'O+', '(85) 97654-3321', '741.963.852-88'),
('Fernando Moreira Silva', '1990-04-27', 'Masculino', 'Rua Dom Pedro II, 100, Brasília - DF', 'A+', '(61) 95432-1098', '147.258.369-99');;

CREATE TABLE usuarios_sistema(
    id INT AUTO_INCREMENT PRIMARY KEY,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    rg VARCHAR(12) UNIQUE NOT NULL,
    nome_completo VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    senha VARCHAR(255) NOT NULL,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);;

INSERT INTO enfermeiras (nome, registro_profissional, cpf, rg, email, telefone, endereco) VALUES
('Joana Diniz', '123456-SP', '123.456.789-01', '12.345.678-9', 'joana.diniz@email.com', '(11) 91234-5678', 'Rua A, 100 - SP'),
('Ana Paula Santos', '234567-RJ', '234.567.890-12', '23.456.789-0', 'ana.santos@email.com', '(21) 92345-6789', 'Rua B, 200 - RJ'),
('Carlos Mendes', '345678-MG', '345.678.901-23', '34.567.890-1', 'carlos.mendes@email.com', '(31) 93456-7890', 'Rua C, 300 - MG'),
('Fernanda Oliveira', '456789-BA', '456.789.012-34', '45.678.901-2', 'fernanda.oliveira@email.com', '(71) 94567-8901', 'Rua D, 400 - BA'),
('Rafael Souza', '567890-PR', '567.890.123-45', '56.789.012-3', 'rafael.souza@email.com', '(41) 95678-9012', 'Rua E, 500 - PR'),
('Gabriela Martins', '678901-RS', '678.901.234-56', '67.890.123-4', 'gabriela.martins@email.com', '(51) 96789-0123', 'Rua F, 600 - RS'),
('Bruno Almeida', '789012-SC', '789.012.345-67', '78.901.234-5', 'bruno.almeida@email.com', '(48) 97890-1234', 'Rua G, 700 - SC'),
('Juliana Lopes', '890123-PE', '890.123.456-78', '89.012.345-6', 'juliana.lopes@email.com', '(81) 98901-2345', 'Rua H, 800 - PE'),
('Roberto Vasconcelos', '901234-CE', '901.234.567-89', '90.123.456-7', 'roberto.vasconcelos@email.com', '(85) 99012-3456', 'Rua I, 900 - CE'),
('Mariana Rocha', '012345-ES', '012.345.678-90', '01.234.567-8', 'mariana.rocha@email.com', '(27) 90123-4567', 'Rua J, 1000 - ES'),
('Letícia Pereira', '112233-MT', '112.233.445-56', '11.223.344-5', 'leticia.pereira@email.com', '(65) 91122-3344', 'Rua K, 1100 - MT'),
('André Lima', '223344-PA', '223.344.556-67', '22.334.455-6', 'andre.lima@email.com', '(91) 92233-4455', 'Rua L, 1200 - PA'),
('Beatriz Costa', '334455-AM', '334.455.667-78', '33.445.566-7', 'beatriz.costa@email.com', '(92) 93344-5566', 'Rua M, 1300 - AM'),
('Tiago Barbosa', '445566-PI', '445.566.778-89', '44.556.677-8', 'tiago.barbosa@email.com', '(86) 94455-6677', 'Rua N, 1400 - PI'),
('Camila Ribeiro', '556677-GO', '556.677.889-90', '55.667.788-9', 'camila.ribeiro@email.com', '(62) 95566-7788', 'Rua O, 1500 - GO'),
('Eduardo Torres', '667788-MA', '667.788.990-01', '66.778.899-0', 'eduardo.torres@email.com', '(98) 96677-8899', 'Rua P, 1600 - MA'),
('Vanessa Medeiros', '778899-AL', '778.899.101-12', '77.889.910-1', 'vanessa.medeiros@email.com', '(82) 97788-9910', 'Rua Q, 1700 - AL'),
('Carla Mendes', '889900-AP', '889.900.212-23', '88.990.021-2', 'carla.mendes@email.com', '(96) 98899-0021', 'Rua R, 1800 - AP');;

INSERT INTO enfermeiras (nome_completo, coren, especialidade) VALUES
('Enf. Joana Diniz', '123456-SP', 'UTI'),
('Enf. Ana Paula Santos', '234567-RJ', 'Pediatria'),
('Enf. Carlos Mendes', '345678-MG', 'Emergência'),
('Enf. Fernanda Oliveira', '456789-BA', 'Oncologia'),
('Enf. Rafael Souza', '567890-PR', 'Clínica Médica'),
('Enf. Gabriela Martins', '678901-RS', 'Geriatria'),
('Enf. Bruno Almeida', '789012-SC', 'Ortopedia'),
('Enf. Juliana Lopes', '890123-PE', 'Centro Cirúrgico'),
('Enf. Roberto Vasconcelos', '901234-CE', 'Nefrologia'),
('Enf. Mariana Rocha', '012345-ES', 'Saúde Mental'),
('Enf. Letícia Pereira', '112233-MT', 'Infectologia'),
('Enf. André Lima', '223344-PA', 'Cardiologia'),
('Enf. Beatriz Costa', '334455-AM', 'Obstetrícia'),
('Enf. Tiago Barbosa', '445566-PI', 'Pneumologia'),
('Enf. Camila Ribeiro', '556677-GO', 'Dermatologia'),
('Enf. Eduardo Torres', '667788-MA', 'Reumatologia'),
('Enf. Vanessa Medeiros', '778899-AL', 'Hematologia'),
('Enf. Carla Mendes', '889900-AP', 'Emergência');;

INSERT INTO medicos (nome, especialidade, crm, telefone, email) VALUES
('Dr. Lucas Alves', 'Cardiologia', '12345-SP', '11911111111', 'lucas@hospital.com'),
('Dra. Mariana Costa', 'Pediatria', '67890-RJ', '11922222222', 'mariana@hospital.com'),
('Dr. Rafael Mendes', 'Ortopedia', '11223-BA', '11933333333', 'rafael@hospital.com'),
('Dra. Fernanda Lopes', 'Dermatologia', '44556-MG', '11944444444', 'fernanda@hospital.com'),
('Dr. André Pereira', 'Neurologia', '77889-PR', '11955555555', 'andre@hospital.com'),
('Dra. Carolina Rocha', 'Ginecologia', '99000-SP', '11966666666', 'carolina@hospital.com'),
('Dr. Gustavo Lima', 'Oftalmologia', '11122-RJ', '11977777777', 'gustavo@hospital.com'),
('Dra. Patrícia Almeida', 'Psiquiatria', '33344-BA', '11988888888', 'patricia@hospital.com'),
('Dr. Henrique Vasconcelos', 'Endocrinologia', '55566-MG', '11999999999', 'henrique@hospital.com'),
('Dra. Letícia Medeiros', 'Reumatologia', '77788-PR', '11811111111', 'leticia@hospital.com'),
('Dr. Bruno Santos', 'Hematologia', '99900-SP', '11822222222', 'bruno@hospital.com'),
('Dra. Amanda Torres', 'Nefrologia', '11233-RJ', '11833333333', 'amanda@hospital.com');;

INSERT INTO usuarios (cpf, rg, nome_completo, email, telefone, senha) VALUES
('12345678901', 'MG123456', 'João Silva', 'joao@gmail.com', '11999999999', 'senha123'),
('98765432102', 'SP987654', 'Maria Oliveira', 'maria@gmail.com', '11988888888', 'senha123'),
('11122233344', 'RJ111222', 'Carlos Souza', 'carlos@gmail.com', '11977777777', 'senha123'),
('55566677788', 'BA555666', 'Ana Pereira', 'ana@gmail.com', '11966666666', 'senha123'),
('99988877766', 'RS999888', 'Paulo Santos', 'paulo@gmail.com', '11955555555', 'senha123'),
('11223344556', 'SC112233', 'Clara Medeiros', 'clara@gmail.com', '11944444444', 'senha123'),
('22334455667', 'PR223344', 'Ricardo Almeida', 'ricardo@gmail.com', '11933333333', 'senha123'),
('33445566778', 'CE334455', 'Fernanda Lima', 'fernanda@gmail.com', '11922222222', 'senha123'),
('44556677889', 'PE445566', 'Roberto Vasconcelos', 'roberto@gmail.com', '11911111111', 'senha123'),
('55667788990', 'ES556677', 'Beatriz Rocha', 'beatriz@gmail.com', '11900000000', 'senha123'),
('66778899001', 'GO667788', 'Marcos Vinícius', 'marcos@gmail.com', '11899999999', 'senha123'),
('77889900112', 'TO778899', 'Juliana Costa', 'juliana@gmail.com', '11888888888', 'senha123'),
('88990011223', 'PI889900', 'Fábio Torres', 'fabio@gmail.com', '11877777777', 'senha123'),
('99001122334', 'MT990011', 'Gabriela Martins', 'gabriela@gmail.com', '11866666666', 'senha123'),
('00112233445', 'PA001122', 'Tiago Barbosa', 'tiago@gmail.com', '11855555555', 'senha123');;

INSERT INTO remedios (nome, laboratorio, lote, validade, quantidade, cpf_paciente) VALUES
('Paracetamol', 'Medley', 'L1234', '2026-05-10', 100, NULL),
('Ibuprofeno', 'Neo Química', 'L5678', '2025-12-20', 200, NULL),
('Dipirona', 'Sanofi', 'L9101', '2026-08-15', 150, NULL),
('Amoxicilina', 'EMS', 'L1122', '2025-07-30', 80, NULL),
('Azitromicina', 'Prati-Donaduzzi', 'L3344', '2026-02-05', 50, NULL),
('Omeprazol', 'Aché', 'L5566', '2026-03-15', 120, NULL),
('Losartana', 'Teuto', 'L7788', '2025-11-22', 90, NULL),
('Metformina', 'EMS', 'L9910', '2026-09-05', 70, NULL),
('Salbutamol', 'Eurofarma', 'L2020', '2026-06-10', 110, NULL),
('Ranitidina', 'Libbs', 'L3030', '2025-04-28', 95, NULL),
('AAS', 'Bayer', 'L4040', '2026-12-01', 130, NULL),
('Clonazepam', 'Medley', 'L5050', '2026-10-18', 65, NULL),
('Cetirizina', 'Neo Química', 'L6060', '2025-09-12', 85, NULL),
('Prednisona', 'Sanofi', 'L7070', '2026-07-14', 75, NULL),
('Ivermectina', 'Vitamedic', 'L8080', '2025-03-10', 60, NULL),
('Loratadina', 'Cimed', 'L9090', '2026-01-25', 140, NULL),
('Hidroxicloroquina', 'EMS', 'L1010', '2025-08-21', 45, NULL),
('Dexametasona', 'Prati-Donaduzzi', 'L1111', '2026-11-30', 55, NULL),
('Captopril', 'Aché', 'L1212', '2025-06-17', 125, NULL),
('Enalapril', 'Libbs', 'L1313', '2026-04-20', 105, NULL);;

CREATE TABLE consultas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    paciente_id INT NOT NULL,
    medico_id INT NOT NULL,
    data_consulta DATETIME NOT NULL,
    status ENUM('agendada', 'realizada', 'cancelada') DEFAULT 'agendada',
    observacoes TEXT,
    FOREIGN KEY (paciente_id) REFERENCES pacientes(id),
    FOREIGN KEY (medico_id) REFERENCES medicos(id)
);

CREATE TABLE solicitacoes_remedios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT NOT NULL,
    remedio_id INT NOT NULL,
    status VARCHAR(20) DEFAULT 'Pendente',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
    FOREIGN KEY (remedio_id) REFERENCES remedios(id)
);;

CREATE TABLE medicos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(100) NOT NULL,
    crm VARCHAR(20) NOT NULL UNIQUE,
    telefone VARCHAR(20),
    email VARCHAR(100) UNIQUE
);

CREATE TABLE remedios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    laboratorio VARCHAR(100) NOT NULL,
    lote VARCHAR(50) NOT NULL,
    validade DATE NOT NULL,
    quantidade INT NOT NULL,
    cpf_paciente VARCHAR(20)
);

CREATE TABLE consultas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    paciente_id INT NOT NULL,
    medico_id INT NOT NULL,
    data_consulta DATETIME NOT NULL,
    status ENUM('agendada', 'realizada', 'cancelada') DEFAULT 'agendada',
    observacoes TEXT,
    FOREIGN KEY (paciente_id) REFERENCES pacientes(id),
    FOREIGN KEY (medico_id) REFERENCES medicos(id)
);

CREATE TABLE solicitacoes_remedios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT NOT NULL,
    remedio_id INT NOT NULL,
    status VARCHAR(20) DEFAULT 'Pendente',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
    FOREIGN KEY (remedio_id) REFERENCES remedios(id)
);;

CREATE TABLE remedios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    laboratorio VARCHAR(100) NOT NULL,
    lote VARCHAR(50) NOT NULL,
    validade DATE NOT NULL,
    quantidade INT NOT NULL,
    cpf_paciente VARCHAR(20)
);

CREATE TABLE consultas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    paciente_id INT NOT NULL,
    medico_id INT NOT NULL,
    data_consulta DATETIME NOT NULL,
    status ENUM('agendada', 'realizada', 'cancelada') DEFAULT 'agendada',
    observacoes TEXT,
    FOREIGN KEY (paciente_id) REFERENCES pacientes(id),
    FOREIGN KEY (medico_id) REFERENCES medicos(id)
);

CREATE TABLE solicitacoes_remedios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT NOT NULL,
    remedio_id INT NOT NULL,
    status VARCHAR(20) DEFAULT 'Pendente',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
    FOREIGN KEY (remedio_id) REFERENCES remedios(id)
);;

CREATE TABLE solicitacoes_remedios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT NOT NULL,
    remedio_id INT NOT NULL,
    status VARCHAR(20) DEFAULT 'Pendente',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
    FOREIGN KEY (remedio_id) REFERENCES remedios(id)
);;

-- Criar o banco de dados
CREATE DATABASE IF NOT EXISTS hospital_esperanca;
USE hospital_esperanca;

-- Tabela de Pacientes
CREATE TABLE pacientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_completo VARCHAR(255) NOT NULL,
    data_nascimento DATE NOT NULL,
    genero ENUM('Masculino', 'Feminino', 'Outro') NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    tipo_sanguineo VARCHAR(3),
    contato_emergencia VARCHAR(255),
    rg_cpf VARCHAR(20) NOT NULL UNIQUE
);

-- Tabela de Acompanhamento Diário
CREATE TABLE acompanhamento (
    id INT AUTO_INCREMENT PRIMARY KEY,
    paciente_id INT NOT NULL,
    data_acompanhamento DATE NOT NULL,
    status VARCHAR(255) NOT NULL,
    observacoes TEXT,
    FOREIGN KEY (paciente_id) REFERENCES pacientes(id) ON DELETE CASCADE
);

-- Tabela do Prontuário Médico
CREATE TABLE prontuario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    paciente_id INT NOT NULL,
    anamnese TEXT,
    historico_familiar TEXT,
    descricao_sintomas TEXT,
    exames TEXT,
    cirurgias TEXT,
    tratamentos TEXT,
    prescricoes TEXT,
    planejamento_terapeutico TEXT,
    plano_pos_alta TEXT,
    hipoteses_diagnosticas TEXT,
    diagnosticos_definitivos TEXT,
    diagnostico_alta TEXT,
    FOREIGN KEY (paciente_id) REFERENCES pacientes(id) ON DELETE CASCADE
);

-- Tabela de Internações
CREATE TABLE internacoes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    paciente_id INT NOT NULL,
    data_internacao DATE NOT NULL,
    cirurgia VARCHAR(255),
    hora_cirurgia TIME,
    tipo_acomodacao VARCHAR(50),
    acompanhante_nome VARCHAR(255),
    acompanhante_cpf VARCHAR(14),
    acompanhante_telefone VARCHAR(15),
    acompanhante_relacao VARCHAR(100),
    FOREIGN KEY (paciente_id) REFERENCES pacientes(id) ON DELETE CASCADE
);

-- Tabela de Acompanhantes
CREATE TABLE acompanhantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    paciente_id INT NOT NULL,
    nome VARCHAR(255) NOT NULL,
    cpf VARCHAR(14) NOT NULL,
    telefone VARCHAR(15),
    relacao VARCHAR(100),
    FOREIGN KEY (paciente_id) REFERENCES pacientes(id) ON DELETE CASCADE
);

-- Tabela de Enfermeiras
CREATE TABLE enfermeiras (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    registro_profissional VARCHAR(50) NOT NULL UNIQUE,
    cpf VARCHAR(20),
    rg VARCHAR(20),
    email VARCHAR(100) UNIQUE,
    telefone VARCHAR(20),
    endereco VARCHAR(255)
);

-- Tabela de Usuários do Sistema
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL,
    tipo ENUM('admin', 'usuario') NOT NULL
);

-- Inserção de usuário administrador padrão
INSERT INTO usuarios (nome, email, senha, tipo) VALUES
('Administrador', 'admin@hospital.com', '123', 'admin'),
('Hospital Enfermagem', 'he@hospital.com', 'hospital', 'usuario');;

CREATE TABLE remedios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    laboratorio VARCHAR(100) NOT NULL,
    lote VARCHAR(50) NOT NULL,
    validade DATE NOT NULL,
    quantidade INT NOT NULL,
    cpf_paciente VARCHAR(20)
);;

CREATE TABLE enfermeiras (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    registro_profissional VARCHAR(20) NOT NULL UNIQUE,
    cpf VARCHAR(20) NOT NULL UNIQUE,
    rg VARCHAR(20),
    email VARCHAR(100) UNIQUE,
    telefone VARCHAR(20),
    endereco VARCHAR(255)
);;

CREATE TABLE medicos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(100) NOT NULL,
    crm VARCHAR(20) NOT NULL UNIQUE,
    telefone VARCHAR(20),
    email VARCHAR(100) UNIQUE
);;

CREATE TABLE internacoes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    paciente_id INT NOT NULL,
    cirurgia VARCHAR(255),
    hora_cirurgia TIME,
    tipo_acomodacao VARCHAR(50),
    acompanhante_nome VARCHAR(255),
    acompanhante_cpf VARCHAR(20),
    acompanhante_telefone VARCHAR(20),
    acompanhante_relacao VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (paciente_id) REFERENCES pacientes(id)
);;

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cpf VARCHAR(20) NOT NULL UNIQUE,
    rg VARCHAR(20) NOT NULL UNIQUE,
    nome_completo VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    telefone VARCHAR(20),
    senha VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);;

CREATE TABLE pacientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_completo VARCHAR(255) NOT NULL,
    data_nascimento DATE NOT NULL,
    genero VARCHAR(20) NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    tipo_sanguineo VARCHAR(5) NOT NULL,
    contato_emergencia VARCHAR(20),
    rg_cpf VARCHAR(20) NOT NULL UNIQUE
);;

create database hospital_esperanca;;

create table hospital_esperanca;;

