USE LMS
/*Execute o script "FIT_LINGUAGEM_SQL_04_LMS.sql" para criar as tabelas dos projeto LMS.*/

/*Para inserir os usuarios, considere como login o primeiro e ultimo nome do aluno, coordenador ou professor. A senha para os alunos será a primeira letra do nome + os 7 digitos do RA, para professores e coordenadores será uma senha com 8 caracteres qualquer.*/ 
INSERT INTO USUARIO (LOGIN, SENHA) VALUES 
('GILSON.ALMEIDA', 'G1501375')

INSERT INTO USUARIO (LOGIN, SENHA) VALUES 
('ANA.SANTOS', 'AS123456')

INSERT INTO USUARIO (LOGIN, SENHA) VALUES 
('ALAN.OLIVEIRA', 'AO123456')

/*Para cadastrar os alunos utilize as informações da aba "alunos" do arquivo "dadosLMS.xlsx". Utilize dados ficticíos para as informações obrigatórias não disponibilizadas.*/
INSERT INTO ALUNO (IDUSUARIO, NOME, EMAIL, CELULAR, RA) VALUES 
(1, 'GILSON FERNANDES ALMEIDA','gf_almeida@impacta.com.br','11987654321','1501375')

/*Para cadastrar os coordenadores, utilize as informações do site https://www.impacta.edu.br/graduacao e cadastre TODOS os coordenadores dos cursos de graduação. Utilize dados ficticíos para as informações obrigatórias não disponibilizadas.*/
INSERT INTO COORDENADOR (IDUSUARIO, NOME, EMAIL, CELULAR) VALUES
(2, 'ANA CRISTINA DOS SANTOS', 'ac_santos@impacta.com.br','11987654321')

/*Para cadastrar os professores, utilize as informações da aba "professores" do arquivo "dadosLMS.xlsx". Utilize dados ficticíos para as informações obrigatórias não disponibilizadas.*/
INSERT INTO PROFESSOR (IDUSUARIO, NOME, EMAIL, CELULAR, APELIDO) VALUES
(3, 'ALAN ALVES DE OLIVEIRA', 'aa_oliveira@impacta.com.br','11987654321','ALAN')

/*Para cadastrar os cursos, utilize as informações do site https://www.impacta.edu.br/graduacao e cadastre TODAS as disciplinas dos cursos de graduação. Utilize dados ficticíos para as informações obrigatórias não disponibilizadas.*/
INSERT INTO CURSO VALUES
('ANÁLISE E DESENVOLVIMENTO DE SISTEMAS')

/*Para cadastrar as disciplinas, utilize as informações do site https://www.impacta.edu.br/graduacao e cadastre TODAS as disciplinas dos cursos de graduação. Utilize dados ficticíos para as informações obrigatórias não disponibilizadas.*/
INSERT INTO DISCIPLINA (NOME, PLANODEENSINO, CARGAHORARIA, COMPETENCIAS, HABILIDADES, EMENTA, CONTEUDOPROGRAMATICO, BIBLIOGRAFIABASICA, BIBLIOGRAFIACOMPLEMENTAR, PERCENTUALPRATICO, PERCENTUALTEORICO, IDCOORDENADOR) VALUES
('COMUNICAÇÃO E EXPRESSÃO', 'PLANO DE ENSINO DA DISCIPLINA', 80, 'COMPETENCIAS DA DISCIPLINA',
'HABILIDADES DA DISCIPLINA', 'EMENTA DA DISCIPLINA', 'CONTEUDO DA DISCIPLINA', 'BIBLIOGRAFIA BÁSICA', 'BIBLIOGRAFIA COMPLEMENTAR',100,0,1)


/*Cadastre como disciplinas ofertadas as disciplinas do 2º semestre para os cursos de SI ( turmas A e B) e ADS (turmas A, B, C e D) para o ano de 2018, semestre 2, informe o coordenador real do curso e o professor que leciona a disciplina atualmente para sua turma. Utilize dados ficticíos para as informações obrigatórias não disponibilizadas.*/
INSERT INTO DISCIPLINAOFERTADA (IDCOORDENADOR, IDDISCIPLINA, IDCURSO, ANO, SEMESTRE, TURMA, IDPROFESSOR, METODOLOGIA, RECURSOS, CRITERIOAVALIACAO, PLANODEAULAS) VALUES
(1, 1, 1, 2018, 2, 'B', 1, 'EAD', 'CLASSROOM', 'ACS + PROVA', 'PLANO')

INSERT INTO DISCIPLINAOFERTADA (IDCOORDENADOR, IDDISCIPLINA, IDCURSO, ANO, SEMESTRE, TURMA) VALUES
(1, 1, 1, 2018, 2, 'A')

INSERT INTO DISCIPLINAOFERTADA (IDCOORDENADOR, IDDISCIPLINA, IDCURSO, ANO, SEMESTRE, TURMA, IDPROFESSOR) VALUES
(1, 1, 1, 2018, 2, 'C', 1)


/*Simule 40 solicitações de martrículas (10 para cada status), utilize  10 alunos diferentes*/
INSERT INTO SOLICITACAOMATRICULA (IDALUNO, IDDOFERTADA) VALUES
(1,1)

INSERT INTO SOLICITACAOMATRICULA (IDALUNO, IDDOFERTADA, IDCOORDENADOR, STATUS) VALUES
(1,2,1,'APROVADA')

/*Cadastre na tabela atividades as 10 ACs (AC1, AC2, AC3, ...). Utilize dados ficticíos para as informações obrigatórias não disponibilizadas.*/
INSERT INTO ATIVIDADE (TITULO, CONTEUDO, TIPO) VALUES
('AC1', 'Atividade contínua 1', 'RESPOSTA ABERTA')

/*Vincule as 10 ACs para 2 disciplinas ofertadas.*/
INSERT INTO ATIVIDADEVINCULADA (IDATIVIDADE, IDPROFESSOR, IDDOFERTADA, ROTULO, STATUS, DTINIRESPOSTA, DTFIMRESPOSTA) VALUES
(1,1,1,'COMUNICAÇÃO', 'DISPONIBILIZADA', GETDATE(), GETDATE()+30 )

/*Insira na tabela Entrega, 2 entregas para cada atividade vinculada ( 2 x 10 x 2 = 40), todas que forem ACs 1, 2, 3, 4 ou 5 devem estar como Corrigidas e todas as outras devem estar como entregues.*/
INSERT INTO ENTREGA (IDALUNO, IDAVINCULADA, TITULO, RESPOSTA, STATUS, IDPROFESSOR, NOTA, DTAVALIACAO) VALUES
(1,1,'ENREGA AC1', '1-A, 2-B, 3-C', 'CORRIGIDO', 1, 10, GETDATE())

/*Inclua 30 mensagens ficticias entre alunos e professores ( 10 para cada status) */
INSERT INTO MENSAGEM (IDALUNO, IDPROFESSOR, ASSUNTO, REFERENCIA, CONTEUDO, STATUS, DTENVIO, DTRESPOSTA, RESPOSTA) VALUES
(1,1,'COMUNICACAO E EXPRESSAO', 'FALTA', 'PROFESSOR FAVOR VERIFICAR MINHA FALTA DO DIA 10/07', 'RESPONDIDO', '20180712','20180715','FALTA LANÇADA ERRONEAMENTE, JÁ AJUSTADO. FAVOR VERFIQUE')

/*EXCLUA UM PROFESSOR QUE NÃO TENHA NENHUMA RELAÇÃO COM DADOS DE OUTRA TABELA (UTILIZE DELETE)*/

/*EXCLUA UM ALUNO QUE NÃO TENHA NENHUMA RELAÇÃO COM DADOS DE OUTRA TABELA (UTILIZE DELETE)*/

/*ALTERE A SENHA DO PROFESSOR GUSTAVO MENDES FERREIRA (UTILIZE UPDATE)*/

/*ALTERE UMA MENSAGEM QUE ESTAVA COM STATUS 'LIDO' PARA RESPONDIDO. LEMBRE-SE QUE SERÁ NECESSÁRIO CADASTRAR A DATA DA RESPOSTA E A REPOSTA (UTILIZE UPDATE)*/

/*ALTERE UMA ENTREGA QUE ESTAVA COM STATUS 'ENTREGUE' PARA 'CORRIGIDO". LEMBRE-SE QUE SERÁ NECESSÁRIO ATUALIZAR O IDPROFESSOR, A NOTA E A DATA DA AVALIAÇÃO, ALÉM DA TROCA DO STATUS (UTILIZE UPDATE)*/

