ALTER TABLE usuarios ADD COLUMN bio TEXT;
INSERT INTO usuarios (nome, email, senha, bio)
VALUES ('Maria Silva', 'maria.silva@gmail.com', 'senha123', 'Pesquisadora e estudante de IA...');

-- Adiciona coluna 'membro_desde' com data/hora de criação
ALTER TABLE usuarios 
ADD COLUMN membro_desde DATETIME DEFAULT CURRENT_TIMESTAMP;

UPDATE usuarios SET senha = SHA2(senha, 256);
