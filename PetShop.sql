CREATE TABLE pets(
	pet_id VARCHAR PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
	idade INT NOT NULL,
	especie VARCHAR(30),
	raca VARCHAR(30) NOT NULL,
	peso DECIMAL (5,2),
	id_tutor VARCHAR,
	FOREIGN KEY (id_tutor) REFERENCES tutor(tutor_id)
	
);

CREATE TABLE tutor(
	tutor_id VARCHAR PRIMARY KEY,
	nome_tutor VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL,
	endereco TEXT NOT NULL,
	telefone VARCHAR(20) NOT NULL
	
);

CREATE TABLE medico(
	medico_id VARCHAR PRIMARY KEY,
	crm INT,
	nome VARCHAR(100),
	endereco VARCHAR(100)

);

CREATE TABLE ficha(
	id_pet VARCHAR,
	id_tutor VARCHAR,
	id_medico VARCHAR,
	data_ficha DATE,
	hora_fica TIME,
	descriscao VARCHAR(500),
	FOREIGN KEY (id_pet) REFERENCES pets (pet_id),
	FOREIGN KEY (id_tutor) REFERENCES tutor (tutor_id),
	FOREIGN KEY (id_medico) REFERENCES medico (medico_id)

);


drop table tutor;



INSERT INTO pets (pet_id, nome, idade, especie, raca, peso, id_tutor)
VALUES('P1', 'Alita Pessoa', '4', 'Cachorro', 'Dachshund', '9.60', 'T1');

INSERT INTO pets (pet_id, nome, idade, especie, raca, peso, id_tutor)
VALUES('P2', 'Morgana Rodrigues', '2', 'Cachorro', 'Fila Brasileiro', '30.90', 'T2');

INSERT INTO pets (pet_id, nome, idade, especie, raca, peso, id_tutor)
VALUES('P3', 'Haru Pessoa', '1', 'Gato', 'Frazola', '2.10', 'T1');

INSERT INTO pets (pet_id, nome, idade, especie, raca, peso, id_tutor)
VALUES('P4', 'Nefertari Rodrigues', '1', 'Gato', 'Sem raca', '1.90', 'T2');

INSERT INTO pets (pet_id, nome, idade, especie, raca, peso, id_tutor)
VALUES('P5', 'Sheikinho Rosa', '2', 'Cachorro', 'Sem raca', '10', 'T3');



INSERT INTO tutor (tutor_id, nome_tutor, email, endereco, telefone)
VALUES('T1', 'Atalia', 'ataliagmail.com', 'cuiaba', '8698754285');

INSERT INTO tutor (tutor_id, nome_tutor, email, endereco, telefone)
VALUES('T2', 'Daniel Mateus Rodrigues Rosa', 'danielmateus@gmail.com', 'cuiaba', '8699956987');

INSERT INTO tutor (tutor_id, nome_tutor, email, endereco, telefone)
VALUES('T3', 'Stephany Milena Rodrigues Rosa', 'stephanyrosa@gmail.com', 'cuiaba', '8681459678');




INSERT INTO medico (medico_id, crm, nome, endereco)
VALUES('M1', '123456', 'Dimitrio Santos', 'rua 56 bairro canaviar casa 12');

INSERT INTO medico (medico_id, crm, nome, endereco)
VALUES('M2', '987654', 'Valeria Martins', 'rua 64 bairro saci casa 59');




INSERT INTO ficha (id_pet, id_tutor, id_medico, data_ficha, hora_fica, descriscao)
VALUES('P1', 'T1', 'M1', '25/07/2025', '10:13', 'Paciente se encontra muito bem. Realizado apenas a vacina da gripe');

INSERT INTO ficha (id_pet, id_tutor, id_medico, data_ficha, hora_fica, descriscao)
VALUES('P2', 'T2', 'M2', '10/02/2025', '16:30', 'Paciente abaixo do peso, iniciar dieta para ganho de massa');

INSERT INTO ficha (id_pet, id_tutor, id_medico, data_ficha, hora_fica, descriscao)
VALUES('P3', 'T1', 'M1', '17/10/2025', '08:03', 'Paciente se encontra muito bem. Realizado apenas visita periodica');

INSERT INTO ficha (id_pet, id_tutor, id_medico, data_ficha, hora_fica, descriscao)
VALUES('P4', 'T2', 'M2', '09/04/2025', '18:00', 'Paciente se encontra muito bem. Realizado apenas visita periodica');

INSERT INTO ficha (id_pet, id_tutor, id_medico, data_ficha, hora_fica, descriscao)
VALUES('P5', 'T3', 'M2', '17/10/2025', '16:00', 'Paciente extremamente magro, com amenia, iniciar tratamento via ora e dieta para ganho de peso URGENTE');


