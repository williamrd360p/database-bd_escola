CREATE DATABASE bd_escola;
USE bd_escola;

CREATE TABLE tb_aluno (
 cd_aluno INT AUTO_INCREMENT PRIMARY KEY,
 nm_aluno VARCHAR(100),
 cpf VARCHAR(11)
);

CREATE USER 'william'@'localhost' IDENTIFIED BY 'pirulito123';
GRANT ALL PRIVILEGES ON *.* TO 'william'@'localhost';

CREATE USER 'graciete'@'localhost' IDENTIFIED BY 'gracizinha123';
GRANT INSERT ON bd_escola.tb_aluno TO 'graciete'@'localhost';

CREATE USER 'jose'@'localhost' IDENTIFIED BY 'zezinho123';
GRANT INSERT, UPDATE ON bd_escola.tb_aluno  TO 'josecarlos'@'localhost';
FLUSH PRIVILEGES;