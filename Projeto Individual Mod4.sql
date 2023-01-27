CREATE TABLE `instituicao` (
  `cnpj_instit` varchar(255) PRIMARY KEY NOT NULL,
  `nome_instit` varchar(255),
  `endereco` varchar(255),
  `cep` int,
  `id_curso` int
);

CREATE TABLE `curso` (
  `id_curso` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nome_curso` varchar(255),
  `disciplina` varchar(255),
  `carga_horaria` varchar(255),
  `id_turma` int
);

CREATE TABLE `turma` (
  `id_turma` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `turno` varchar(255),
  `data_inicio` date,
  `data_termino` date,
  `id_aluno` int,
  `id_professor` int
);

CREATE TABLE `aluno` (
  `id_aluno` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `cpf_aluno` varchar(255),
  `nome_aluno` varchar(255),
  `telefone_aluno` varchar(255),
  `email_aluno` varchar(255),
  `nasc_aluno` date
);

CREATE TABLE `professor` (
  `id_professor` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `cpf_prof` varchar(255),
  `nasc_professor` date,
  `telefone` varchar(255),
  `cnpj_instit` varchar(255),
  `id_curso` int
);

ALTER TABLE `instituicao` ADD FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id_curso`);

ALTER TABLE `curso` ADD FOREIGN KEY (`id_turma`) REFERENCES `turma` (`id_turma`);

ALTER TABLE `turma` ADD FOREIGN KEY (`id_aluno`) REFERENCES `aluno` (`id_aluno`);

ALTER TABLE `turma` ADD FOREIGN KEY (`id_professor`) REFERENCES `professor` (`id_professor`);

ALTER TABLE `professor` ADD FOREIGN KEY (`cnpj_instit`) REFERENCES `instituicao` (`cnpj_instit`);

ALTER TABLE `professor` ADD FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id_curso`);
