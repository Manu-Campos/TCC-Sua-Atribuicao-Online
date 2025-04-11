#Massa de Testes
-- Atribuidor
Insert into Atribuidor values ('Erica de Oliveira Campos','(13) 99754-4321','erica.campos@gmail.com',md5('123456'),'1985-02-04',null);

-- Carga horario
insert into Carga_Horaria values(1,1,0,0);
insert into Carga_Horaria values(3,2,0,1);
insert into Carga_Horaria values(4,3,0,1);
insert into Carga_Horaria values(5,4,0,1);
insert into Carga_Horaria values(7,5,0,2);
insert into Carga_Horaria values(8,6,0,2);
insert into Carga_Horaria values(9,7,0,2);
insert into Carga_Horaria values(12,8,1,3);
insert into Carga_Horaria values(13,9,1,3);
insert into Carga_Horaria values(15,10,1,4);
insert into Carga_Horaria values(17,11,1,5);
insert into Carga_Horaria values(18,12,1,5);
insert into Carga_Horaria values(20,13,1,6);
insert into Carga_Horaria values(21,14,1,6);
insert into Carga_Horaria values(23,15,1,7);
insert into Carga_Horaria values(24,16,1,7);
insert into Carga_Horaria values(25,17,1,7);
insert into Carga_Horaria values(27,18,2,7);
insert into Carga_Horaria values(28,19,2,7);
insert into Carga_Horaria values(30,20,2,8);
insert into Carga_Horaria values(32,21,2,9);
insert into Carga_Horaria values(33,22,2,9);
insert into Carga_Horaria values(34,23,2,9);
insert into Carga_Horaria values(36,24,2,10);
insert into Carga_Horaria values(38,25,2,11);
insert into Carga_Horaria values(40,26,2,12);
insert into Carga_Horaria values(41,27,2,12);
insert into Carga_Horaria values(42,28,2,12);
insert into Carga_Horaria values(43,29,2,12);
insert into Carga_Horaria values(45,30,2,13);
insert into Carga_Horaria values(46,31,2,13);
insert into Carga_Horaria values(48,32,2,14);
insert into Carga_Horaria values(33,33,0,0);

-- Tipos de ensino
Insert into Tipo_Ensino values (1,'PEB I');
Insert into Tipo_Ensino values (2,'PEB III');
Insert into Tipo_Ensino values (3,'PEE');

-- Tipos de professor
Insert into Tipo_Professor values (1,'Efetivo');
Insert into Tipo_Professor values (2,'Substituto');
Insert into Tipo_Professor values (3,'Aposentado');
Insert into Tipo_Professor values (4,'Supervisor');
Insert into Tipo_Professor values (5,'Diretor');
Insert into Tipo_Professor values (6,'Licença');

-- Tipos de professor
Insert into Tipo_Periodo values (1,'Manhã');
Insert into Tipo_Periodo values (2,'Integral');
Insert into Tipo_Periodo values (3,'Tarde');
Insert into Tipo_Periodo values (4,'Vespertino');
Insert into Tipo_Periodo values (5,'Noturno');

-- Tipos de Solicitação
insert into tipo_solicitacao values
(1,'Carga Suplementar'),
(2,'Troca de Aulas'),
(3,'Remoção');

-- Tipos de Assunto
insert into Tipo_Assunto values
(1,'Afastamento'),
(2,'Aposentadoria'),
(3,'Outros');

-- Fases Atribuição
insert into Fase values
('Pré-Atribuição','erica.campos@gmail.com','2025-01-30 10:00:00','2025-02-01 10:00:00',0),
('1º Atribuição','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00',1),
('Remoção','erica.campos@gmail.com','2025-12-23 10:00:00','2025-12-24 10:00:00',2),
('2º Atribuição','erica.campos@gmail.com','2025-12-25 10:00:00','2025-12-26 10:00:00',3), 
('Carga Suplementar','erica.campos@gmail.com','2025-12-27 10:00:00','2025-12-28 10:00:00',4),
('Trocas','erica.campos@gmail.com','2025-12-29 10:00:00','2025-12-30 10:00:00',5);

-- instituicaos
Insert into instituicao values
('E.M. Ver. Ary Silva Souza', '(13) 91234-5678', 'ary.souza@gmail.com', md5('123'),null),
('E.M. Benedicta Blac Gonzalez', '(13) 92345-6789', 'benedita.gonzalez@gmail.com', md5('123'),null),
('E.M. Profª Dirce Valério Gracia', '(13) 93456-7890', 'dirce.gracia@gmail.com', md5('123'),null),
('E.M. Profª Ivonete da Silva Câmara', '(13) 95678-9012', 'ivonete.camara@gmail.com', md5('123'),null),
('E.M. Ver. Francisco Figueiredo', '(13) 96789-0123', 'francisco.figueiredo@gmail.com', md5('123'),null),
('E.M. Profª Maria Aparecida de Araújo', '(13) 97890-1234', 'maria.araujo@gmail.com', md5('123'),null),
('E.M. Profª Mª Aparecida Ramos Camargo', '(13) 98901-2345', 'maria.camargo@gmail.com', md5('123'),null),
('E.M. 1º de Maio', '(13) 99012-3456', 'primeiro.maio@gmail.com', md5('123'),null),
('E.M. Dr. Napoleão Rodrigues Laureano', '(13) 90123-4567', 'napoleao.rodrigues@gmail.com', md5('123'),null),
('E.M. Lucimara de Jesus Vicente', '(13) 91234-5678', 'lucimara.vicente@gmail.com', md5('123'),null),
('E.M. Dr. Gladston Jafet', '(13) 92345-6789', 'gladston.jafet@gmail.com', md5('123'),null),
('E.M. Profª Lúcia Flora dos Santos', '(13) 93456-7890', 'lucia.santos@gmail.com', md5('123'),null),
('E.M. Ver. Afonso Nunes', '(13) 94567-8901', 'afonso.nunes@gmail.com', md5('123'),null),
('E.M. Angelina Daige', '(13) 95678-9012', 'angelina.daige@gmail.com', md5('123'),null),
('E.M. Prof. Antonio Ferreira de Almeida Jr', '(13) 96789-0123', 'antonio.almeida@gmail.com', md5('123'),null),
('E.M. Pres. Franklin Delano Roosevelt', '(13) 97890-1234', 'franklin.roosevelt@gmail.com', md5('123'),null),
('E.M. Giusfredo Santini', '(13) 98901-2345', 'giusfredo.santini@gmail.com', md5('123'),null),
('E.M. Hebert Henry Dow', '(13) 99012-3456', 'herbert.dow@gmail.com', md5('123'),null),
('E.M. Profª Jacirema dos Santos Fontes', '(13) 90123-4567', 'jacirema.fontes@gmail.com', md5('123'),null),
('E.M. Mario Cerqueira Leite Filho', '(13) 91234-5678', 'mario.leite@gmail.com', md5('123'),null),
('E.M. Profª Myrian Terezinha Wichrowski Millbourn', '(13) 92345-6789', 'myrian.millborn@gmail.com', md5('123'),null),
('E.M. Dr. Oswaldo Cruz II', '(13) 93456-7890', 'oswaldo.cruz@gmail.com', md5('123'),null),
('E.M. Paulo Freire', '(13) 94567-8901', 'paulo.freire@gmail.com', md5('123'),null),
('E.M. Sérgio Pereira Rodrigues', '(13) 95678-9012', 'sergio.rodrigues@gmail.com', md5('123'),null),
('E.M. Valéria Cristina Vieira da Cruz Silva', '(13) 96789-0123', 'valeria.vieira@gmail.com', md5('123'),null),
('N.E.I.M. Marina Daige', '(13) 97890-1234', 'marina.daige@gmail.com', md5('123'),null),
('E.M. Adelaide Fernandes', '(13) 99012-3456', 'adelaide.fernandes@gmail.com', md5('123'),null),
('E.M. Aparecida da Costa Sinópoli', '(13) 90123-4567', 'aparecida.sinopoli@gmail.com', md5('123'),null),
('E.M. Augusto Antunes Correa', '(13) 91234-5678', 'augusto.antunes@gmail.com', md5('123'),null),
('E.M. Catarina de Oliveira Salgado', '(13) 92345-6789', 'catarina.salgado@gmail.com', md5('123'),null),
('E.M. Cônego Domenico Rangoni', '(13) 93456-7890', 'domenico.rangoni@gmail.com', md5('123'),null),
('E.M. Constantino Michaello Condei', '(13) 94567-8901', 'constantino.michaello@gmail.com', md5('123'),null),
('E.M. Dr. Ernesto Ferreira Sobrinho', '(13) 95678-9012', 'ernesto.sobrinho@gmail.com', md5('123'),null),
('E.M. Prof. Guilherme Furlani Junior', '(13) 96789-0123', 'guilherme.furlani@gmail.com', md5('123'),null),
('E.M. Hermínia Neves Vitiello', '(13) 97890-1234', 'herminia.vitiello@gmail.com', md5('123'),null),
('E.M. João de Oliveira', '(13) 98901-2345', 'joao.oliveira@gmail.com', md5('123'),null),
('E.M. José de Souza', '(13) 99012-3456', 'jose.souza@gmail.com', md5('123'),null),
('E.M. Profª Magdalena Maria Cardoso Lourenço', '(13) 90123-4567', 'magdalena.lourenco@gmail.com', md5('123'),null),
('E.M. Profª Maria de Lourdes Gonçalves de Oliveira', '(13) 91234-5678', 'maria.lourdes@gmail.com', md5('123'),null),
('E.M. Maria Eunice da Cruz', '(13) 92345-6789', 'maria.eunice@gmail.com', md5('123'),null),
('E.M. Profª Maria Regina Teixeira dos Santos Claro', '(13) 93456-7890', 'maria.teixeira@gmail.com', md5('123'),null),
('E.M. Profª Philomena Cardoso de Oliveira', '(13) 94567-8901', 'philomena.cardoso@gmail.com', md5('123'),null),
('E.M. Pastor Samuel Franco de Menezes', '(13) 95678-9012', 'samuel.franco@gmail.com', md5('123'),null),
('E.M. Ver. Ernesto Pereira', '(13) 96789-0123', 'vereador.ernesto@gmail.com', md5('123'),null),
('E.M. Vicentina Lamas do Valle', '(13) 97890-1234', 'vicentina.valle@gmail.com', md5('123'),null);

-- Disciplinas
Insert into Disciplina values 
('Matemática','MAT',2,5),
('História','HIST',2,3),
('Geografia','GEO',2,3),
('Língua Portuguesa','PORT',2,6),
('Língua Inglesa','ING',2,2),
('Ciências','CIEN',2,4),
('Educação Física','EDF',2,2),
('Artes','ART',2,2),
('Núcleo Comum','NC',1,33),
('Deficiência Intelectual','DI',3,1),
('Deficiência Auditiva','DA',3,1),
('Deficiência Visual','DV',3,1);

-- Jornadas de cada Disciplina
insert into jornada values 
-- Matemática - 5
(5,'MAT',2),
(10,'MAT',2),
(15,'MAT',2),
(20,'MAT',2),
(25,'MAT',2),
(30,'MAT',2),
-- História - 3
(3,'HIST',2),
(6,'HIST',2),
(9,'HIST',2),
(12,'HIST',2),
(15,'HIST',2),
(18,'HIST',2),
(21,'HIST',2),
(24,'HIST',2),
(27,'HIST',2),
(30,'HIST',2),
-- Geografia - 3
(3,'GEO',2),
(6,'GEO',2),
(9,'GEO',2),
(12,'GEO',2),
(15,'GEO',2),
(18,'GEO',2),
(21,'GEO',2),
(24,'GEO',2),
(27,'GEO',2),
(30,'GEO',2),
-- Português - 6
(6,'PORT',2),
(12,'PORT',2),
(18,'PORT',2),
(24,'PORT',2),
(30,'PORT',2),
-- Inglês- 2
(2,'ING',2),
(4,'ING',2),
(6,'ING',2),
(8,'ING',2),
(10,'ING',2),
(12,'ING',2),
(14,'ING',2),
(16,'ING',2),
(18,'ING',2),
(20,'ING',2),
(22,'ING',2),
(24,'ING',2),
(26,'ING',2),
(28,'ING',2),
(30,'ING',2),
(32,'ING',2),
-- Ciências - 4
(4,'CIEN',2),
(8,'CIEN',2),
(12,'CIEN',2),
(16,'CIEN',2),
(20,'CIEN',2),
(24,'CIEN',2),
(28,'CIEN',2),
(32,'CIEN',2),
-- Educação Física - 2
(2,'EDF',2),
(4,'EDF',2),
(6,'EDF',2),
(8,'EDF',2),
(10,'EDF',2),
(12,'EDF',2),
(14,'EDF',2),
(16,'EDF',2),
(18,'EDF',2),
(20,'EDF',2),
(22,'EDF',2),
(24,'EDF',2),
(26,'EDF',2),
(28,'EDF',2),
(30,'EDF',2),
(32,'EDF',2),
-- Artes - 2
(2,'ART',2),
(4,'ART',2),
(6,'ART',2),
(8,'ART',2),
(10,'ART',2),
(12,'ART',2),
(14,'ART',2),
(16,'ART',2),
(18,'ART',2),
(20,'ART',2),
(22,'ART',2),
(24,'ART',2),
(26,'ART',2),
(28,'ART',2),
(30,'ART',2),
(32,'ART',2),
-- PEB I
(33,'NC',1);

-- Professores
insert into professor values(3788, 'maria.bartolotto@gmail.com', md5('123'),'Maria do Rosário R. N. Bartolotto', 0, '1950-06-05', '1990-01-03', 414.2, '13995456550', 1, 'NC',1,1,null);
insert into professor values(23554, 'marcelo.santos@gmail.com', md5('123'),'Marcelo Cardoso Santos', 1, '1969-03-11', '1996-05-14', 315.5, '13987654328', 1, 'CIEN', 2,1,null);
insert into professor values(3592, 'mariza.araújo@gmail.com',md5('123'),'Mariza Almeida de Araújo', 1, '1950-06-05', '1990-02-04', 851.2, '13995456551', 2, 'NC', 1,1,null);
insert into professor values(3606, 'tania.amorim@gmail.com',md5('123'),'Tânia Braga de Amorim', 2, '1950-06-05', '1990-03-05', 1000.5, '13995456552', 1, 'NC', 1,1,null);
insert into professor values(3860, 'adélia.vieira@gmail.com',md5('123'), 'Adélia Maria Ventura Vieira', 3, '1950-06-05', '1990-04-06', 226.7, '13995456553', 2, 'NC', 1,1,null);
insert into professor values(3914, 'ema.santos@gmail.com',md5('123'), 'Ema Tabosa de Oliveira Santos', 4, '1950-06-05', '1990-05-07', 174.5, '13995456554', 1, 'NC', 1,1,null);
insert into professor values(3992, 'maria.freitas@gmail.com',md5('123'), 'Maria Aparecida dos Santos F. Freitas', 5, '1950-06-05', '1990-06-08', 544.5, '13995456555', 1, 'NC', 1,1,null);
insert into professor values(3864, 'teresa.pelissari@gmail.com',md5('123'), 'Teresa Cristina Pelissari', 6, '1950-06-05', '1990-07-09', 653.4, '13995456556', 2, 'NC', 1,1,null);
insert into professor values(3859, 'marta.leão@gmail.com',md5('123'), 'Marta Otília Leão', 7, '1950-06-05', '1990-08-10', 839.7, '13995456557', 1, 'NC', 1,1,null);
insert into professor values(4215, 'selma.dória@gmail.com',md5('123'), 'Selma Dias Dória', 8, '1950-06-05', '1990-09-11', 734.6, '13995456558', 1, 'NC', 1,1,null);
insert into professor values(5053, 'maria.pombo@gmail.com',md5('123'), 'Maria de Fátima Calaça P. Pombo', 9, '1950-06-05', '1990-10-12', 345.2, '13995456559', 2, 'NC', 1,1,null);
insert into professor values(4340, 'denize.correa@gmail.com',md5('123'), 'Denize Ventura Correa', 0, '1950-06-05', '1990-01-03', 20.6, '13995456550', 1, 'NC', 1,1,null);
insert into professor values(12137, 'vera.amaral@gmail.com',md5('123'), 'Vera Lúcia Souza do Amaral', 1, '1950-06-05', '1990-02-04',234.8 , '13995456551', 1, 'NC', 1,1,null);
insert into professor values(4581, 'morisart.cordeiro@gmail.com',md5('123'), 'Morisart Cordeiro', 2, '1950-06-05', '1990-03-05', 1235.6, '13995456552', 2, 'NC', 1,1,null);
insert into professor values(4679, 'ana.pio@gmail.com',md5('123'), 'Ana Lúcia de Andrade dos Santos Pio', 3, '1950-06-05', '1990-04-06', 526.7, '13995456553', 1, 'NC', 1,1,null);
insert into professor values(4702, 'teresinha.santana@gmail.com',md5('123'), 'Teresinha Lopes de Santana', 4, '1950-06-05', '1990-05-07', 350.4, '13995456554', 1, 'NC', 1,1,null);
insert into professor values(7274, 'eliane.gomes@gmail.com',md5('123'), 'Eliane Arlinda Gomes', 5, '1950-06-05', '1990-06-08', 144.5, '13995456555', 1, 'NC', 1,1,null);
insert into professor values(4771, 'maria.santos@gmail.com',md5('123'), 'Maria Irene Gouveia A. dos Santos', 6, '1950-06-05', '1990-07-09', 233.4, '13995456556', 1, 'NC', 1,1,null);
insert into professor values(5705, 'vanda.oliveira@gmail.com',md5('123'), 'Vanda do Carmo Laranjeira Oliveira', 7, '1950-06-05', '1990-08-10', 462.6, '13995456557', 1, 'NC', 1,1,null);
insert into professor values(4567, 'márcia.bezzerra@gmail.com',md5('123'), 'Márcia Cordeiro Bezerra',8, '1950-06-05','1990-09-11',71.2,'13995456558',1,'NC',1,1,null);
insert into professor values(4585, 'maria.wanderley@gmail.com',md5('123'), 'Maria Da Conceição R. Wanderley', 9, '1950-06-05', '1990-10-12', 749.3, '13995456559', 1, 'NC', 1,1,null);
insert into professor values(5008, 'vera.jesus@gmail.com',md5('123'), 'Vera Lúcia Gomes De Jesus', 0, '1950-06-05', '1990-01-03', 564.0, '13995456550', 1, 'NC', 1,1,null);
insert into professor values(4099, 'salma.dias@gmail.com',md5('123'), 'Salma Vasconcelos Dos Santosdias', 1, '1950-06-05', '1990-02-04', 950.6, '13995456551', 1, 'NC', 1,1,null);
insert into professor values(6406, 'renata.carlos@gmail.com',md5('123'), 'Renata Coghe Carlos', 2, '1950-06-05', '1990-03-05', 356.2, '13995456552', 1, 'NC', 1,1,null);
insert into professor values(4785, 'neide.silva@gmail.com',md5('123'), 'Neide Ferreira Da Silva', 3, '1950-06-05', '1990-04-06', 268.2, '13995456553', 1, 'NC', 1,1,null);
insert into professor values(5082, 'regina.rodrigues@gmail.com',md5('123'), 'Regina Lúcia Rodrigues', 4, '1950-06-05', '1990-05-07', 789.2, '13995456554', 1, 'NC', 1,1,null);
insert into professor values(4671, 'leila.souza@gmail.com',md5('123'), 'Leila Alves De Souza', 5, '1950-06-05', '1990-06-08', 567.5, '13995456555', 1, 'NC', 1,1,null);
insert into professor values(5411, 'geniceir.bispo@gmail.com',md5('123'), 'Geniceir Alves Costa Bispo', 6, '1950-06-05', '1990-07-09', 180.4, '13995456556', 1, 'NC', 1,1,null);
insert into professor values(6471, 'maria.oliveira@gmail.com',md5('123'), 'Maria C. Duartde Oliveira', 7, '1950-06-05', '1990-08-10', 675.4, '13995456557', 1, 'NC', 1,1,null);
insert into professor values(4578, 'elizabeth.rosa@gmail.com',md5('123'), 'Elizabeth Rosa', 8, '1950-06-05', '1990-09-11', 210.8, '13995456558', 2, 'NC', 1,1,null);
insert into professor values(6452, 'margareth.souza@gmail.com',md5('123'), 'Margareth Anilsa T. De Souza', 9, '1950-06-05', '1990-10-12', 212.6, '13995456559', 1, 'NC', 1,1,null);
insert into professor values(5616, 'ida.righi@gmail.com',md5('123'), 'Ida Righi', 1, '1950-06-05', '1990-02-04', 785.3, '13995456551', 1, 'NC', 1,1,null);
insert into professor values(4691, 'margareth.vieira@gmail.com',md5('123'), 'Margareth De Lima Rocha Vieira', 2, '1950-06-05', '1990-03-05', 179.5, '13995456552', 1, 'NC', 1,1,null);
insert into professor values(6592, 'valquíria.matos@gmail.com',md5('123'), 'Valquíria F. Rodrigues Dematos', 3, '1950-06-05', '1990-04-06', 276.7, '13995456553', 1, 'NC', 1,1,null);
insert into professor values(6798, 'elizabeth.oliveira@gmail.com',md5('123'), 'Elizabeth Lopes De Oliveira', 4, '1950-06-05', '1990-05-07', 385.6, '13995456554', 1, 'NC', 1,1,null);
insert into professor values(6639, 'maria.silva@gmail.com',md5('123'), 'Maria Valdinete Da Silva', 5, '1950-06-05', '1990-06-08', 495.4, '13995456555', 1, 'NC', 1,1,null);
insert into professor values(5065, 'sandra.menezes@gmail.com',md5('123'), 'Sandra Adelina Amorim De Menezes', 6, '1950-06-05', '1990-07-09', 642.0, '13995456556', 1, 'NC', 1,1,null);
insert into professor values(6735, 'telma.rocha@gmail.com',md5('123'), 'Telma Jacintho Da Rocha', 7, '1950-06-05', '1990-08-10', 356.7, '13995456557', 1, 'NC', 1,1,null);
insert into professor values(6636, 'elizabeth.barbosa@gmail.com',md5('123'), 'Elizabeth Da Silva Barbosa', 8, '1950-06-05', '1990-09-11', 120.4, '13995456558', 1, 'NC', 1,1,null);
insert into professor values(6694, 'roseli.menezes@gmail.com',md5('123'), 'Roseli Lopes Ribeiro Menezes', 9, '1950-06-05', '1990-10-12', 93.9, '13995456559', 2, 'NC', 1,1,null);
insert into professor values(6760, 'soraya.santos@gmail.com',md5('123'), 'Soraya Cristina Amado Venâncio Santos', 0, '1950-06-05', '1990-01-03',40.3, '13995456550', 1, 'NC', 1,1,null);
insert into professor values(5135, 'adinalda.santos@gmail.com',md5('123'), 'Adinalda De A. Silva Dos Santos', 1, '1950-06-05', '1990-02-04', 563.2, '13995456551', 1, 'NC', 1,1,null);
insert into professor values(5611, 'eunice.santos@gmail.com',md5('123'), 'Eunice Cristina Cruz Dos Santos', 2, '1950-06-05', '1990-03-05', 674.2, '13995456552', 1, 'NC', 1,1,null);
insert into professor values(5695, 'maria.silva@gmail.com',md5('123'), 'Maria Angélica Nunes R. Silva', 3, '1950-06-05', '1990-04-06', 67.3, '13995456553', 1, 'NC', 1,1,null);
insert into professor values(6899, 'conceição.antunes@gmail.com',md5('123'), 'Conceição Aparecida Antunes', 4, '1950-06-05', '1990-05-07', 1050.4, '13995456554', 1, 'NC', 1,1,null);
insert into professor values(6691, 'ieda.tinoco@gmail.com',md5('123'), 'Ieda Maria Barroso Tinoco', 5, '1950-06-05', '1990-06-08', 1034.7, '13995456555', 1, 'NC', 1,1,null);
insert into professor values(5143, 'neuza.costa@gmail.com',md5('123'), 'Neuza Maria Lima Da Costa', 6, '1950-06-05', '1990-07-09', 1145.8, '13995456556', 2, 'NC', 1,1,null);
insert into professor values(5685, 'sandra.antunes@gmail.com',md5('123'), 'Sandra Helena Bruno Antunes', 7, '1950-06-05', '1990-08-10', 45.8, '13995456557', 1, 'NC', 1,1,null);
insert into professor values(6468, 'maria.marçon@gmail.com',md5('123'), 'Maria Inez Marçon', 8, '1950-06-05', '1990-09-11', 71.2, '13995456558', 1, 'NC', 1,1,null);
insert into professor values(6904, 'rosemary.silva@gmail.com',md5('123'), 'Rosemary Pereira Da Silva', 9, '1950-06-05', '1990-10-12', 862.4, '13995456559', 1, 'NC', 1,1,null);
insert into professor values(5272, 'maria.silva@gmail.com',md5('123'), 'Maria Ester Alves Da Silva', 0, '1950-06-05', '1990-01-03', 23.7, '13995456550', 1, 'NC', 1,1,null);
insert into professor values(5421, 'sílvia.soares@gmail.com',md5('123'), 'Sílvia Helena Soares', 1, '1950-06-05', '1990-02-04', 664.3, '13995456551', 1, 'NC', 1,1,null);
insert into professor values(6035, 'aurelice.santos@gmail.com',md5('123'), 'Aurelice Lusia Gama Santos', 2, '1950-06-05', '1990-03-05', 292.3, '13995456552', 1, 'NC', 1,1,null);
insert into professor values(5820, 'gianne.costa@gmail.com',md5('123'), 'Gianne Luzia Costa', 3, '1950-06-05', '1990-04-06', 397.9, '13995456553', 1, 'NC', 1,1,null);
insert into professor values(6049, 'noeli.silva@gmail.com',md5('123'), 'Noeli Rodrigues Azevedo Da Silva', 4, '1950-06-05', '1990-05-07', 235.6, '13995456554', 1, 'NC', 1,1,null);
insert into professor values(6632, 'miris.pereira@gmail.com',md5('123'), 'Miris Leila Ferreira Pereira', 5, '1950-06-05', '1990-06-08', 146.7, '13995456555', 1, 'NC', 1,1,null);
insert into professor values(6386, 'maria.oliveira@gmail.com',md5('123'), 'Maria Da Penha B. De Oliveira', 6, '1950-06-05', '1990-07-09', 154.43, '13995456556', 1, 'NC', 1,1,null);
insert into professor values(7223, 'zaíra.santos@gmail.com',md5('123'), 'Zaíra Cruz Dos Santos', 7, '1950-06-05', '1990-08-10', 34.2, '13995456557', 2, 'NC', 1,1,null);
insert into professor values(6532, 'mariliz.bailão@gmail.com',md5('123'), 'Mariliz Monteiro Da Cruz Bailão', 8, '1950-06-05', '1990-09-11', 59.2, '13995456558', 1, 'NC', 1,1,null);
insert into professor values(6688, 'maria.oliveira@gmail.com',md5('123'), 'Maria Da Conceição B. De Oliveira', 9, '1950-06-05', '1990-10-12', 93.6, '13995456558', 1, 'NC', 1,1,null);
INSERT INTO professor VALUES (6455, 'denize.nascimento@gmail.com', md5('123'), 'Denize Borges do Nascimento', 0, '1950-06-05', '1990-01-03', 12.5, '13995456550', 1, 'NC', 1, 1,null);
INSERT INTO professor VALUES (7372, 'maria.otero@gmail.com', md5('123'), 'Maria Helena Perez Otero', 1, '1950-06-05', '1990-02-04', 34.7, '13995456551', 1, 'NC', 1, 1,null);
INSERT INTO professor VALUES (7224, 'elizete.soares@gmail.com', md5('123'), 'Elizete dos Santos Soares', 2, '1950-06-05', '1990-03-05', 17.8, '13995456552', 1, 'NC', 1, 1,null);
INSERT INTO professor VALUES (7138, 'iara.costa@gmail.com', md5('123'), 'Iara Cardoso dos S. Costa', 3, '1950-06-05', '1990-04-06', 26.7, '13995456553', 1, 'NC', 1, 1,null);
INSERT INTO professor VALUES (7137, 'sandra.mendes@gmail.com', md5('123'), 'Sandra Aparecida Ascoli Mendes', 4, '1950-06-05', '1990-05-07', 35.6, '13995456554', 1, 'NC', 1, 1,null);
INSERT INTO professor VALUES (7183, 'rosemary.ferreira@gmail.com', md5('123'), 'Rosemary Gomes Ferreira', 5, '1950-06-05', '1990-06-08', 44.5, '13995456555', 1, 'NC', 1, 1,null);
INSERT INTO professor VALUES (5112, 'myrian.salgado@gmail.com', md5('123'), 'Myrian Freitas Sauda F. Salgado', 6, '1950-06-05', '1990-07-09', 53.4, '13995456556', 1, 'NC', 1, 1,null);
INSERT INTO professor VALUES (6075, 'lucimar.nascimento@gmail.com', md5('123'), 'Lucimar Oliveira do Nascimento', 7, '1950-06-05', '1990-08-10', 62.3, '13995456557', 1, 'NC', 1, 1,null);
INSERT INTO professor VALUES (7444, 'edna.costa@gmail.com', md5('123'), 'Edna da Silva Costa', 8, '1950-06-05', '1990-09-11', 71.2, '13995456558', 1, 'NC', 1, 1,null);
INSERT INTO professor VALUES (7260, 'maria.barros@gmail.com', md5('123'), 'Maria Auxiliadora Dematos Barros', 9, '1950-06-05', '1990-10-12', 80.1, '13995456559', 1, 'NC', 1, 1,null);
INSERT INTO professor VALUES (7293, 'claudia.moraes@gmail.com', md5('123'), 'Cláudia Mara da Silva Moraes', 0, '1950-06-05', '1990-01-03', 37.77, '13995456550', 1, 'NC', 1, 1,null);
INSERT INTO professor VALUES (6610, 'alice.silva@gmail.com', md5('123'), 'Alice Sabino da Silva', 1, '1950-06-05', '1990-02-04', 9.2, '13995456551', 2, 'NC', 1, 1,null);
INSERT INTO professor VALUES (5664, 'sonia.lopes@gmail.com', md5('123'), 'Sônia Alencar de Caldas Lopes', 2, '1950-06-05', '1990-03-05', 17.8, '13995456552', 1, 'NC', 1, 1,null);
INSERT INTO professor VALUES (3239, 'edna.santana@gmail.com', md5('123'), 'Edna Piccirillo Santana', 3, '1950-06-05', '1990-04-06', 26.7, '13995456553', 1, 'NC', 1, 1,null);
INSERT INTO professor VALUES (5663, 'solange.santos@gmail.com', md5('123'), 'Solange dos Santos', 4, '1950-06-05', '1990-05-07', 35.6, '13995456554', 2, 'NC', 1, 1,null);
INSERT INTO professor VALUES (6853, 'rosana.felippelli@gmail.com', md5('123'), 'Rosana Magoga da S. Felippelli', 5, '1950-06-05', '1990-06-08', 44.5, '13995456555', 1, 'NC', 1, 1,null);
INSERT INTO professor VALUES (6577, 'rosely.macedo@gmail.com', md5('123'), 'Rosely Alves da Cruz Macedo', 6, '1950-06-05', '1990-07-09', 53.4, '13995456556', 1, 'NC', 1, 1,null);
INSERT INTO professor VALUES (7325, 'flavia.paulo@gmail.com', md5('123'), 'Flávia Aparecida de Paulo', 7, '1950-06-05', '1990-08-10', 62.3, '13995456557', 1, 'NC', 1, 1,null);
INSERT INTO professor VALUES (6854, 'adelia.salvador@gmail.com', md5('123'), 'Adélia Conceição Salvador', 8, '1950-06-05', '1990-09-11', 71.2, '13995456558', 1, 'NC', 1, 1,null);
INSERT INTO professor VALUES (6934, 'rosi.viana@gmail.com', md5('123'), 'Rosi Mari da S. Costa Viana', 9, '1950-06-05', '1990-10-12', 80.1, '13995456559', 1, 'NC', 1, 1,null);
INSERT INTO professor VALUES (7364, 'maria.oliveira@gmail.com', md5('123'), 'Maria Aparecida Andrade de Oliveira', 0, '1950-06-05', '1990-01-03', 88.99, '13995456550', 1, 'NC', 1, 1,null);
INSERT INTO professor VALUES (7387, 'maria.venceslau@gmail.com', md5('123'), 'Maria das Graças Silva Venceslau', 1, '1950-06-05', '1990-02-04', 98.00, '13995456551', 1, 'NC', 1, 1,null);
INSERT INTO professor VALUES (6041, 'maria.nascimento@gmail.com', md5('123'), 'Maria Angélica dos R. Nascimento', 2, '1950-06-05', '1990-03-05', 17.8, '13995456552', 1, 'NC', 1, 1,null);
INSERT INTO professor VALUES (7399, 'sandra.ribeiro@gmail.com', md5('123'), 'Sandra Aparecida Bueno Ribeiro', 3, '1950-06-05', '1990-04-06', 26.7, '13995456553', 1, 'NC', 1, 1,null);
INSERT INTO professor VALUES (7412, 'lucineia.panta@gmail.com', md5('123'), 'Lucinéia dos Santos Panta', 4, '1950-06-05', '1990-05-07', 35.6, '13995456554', 1, 'NC', 1, 1,null);
INSERT INTO professor VALUES (6931, 'rita.pincella@gmail.com', md5('123'), 'Rita de Cássia Aló F. Pincella', 5, '1950-06-05', '1990-06-08', 44.5, '13995456555', 1, 'NC', 1, 1,null);
INSERT INTO professor VALUES (6026, 'marilucia.romor@gmail.com', md5('123'), 'Marilúcia Nunes Romor', 6, '1950-06-05', '1990-07-09', 53.4, '13995456556', 1, 'NC', 1, 1,null);
INSERT INTO professor VALUES (4848, 'yeda.galindo@gmail.com', md5('123'), 'Yeda Yara de Almeida Galindo', 7, '1950-06-05', '1990-08-10', 62.3, '13995456557', 1, 'NC', 1, 1,null);
INSERT INTO professor VALUES (7426, 'veralucia.cabral@gmail.com', md5('123'), 'Veralúcia dos S. Araújo Cabral', 8, '1950-06-05', '1990-09-11', 71.2, '13995456558', 1, 'NC', 1, 1,null);
INSERT INTO professor VALUES (6682, 'maria.correia@gmail.com', md5('123'), 'Maria Ozélia Ferreira Correia', 9, '1950-06-05', '1990-10-12', 80.1, '13995456559', 1, 'NC', 1, 1,null);
INSERT INTO professor VALUES (7457, 'luciana.nova@gmail.com', md5('123'), 'Luciana Vila Nova', 0, '1950-06-05', '1990-01-03', 53.21, '13995456550', 2, 'NC', 1, 1,null);
INSERT INTO professor VALUES (7773, 'marileide.silva@gmail.com', md5('123'), 'Marileide Gomes da Silva', 1, '1950-06-05', '1990-02-04', 99.0, '13995456551', 1, 'NC', 1, 1,null);
INSERT INTO professor VALUES (7825, 'leila.oliveira@gmail.com', md5('123'), 'Leila Aparecida da Silva Oliveira', 3, '1950-06-05', '1990-04-06', 26.7, '13995456553', 1, 'NC', 1, 1,null);
INSERT INTO professor VALUES (7323, 'silvia.cardoso@gmail.com', md5('123'), 'Sílvia Cardoso', 4, '1950-06-05', '1990-05-07', 35.6, '13995456554', 1, 'NC', 1, 1,null);
INSERT INTO professor VALUES (7133, 'aglair.tellarolli@gmail.com', md5('123'), 'Aglair Queiroga T. Tellarolli', 5, '1950-06-05', '1990-06-08', 44.5, '13995456555', 1, 'NC', 1, 1,null);
INSERT INTO professor VALUES (7160, 'edneuza.oliveira@gmail.com', md5('123'), 'Edneuza dos Santos Oliveira', 6, '1950-06-05', '1990-07-09', 53.4, '13995456556', 1, 'NC', 1, 1,null);
insert into professor values(7294,'josefa.santos@gmail.com',md5('123'),'Josefa Jarinalva dos Santos',7,'1950-06-05','1990-08-10',62.3,'13995456557',1,'NC',1,1,null);
insert into professor values(7225,'rosely.aguiar@gmail.com',md5('123'),'Rosely Silva Aguiar',8,'1950-06-05','1990-09-11',71.2,'13995456558',2,'NC',1,1,null);
insert into professor values(7933,'valderes.silva@gmail.com',md5('123'),'Valderes dos Santos Silva',9,'1950-06-05','1990-10-12',80.1,'13995456559',1,'NC',1,1,null);
insert into professor values(7687,'rosangela.oliveira@gmail.com',md5('123'),'Rosângela Melo T. Oliveira',0,'1950-06-05','1990-01-03',11.111,'13995456550',1,'NC',1,1,null);
insert into professor values(7179,'ivani.parise@gmail.com',md5('123'),'Ivani Parise',1,'1950-06-05','1990-02-04',66.9,'13995456551',1,'NC',1,1,null);
insert into professor values(7716,'simone.vasconcelos@gmail.com',md5('123'),'Simone Francisca de Vasconcelos',2,'1950-06-05','1990-03-05',17.8,'13995456552',1,'NC',1,1,null);
insert into professor values(7253,'naciete.oliveira@gmail.com',md5('123'),'Naciete Leite Lima de Oliveira',3,'1950-06-05','1990-04-06',26.7,'13995456553',1,'NC',1,1,null);
insert into professor values(7791,'denise.coelho@gmail.com',md5('123'),'Denise de Alcântara Coelho',4,'1950-06-05','1990-05-07',35.6,'13995456554',1,'NC',1,1,null);
insert into professor values(7845,'marcia.vieira@gmail.com',md5('123'),'Márcia Regina P. Pellegrini Vieira',5,'1950-06-05','1990-06-08',44.5,'13995456555',1,'NC',1,1,null);
insert into professor values(8447,'sonia.oliveira@gmail.com',md5('123'),'Sônia Aparecida de Oliveira',6,'1950-06-05','1990-07-09',53.4,'13995456556',1,'NC',1,1,null);
insert into professor values(7927,'maria.genuino@gmail.com',md5('123'),'Maria da Graça H. Machado Genuíno',7,'1950-06-05','1990-08-10',62.3,'13995456557',1,'NC',1,1,null);
insert into professor values(7377,'liceia.manzano@gmail.com',md5('123'),'Licéia Manzano',8,'1950-06-05','1990-09-11',71.2,'13995456558',2,'NC',1,1,null);
insert into professor values(7375,'eloa.santos@gmail.com',md5('123'),'Eloá Matilde R. M. dos Santos',9,'1950-06-05','1990-10-12',80.1,'13995456559',1,'NC',1,1,null);
insert into professor values(7924,'carmen.fonseca@gmail.com',md5('123'),'Carmen da Fonseca',0,'1950-06-05','1990-01-03',600,'13995456550',1,'NC',1,1,null);
insert into professor values(7151,'lucinete.david@gmail.com',md5('123'),'Lucinete da Silva David',1,'1950-06-05','1990-02-04',10.76,'13995456551',1,'NC',1,1,null);
insert into professor values(7371,'marcia.santos@gmail.com',md5('123'),'Márcia Maria dos Santos',2,'1950-06-05','1990-03-05',17.8,'13995456552',2,'NC',1,1,null);
insert into professor values(7403,'tania.marques@gmail.com',md5('123'),'Tânia Maria Camilo Marques',3,'1950-06-05','1990-04-06',26.7,'13995456553',1,'NC',1,1,null);
insert into professor values(7409,'solange.batista@gmail.com',md5('123'),'Solange Pinto de A. Batista',4,'1950-06-05','1990-05-07',35.6,'13995456554',1,'NC',1,1,null);
insert into professor values(7177,'maria.santos@gmail.com',md5('123'),'Maria José Lima Serra Santos',5,'1950-06-05','1990-06-08',44.5,'13995456555',2,'NC',1,1,null);
insert into professor values(8431,'gilcelia.santos@gmail.com',md5('123'),'Gilcélia Figueiredo Santos',6,'1950-06-05','1990-07-09',53.4,'13995456556',1,'NC',1,1,null);
insert into professor values(8346,'maria.nascimento@gmail.com',md5('123'),'Maria Fernanda da S. F. Nascimento',7,'1950-06-05','1990-08-10',62.3,'13995456557',1,'NC',1,1,null);
insert into professor values(8323,'rosineide.silva@gmail.com',md5('123'),'Rosineide Balbino da Silva',8,'1950-06-05','1990-09-11',71.2,'13995456558',1,'NC',1,1,null);
insert into professor values(7365,'sidneia.santos@gmail.com',md5('123'),'Sidnéia Moia dos Santos',9,'1950-06-05','1990-10-12',990,'13995456559',2,'NC',1,1,null);
insert into professor values(8300,'maria.cruz@gmail.com',md5('123'),'Maria Amélia de Souza Cruz',0,'1950-06-05','1990-01-03',76.99,'13995456550',1,'NC',1,1,null);
insert into professor values(7681,'eunice.salles@gmail.com',md5('123'),'Eunice Mendonça Salles',1,'1950-06-05','1990-02-04',45.67,'13995456551',1,'NC',1,1,null);
insert into professor values(8211,'ivanir.soares@gmail.com',md5('123'),'Ivanir Barbosa F. Soares',2,'1950-06-05','1990-03-05',17.8,'13995456552',1,'NC',1,1,null);
insert into professor values(8208,'maria.pereira@gmail.com',md5('123'),'Maria Dolores dos S. Pereira',3,'1950-06-05','1990-04-06',26.7,'13995456553',1,'NC',1,1,null);
insert into professor values(8335,'cibeli.nascimento@gmail.com',md5('123'),'Cibeli Souza do Nascimento',4,'1950-06-05','1990-05-07',35.6,'13995456554',1,'NC',1,1,null);
insert into professor values(8316,'regina.silva@gmail.com',md5('123'),'Regina Lúcia Ferreira da Silva',5,'1950-06-05','1990-06-08',44.5,'13995456555',1,'NC',1,1,null);
insert into professor values(7688,'ivonete.costa@gmail.com',md5('123'),'Ivonete Tenório Costa',6,'1950-06-05','1990-07-09',53.4,'13995456556',1,'NC',1,1,null);
insert into professor values(7686,'rosangela.soares@gmail.com',md5('123'),'Rosangela Barbosa Soares',7,'1950-06-05','1990-08-10',62.3,'13995456557',1,'NC',1,1,null);
insert into professor values(7711,'marcia.tanaka@gmail.com',md5('123'),'Márcia Akemi Tanaka',8,'1950-06-05','1990-09-11',71.2,'13995456558',1,'NC',1,1,null);
insert into professor values(7822,'denize.brito@gmail.com',md5('123'),'Denize de Brito',9,'1950-06-05','1990-10-12',80.1,'13995456559',1,'NC',1,1,null);
insert into professor values(8272,'dilma.souza@gmail.com',md5('123'),'Dilma Tereza Lemos Souza',0,'1950-06-05','1990-01-03',123,'13995456550',1,'NC',1,1,null);
insert into professor values(11059,'miria.lima@gmail.com',md5('123'),'Miria Barbosa de Lima',1,'1950-06-05','1990-02-04',321.9,'13995456551',1,'NC',1,1,null);
insert into professor values(7835,'vanilda.santos@gmail.com',md5('123'),'Vanilda Fernandes da Silva Santos',2,'1950-06-05','1990-03-05',17.8,'13995456552',1,'NC',1,1,null);
insert into professor values(8195,'carla.santos@gmail.com',md5('123'),'Carla Andréa Teixeira dos Santos',3,'1950-06-05','1990-04-06',26.7,'13995456553',1,'NC',1,1,null);
insert into professor values(6960,'cassia.alves@gmail.com',md5('123'),'Cássia Maria de Souza Alves',4,'1950-06-05','1990-05-07',35.6,'13995456554',1,'NC',1,1,null);
insert into professor values(8149,'ana.carreira@gmail.com',md5('123'),'Ana Paula Vasques S. Carreira',5,'1950-06-05','1990-06-08',44.5,'13995456555',1,'NC',1,1,null);
insert into professor values(8217,'bernadete.amancio@gmail.com',md5('123'),'Bernadete Lutzemberger Amâncio',6,'1950-06-05','1990-07-09',53.4,'13995456556',1,'NC',1,1,null);
insert into professor values(8268,'cleber.nunes@gmail.com',md5('123'),'Cléber Aurélio P. Manoel Nunes',7,'1950-06-05','1990-08-10',62.3,'13995456557',1,'NC',1,1,null);
insert into professor values(8193,'analucia.duart@gmail.com',md5('123'),'Analúcia Nunes Duart',8,'1950-06-05','1990-09-11',71.2,'13995456558',1,'NC',1,1,null);
insert into professor values(8205,'sheila.agria@gmail.com',md5('123'),'Sheila de Oliveira Agria',9,'1950-06-05','1990-10-12',80.1,'13995456559',1,'NC',1,1,null);
insert into professor values(8422,'claudete.moreira@gmail.com',md5('123'),'Claudete Emílio Moreira',0,'1950-06-05','1990-01-03',2.9,'13995456550',1,'NC',1,1,null);
insert into professor values(8332,'cathia.messina@gmail.com',md5('123'),'Cáthia Simone dos Santos Messina',1,'1950-06-05','1990-02-04',768.9,'13995456551',1,'NC',1,1,null);
insert into professor values(8315,'renata.santos@gmail.com',md5('123'),'Renata Conceição Silva Santos',2,'1950-06-05','1990-03-05',17.8,'13995456552',1,'NC',1,1,null);
insert into professor values(8339,'laura.santos@gmail.com',md5('123'),'Laura Maria de Oliveira R. Santos',3,'1950-06-05','1990-04-06',26.7,'13995456553',1,'NC',1,1,null);
insert into professor values(9612,'lydia.paul@gmail.com',md5('123'),'Lydia Kátya de França Paul',4,'1950-06-05','1990-05-07',35.6,'13995456554',1,'NC',1,1,null);
insert into professor values(8340,'katia.carvalhal@gmail.com',md5('123'),'Kátia Alves Carvalhal',5,'1950-06-05','1990-06-08',44.5,'13995456555',1,'NC',1,1,null);
insert into professor values(7970,'iara.cespedes@gmail.com',md5('123'),'Iara Adi Fernandes T. Céspedes',6,'1950-06-05','1990-07-09',53.4,'13995456556',1,'NC',1,1,null);
insert into professor values(8158,'maria.pinho@gmail.com',md5('123'),'Maria Cristina Calaça Pita P. Pinho',7,'1950-06-05','1990-08-10',62.3,'13995456557',1,'NC',1,1,null);
insert into professor values(8672,'maria.batista@gmail.com',md5('123'),'Maria Aparecida dos Santos Batista',8,'1950-06-05','1990-09-11',71.2,'13995456558',1,'NC',1,1,null);
insert into professor values(11058,'maria.oliveira@gmail.com',md5('123'),'Maria José Francisco de Oliveira',9,'1950-06-05','1990-10-12',80.1,'13995456559',1,'NC',1,1,null);
insert into professor values(8676,'sandra.noleto@gmail.com',md5('123'),'Sandra Regina dos Reis Nolêto',0,'1950-06-05','1990-01-03',998.00,'13995456550',1,'NC',1,1,null);
insert into professor values(8740,'celia.pinto@gmail.com',md5('123'),'Célia Anselmo de Souza Pinto',1,'1950-06-05','1990-02-04',83.9,'13995456551',1,'NC',1,1,null);
insert into professor values(7925,'lucidalva.santos@gmail.com',md5('123'),'Lucidalva Leite dos Santos',2,'1950-06-05','1990-03-05',17.8,'13995456552',1,'NC',1,1,null);
insert into professor values(8424,'damaris.magalhaes@gmail.com',md5('123'),'Damaris de Oliveira Magalhães',3,'1950-06-05','1990-04-06',26.7,'13995456553',1,'NC',1,1,null);
insert into professor values(13231,'solange.rolim@gmail.com',md5('123'),'Solange Flor de Oliveira Rolim',4,'1950-06-05','1990-05-07',35.6,'13995456554',1,'NC',1,1,null);
insert into professor values(7697,'luciane.louzada@gmail.com',md5('123'),'Luciane de Oliveira G. Louzada',5,'1950-06-05','1990-06-08',44.5,'13995456555',1,'NC',1,1,null);
insert into professor values(8974,'gilda.santos@gmail.com',md5('123'),'Gilda Maria Bressan dos Santos',6,'1950-06-05','1990-07-09',53.4,'13995456556',1,'NC',1,1,null);
insert into professor values(9687,'sumara.pereira@gmail.com',md5('123'),'Sumara Conceição S. Pereira',7,'1950-06-05','1990-08-10',62.3,'13995456557',1,'NC',1,1,null);
insert into professor values(8986,'denise.coelho@gmail.com',md5('123'),'Denise Luzirão Falcão Coelho',8,'1950-06-05','1990-09-11',71.2,'13995456558',1,'NC',1,1,null);
insert into professor values(7701,'carin.karklins@gmail.com',md5('123'),'Carin Browne Karklins',9,'1950-06-05','1990-10-12',80.1,'13995456559',1,'NC',1,1,null);
insert into professor values(11069,'solange.oliveira@gmail.com',md5('123'),'Solange Aparecida de Oliveira',0,'1950-06-05','1990-01-03',3.33,'13995456550',1,'NC',1,1,null);
insert into professor values(11046,'josefa.silva@gmail.com',md5('123'),'Josefa Clara do Carmo Silva',1,'1950-06-05','1990-02-04',8.67,'13995456551',1,'NC',1,1,null);
insert into professor values(8329,'vilma.silva@gmail.com',md5('123'),'Vilma Batista da Silva',2,'1950-06-05','1990-03-05',17.8,'13995456552',1,'NC',1,1,null);
insert into professor values(8436,'lucia.santos@gmail.com',md5('123'),'Lúcia Chagas dos Santos',3,'1950-06-05','1990-04-06',26.7,'13995456553',1,'NC',1,1,null);
insert into professor values(9546,'rosemary.oliveira@gmail.com',md5('123'),'Rosemary Vieira da Silva Oliveira',4,'1950-06-05','1990-05-07',35.6,'13995456554',1,'NC',1,1,null);
insert into professor values(9812,'debora.graca@gmail.com',md5('123'),'Débora Silva Correa da Graça',5,'1950-06-05','1990-06-08',44.5,'13995456555',1,'NC',1,1,null);
insert into professor values(8219,'jane.barroso@gmail.com',md5('123'),'Jane Aparecida Barroso',6,'1950-06-05','1990-07-09',53.4,'13995456556',1,'NC',1,1,null);
insert into professor values(8437,'mariza.luz@gmail.com',md5('123'),'Mariza Costa da Luz',7,'1950-06-05','1990-08-10',62.3,'13995456557',1,'NC',1,1,null);
insert into professor values(9658,'virginia.lisboa@gmail.com',md5('123'),'Virgínia Aparecida Santos de B. Lisboa',8,'1950-06-05','1990-09-11',71.2,'13995456558',1,'NC',1,1,null);
insert into professor values(8356,'valeria.silva@gmail.com',md5('123'),'Valéria Ap. E. do Nascimento Silva',9,'1950-06-05','1990-10-12',80.1,'13995456559',1,'NC',1,1,null);
insert into professor values(8353,'regina.nascimento@gmail.com',md5('123'),'Regina Conceição da C. Nascimento',0,'1950-06-05','1990-01-03',0.5,'13995456550',1,'NC',1,1,null);
insert into professor values(9953,'marinalva.silva@gmail.com',md5('123'),'Marinalva Francisco da Silva',1,'1950-06-05','1990-02-04',8.9,'13995456551',1,'NC',1,1,null);
insert into professor values(9908,'maria.ribeiro@gmail.com',md5('123'),'Maria Aparecida Alves Ribeiro',2,'1950-06-05','1990-03-05',17.8,'13995456552',1,'NC',1,1,null);
insert into professor values(9707,'sueli.santos@gmail.com',md5('123'),'Sueli Lopes dos Santos',3,'1950-06-05','1990-04-06',26.7,'13995456553',1,'NC',1,1,null);
insert into professor values(9637,'claudete.oliveira@gmail.com',md5('123'),'Claudete Francisca de Oliveira',4,'1950-06-05','1990-05-07',35.6,'13995456554',1,'NC',1,1,null);
insert into professor values(9520,'amalia.santos@gmail.com',md5('123'),'Amália Cardoso Fava F. dos Santos',5,'1950-06-05','1990-06-08',44.5,'13995456555',1,'NC',1,1,null);
insert into professor values(8267,'celia.correa@gmail.com',md5('123'),'Célia Maria dos Santos Corrêa',6,'1950-06-05','1990-07-09',53.4,'13995456556',1,'NC',1,1,null);
insert into professor values(6767,'maria.oliveira@gmail.com',md5('123'),'Maria Josélia Silva de Oliveira',7,'1950-06-05','1990-08-10',62.3,'13995456557',1,'NC',1,1,null);
insert into professor values(8259,'arlene.amaral@gmail.com',md5('123'),'Arlene Aparecida Amaral',8,'1950-06-05','1990-09-11',71.2,'13995456558',1,'NC',1,1,null);
insert into professor values(9863,'ana.silva@gmail.com',md5('123'),'Ana Maria de Oliveira da Silva',9,'1950-06-05','1990-10-12',80.1,'13995456559',1,'NC',1,1,null);
insert into professor values(9639,'eloise.granieri@gmail.com',md5('123'),'Eloise Cristina Granieri',0,'1950-06-05','1990-01-03',1.2,'13995456550',1,'NC',1,1,null);
insert into professor values(9641,'zenaide.santos@gmail.com',md5('123'),'Zenaide da S. Nascimento Santos',1,'1950-06-05','1990-02-04',89.9,'13995456551',1,'NC',1,1,null);
insert into professor values(9768,'elizete.pundrich@gmail.com',md5('123'),'Elizete Alves Faustino Pundrich',2,'1950-06-05','1990-03-05',17.8,'13995456552',1,'NC',1,1,null);
insert into professor values(10260,'ana.brito@gmail.com',md5('123'),'Ana Maria Brito',3,'1950-06-05','1990-04-06',26.7,'13995456553',1,'NC',1,1,null);
insert into professor values(9816,'claudia.paz@gmail.com',md5('123'),'Cláudia Mara L. do Nascimento Paz',4,'1950-06-05','1990-05-07',35.6,'13995456554',1,'NC',1,1,null);
insert into professor values(11062,'rosemary.paixao@gmail.com',md5('123'),'Rosemary Miranda da Paixão',5,'1950-06-05','1990-06-08',44.5,'13995456555',1,'NC',1,1,null);
insert into professor values(9636,'candida.dias@gmail.com',md5('123'),'Cândida de A. Rodriguesdias',6,'1950-06-05','1990-07-09',53.4,'13995456556',1,'NC',1,1,null);
insert into professor values(8130,'jivelda.cruz@gmail.com',md5('123'),'Jivelda Correia da Cruz',8,'1950-06-05','1990-09-11',71.2,'13995456558',1,'NC',1,1,null);
insert into professor values(11049,'maria.altino@gmail.com',md5('123'),'Maria do Carmo Altino',9,'1950-06-05','1990-10-12',80.1,'13995456559',1,'NC',1,1,null);
insert into professor values(8354,'rosinalva.silva@gmail.com',md5('123'),'Rosinalva de Lourdes da Silva',0,'1950-06-05','1990-01-03',678.4,'13995456550',1,'NC',1,1,null);
insert into professor values(9794,'maria.ramos@gmail.com',md5('123'),'Maria Aparecida Ramos',1,'1950-06-05','1990-02-04',24.4,'13995456551',1,'NC',1,1,null);
insert into professor values(12534,'rosana.abreu@gmail.com',md5('123'),'Rosana Albano dos S. Abreu',2,'1950-06-05','1990-03-05',17.8,'13995456552',1,'NC',1,1,null);
insert into professor values(10261,'anna.gaffo@gmail.com',md5('123'),'Anna Cláudia Gaffo',3,'1950-06-05','1990-04-06',26.7,'13995456553',1,'NC',1,1,null);
insert into professor values(10316,'isabel.mello@gmail.com',md5('123'),'Isabel Vieira de Mello',4,'1950-06-05','1990-05-07',35.6,'13995456554',1,'NC',1,1,null);
insert into professor values(10285,'raquel.lourido@gmail.com',md5('123'),'Raquel de Góes M. Lourido',5,'1950-06-05','1990-06-08',44.5,'13995456555',1,'NC',1,1,null);
insert into professor values(11052,'maria.santos@gmail.com',md5('123'),'Maria Inês dos Santos',6,'1950-06-05','1990-07-09',53.4,'13995456556',1,'NC',1,1,null);
insert into professor values(9432,'rosana.amorim@gmail.com',md5('123'),'Rosana Maria Amorim',7,'1950-06-05','1990-08-10',62.3,'13995456557',1,'NC',1,1,null);
insert into professor values(9675,'maria.mendonca@gmail.com',md5('123'),'Maria José Souza de Mendonça',8,'1950-06-05','1990-09-11',71.2,'13995456558',1,'NC',1,1,null);
insert into professor values(10264,'debora.saraiva@gmail.com',md5('123'),'Débora Clementino Saraiva',9,'1950-06-05','1990-10-12',80.1,'13995456559',1,'NC',1,1,null);
insert into professor values(10270,'maria.oliveira@gmail.com',md5('123'),'Maria de Fátima da Silva Oliveira',0,'1950-06-05','1990-01-03',0,'13995456550',1,'NC',1,1,null);
insert into professor values(10299,'ana.farias@gmail.com',md5('123'),'Ana Lúcia Othoni Farias',1,'1950-06-05','1990-02-04',4.44,'13995456551',1,'NC',1,1,null);
insert into professor values(9642,'iraci.goncalves@gmail.com',md5('123'),'Iraci Inácio Gonçalves',2,'1950-06-05','1990-03-05',17.8,'13995456552',1,'NC',1,1,null);
insert into professor values(11445,'regina.lima@gmail.com',md5('123'),'Regina Marta de Lima',3,'1950-06-05','1990-04-06',26.7,'13995456553',1,'NC',1,1,null);
insert into professor values(10396,'silmara.marques@gmail.com',md5('123'),'Silmara Marques',4,'1950-06-05','1990-05-07',35.6,'13995456554',1,'NC',1,1,null);
insert into professor values(9423,'debora.silva@gmail.com',md5('123'),'Débora Ataíde Brasil da Silva',5,'1950-06-05','1990-06-08',44.5,'13995456555',1,'NC',1,1,null);
insert into professor values(9791,'edna.morais@gmail.com',md5('123'),'Edna Aparecida Santos de Morais',6,'1950-06-05','1990-07-09',53.4,'13995456556',1,'NC',1,1,null);
insert into professor values(10310,'maria.carmo@gmail.com',md5('123'),'Maria Cristina da Cal do Carmo',7,'1950-06-05','1990-08-10',62.3,'13995456557',1,'NC',1,1,null);
insert into professor values(10282,'isabel.pereira@gmail.com',md5('123'),'Isabel Cristina Mata Pereira',8,'1950-06-05','1990-09-11',71.2,'13995456558',1,'NC',1,1,null);
insert into professor values(9782,'matilde.ramos@gmail.com',md5('123'),'Matilde Silva de Oliveira Ramos',9,'1950-06-05','1990-10-12',80.1,'13995456559',1,'NC',1,1,null);
insert into professor values(10300,'maria.ferreira@gmail.com',md5('123'),'Maria do Carmo F. Santos Ferreira',0,'1950-06-05','1990-01-03',35.7,'13995456550',1,'NC',1,1,null);
insert into professor values(9433,'solange.silva@gmail.com',md5('123'),'Solange Rua da Silva',1,'1950-06-05','1990-02-04',98.9,'13995456551',1,'NC',1,1,null);
insert into professor values(10337,'marcia.odorico@gmail.com',md5('123'),'Márcia Lourenço Odorico',2,'1950-06-05','1990-03-05',17.8,'13995456552',1,'NC',1,1,null);
insert into professor values(9986,'fatima.reis@gmail.com',md5('123'),'Fátima Carvalho Reis',3,'1950-06-05','1990-04-06',26.7,'13995456553',1,'NC',1,1,null);
insert into professor values(11067,'sandra.siqueira@gmail.com',md5('123'),'Sandra Franco Silveira Siqueira',4,'1950-06-05','1990-05-07',35.6,'13995456554',1,'NC',1,1,null);
insert into professor values(10477,'selma.silva@gmail.com',md5('123'),'Selma Gabriel de Sá Silva',5,'1950-06-05','1990-06-08',44.5,'13995456555',1,'NC',1,1,null);
insert into professor values(10469,'marcia.castro@gmail.com',md5('123'),'Márcia Aparecida Mendonça de Castro',6,'1950-06-05','1990-07-09',53.4,'13995456556',1,'NC',1,1,null);
insert into professor values(11033,'antonia.lira@gmail.com',md5('123'),'Antônia Vanderli da Cunha Lira',7,'1950-06-05','1990-08-10',62.3,'13995456557',1,'NC',1,1,null);
insert into professor values(11044,'ivanete.santos@gmail.com',md5('123'),'Ivanete Rodrigues dos Santos',8,'1950-06-05','1990-09-11',71.2,'13995456558',1,'NC',1,1,null);
insert into professor values(10521,'edna.esteves@gmail.com',md5('123'),'Edna Henrique Esteves',9,'1950-06-05','1990-10-12',80.1,'13995456559',1,'NC',1,1,null);
insert into professor values(10502,'adriana.meyran@gmail.com',md5('123'),'Adriana Cristina Silva Meyran',0,'1950-06-05','1990-01-03',0,'13995456550',1,'NC',1,1,null);
insert into professor values(11063,'renata.matos@gmail.com',md5('123'),'Renata Martinez Rosa Dematos',1,'1950-06-05','1990-02-04',8.9,'13995456551',1,'NC',1,1,null);
insert into professor values(12131,'ruth.silva@gmail.com',md5('123'),'Ruth da Conceição Silva',2,'1950-06-05','1990-03-05',17.8,'13995456552',1,'NC',1,1,null);
insert into professor values(10589,'suraia.bitencourt@gmail.com',md5('123'),'Suraia de Bitencourt',3,'1950-06-05','1990-04-06',26.7,'13995456553',1,'NC',1,1,null);
insert into professor values(10584,'solange.trindade@gmail.com',md5('123'),'Solange da Silva Trindade',4,'1950-06-05','1990-05-07',35.6,'13995456554',1,'NC',1,1,null);
insert into professor values(8213,'silvia.oliveira@gmail.com',md5('123'),'Sílvia Regina Tarelho de Oliveira',5,'1950-06-05','1990-06-08',44.5,'13995456555',1,'NC',1,1,null);
insert into professor values(10283,'neide.santos@gmail.com',md5('123'),'Neide Aparecida Jorge dos Santos',6,'1950-06-05','1990-07-09',53.4,'13995456556',1,'NC',1,1,null);
insert into professor values(12109,'deborah.silva@gmail.com',md5('123'),'Deborah Perla Cavini da Silva',7,'1950-06-05','1990-08-10',62.3,'13995456557',1,'NC',1,1,null);
insert into professor values(11061,'terezinha.alves@gmail.com',md5('123'),'Terezinha Pereira da Silva Alves',8,'1950-06-05','1990-09-11',71.2,'13995456558',1,'NC',1,1,null);
insert into professor values(9503,'tania.tavares@gmail.com',md5('123'),'Tânia Mara Ascoli M. Tavares',9,'1950-06-05','1990-10-12',80.1,'13995456559',1,'NC',1,1,null);
insert into professor values(10508,'claudia.oliveira@gmail.com',md5('123'),'Cláudia Regina Santana de Oliveira',0,'1950-06-05','1990-01-03',123.45,'13995456550',1,'NC',1,1,null);
insert into professor values(10496,'ana.oliveira@gmail.com',md5('123'),'Ana Paula Borges de Oliveira',1,'1950-06-05','1990-02-04',54.12,'13995456551',1,'NC',1,1,null);
insert into professor values(10602,'debora.alves@gmail.com',md5('123'),'Débora da Conceição Alves',2,'1950-06-05','1990-03-05',17.8,'13995456552',1,'NC',1,1,null);
insert into professor values(10281,'elenice.martinez@gmail.com',md5('123'),'Elenice Martinez',3,'1950-06-05','1990-04-06',26.7,'13995456553',1,'NC',1,1,null);
insert into professor values(10544,'maria.tripoloni@gmail.com',md5('123'),'Maria Irene Romanos Tripoloni',4,'1950-06-05','1990-05-07',35.6,'13995456554',1,'NC',1,1,null);
insert into professor values(10572,'rosiane.ribeiro@gmail.com',md5('123'),'Rosiane dos Santos Caixeiro Ribeiro',5,'1950-06-05','1990-06-08',44.5,'13995456555',1,'NC',1,1,null);
insert into professor values(10555,'maria.silva@gmail.com',md5('123'),'Maria Cabral da Silva e Silva',6,'1950-06-05','1990-07-09',53.4,'13995456556',1,'NC',1,1,null);
insert into professor values(10573,'rita.oliveira@gmail.com',md5('123'),'Rita de Cássia de Oliveira',7,'1950-06-05','1990-08-10',62.3,'13995456557',1,'NC',1,1,null);
insert into professor values(11071,'shirley.jesus@gmail.com',md5('123'),'Shirley Vianna Morrone de Jesus',8,'1950-06-05','1990-09-11',71.2,'13995456558',1,'NC',1,1,null);
insert into professor values(10530,'flavia.waller@gmail.com',md5('123'),'Flávia Radzvilavicius Waller',9,'1950-06-05','1990-10-12',80.1,'13995456559',1,'NC',1,1,null);
insert into professor values(10525,'eliane.viva@gmail.com',md5('123'),'Eliane Márcia Rodrigues Viva',0,'1950-06-05','1990-01-03',0,'13995456550',1,'NC',1,1,null);
insert into professor values(10297,'adriana.figueiredo@gmail.com',md5('123'),'Adriana Santana F. Figueiredo',1,'1950-06-05','1990-02-04',16.38,'13995456551',1,'NC',1,1,null);
insert into professor values(10519,'eleni.lira@gmail.com',md5('123'),'Eleni Soares de Lira',2,'1950-06-05','1990-03-05',17.8,'13995456552',1,'NC',1,1,null);
insert into professor values(10524,'eliane.apa@gmail.com',md5('123'),'Eliane Lima Apa',3,'1950-06-05','1990-04-06',26.7,'13995456553',1,'NC',1,1,null);
insert into professor values(10588,'sueli.luna@gmail.com',md5('123'),'Sueli Martins de Luna',4,'1950-06-05','1990-05-07',35.6,'13995456554',1,'NC',1,1,null);
insert into professor values(10548,'maria.marques@gmail.com',md5('123'),'Maria Lúcia de Oliveira Marques',5,'1950-06-05','1990-06-08',44.5,'13995456555',1,'NC',1,1,null);
insert into professor values(10546,'marcia.messina@gmail.com',md5('123'),'Márcia Regina Messina',6,'1950-06-05','1990-07-09',53.4,'13995456556',1,'NC',1,1,null);
insert into professor values(10556,'marinalva.fonseca@gmail.com',md5('123'),'Marinalva Correia da Fonseca',7,'1950-06-05','1990-08-10',62.3,'13995456557',1,'NC',1,1,null);
insert into professor values(10575,'sonia.abreu@gmail.com',md5('123'),'Sônia Regina Alves de Abreu',8,'1950-06-05','1990-09-11',71.2,'13995456558',1,'NC',1,1,null);
insert into professor values(10561,'monika.farias@gmail.com',md5('123'),'Mônika Pereira Farias',9,'1950-06-05','1990-10-12',80.1,'13995456559',1,'NC',1,1,null);
insert into professor values(10565,'rosangela.barreto@gmail.com',md5('123'),'Rosangela Moreira Lima Barreto',0,'1950-06-05','1990-01-03',748.37,'13995456550',1,'NC',1,1,null);
insert into professor values(10528,'elizabeth.araujo@gmail.com',md5('123'),'Elizabeth Sá de Araújo',1,'1950-06-05','1990-02-04',43.72,'13995456551',1,'NC',1,1,null);
insert into professor values(10595,'zita.velista@gmail.com',md5('123'),'Zita Leonor Barbosa Velista',2,'1950-06-05','1990-03-05',17.8,'13995456552',1,'NC',1,1,null);
insert into professor values(10580,'rosangela.silveira@gmail.com',md5('123'),'Rosângela Andrade da Silveira',3,'1950-06-05','1990-04-06',26.7,'13995456553',1,'NC',1,1,null);
insert into professor values(10542,'leila.hostins@gmail.com',md5('123'),'Leila Sâmia Tovar Hostins',5,'1950-06-05','1990-06-08',44.5,'13995456555',1,'NC',1,1,null);
insert into professor values(10174,'simone.costa@gmail.com',md5('123'),'Simone Vicente da Costa',6,'1950-06-05','1990-07-09',53.4,'13995456556',1,'NC',1,1,null);
insert into professor values(10516,'cristina.moya@gmail.com',md5('123'),'Cristina Silva de Andrade Moya',7,'1950-06-05','1990-08-10',62.3,'13995456557',1,'NC',1,1,null);
insert into professor values(10552,'maria.machado@gmail.com',md5('123'),'Maria Aparecida S. da Silva Machado',8,'1950-06-05','1990-09-11',71.2,'13995456558',1,'NC',1,1,null);
insert into professor values(10609,'nilza.santos@gmail.com',md5('123'),'Nilza das Mercês dos Santos',9,'1950-06-05','1990-10-12',80.1,'13995456559',1,'NC',1,1,null);

insert into professor values(3550,'elida.andrade@gmail.com',md5('123'),'Elida dos Santos Andrade',3,'1950-06-05','1990-04-06',26.7,'13995456553',1,'PORT',2,1,null);
insert into professor values(5150,'dinalva.lima@gmail.com',md5('123'),'Dinalva dos Santos Amaral de Lima',7,'1950-06-05','1990-08-10',62.3,'13995456557',1,'PORT',2,1,null);
insert into professor values(11102,'madalena.martins@gmail.com',md5('123'),'Madalena Lourdes A Martins',8,'1950-06-05','1990-09-11',71.2,'13995456558',4,'PORT',2,1,null);
insert into professor values(5176,'tania.mesquita@gmail.com',md5('123'),'Tania Maria de Andrade Mesquita',9,'1950-06-05','1990-10-12',80.1,'13995456559',1,'PORT',2,1,null);
insert into professor values(4584,'zelia.rodrigues@gmail.com',md5('123'),'Zelia Luzia Muniz Rodrigues',0,'1950-06-05','1990-01-03',0,'13995456550',4,'PORT',2,1,null);
insert into professor values(7464,'angela.santos@gmail.com',md5('123'),'Angela Gandolfa dos Santos',1,'1950-06-05','1990-02-04',8.9,'13995456551',1,'PORT',2,1,null);
insert into professor values(8047,'maria.fontes@gmail.com',md5('123'),'Maria Cristina de Oliveira Fontes',2,'1950-06-05','1990-03-05',17.8,'13995456552',1,'PORT',2,1,null);
insert into professor values(6430,'elizabeth.cordeiro@gmail.com',md5('123'),'Elizabeth Batista Cordeiro',3,'1950-06-05','1990-04-06',26.7,'13995456553',1,'PORT',2,1,null);
insert into professor values(6808,'joanice.baptista@gmail.com',md5('123'),'Joanice Goncalves S. Baptista',4,'1950-06-05','1990-05-07',35.6,'13995456554',1,'PORT',2,1,null);
insert into professor values(11018,'maria.cruz@gmail.com',md5('123'),'Maria Helena S. Aguiar M. Cruz',5,'1950-06-05','1990-06-08',44.5,'13995456555',1,'PORT',2,1,null);
insert into professor values(11015,'maria.vasconcelos@gmail.com',md5('123'),'Maria Aparecida de Vasconcelos',6,'1950-06-05','1990-07-09',53.4,'13995456556',1,'PORT',2,1,null);
insert into professor values(11014,'rita.gambero@gmail.com',md5('123'),'Rita de Cassia N. Gambero',7,'1950-06-05','1990-08-10',62.3,'13995456557',1,'PORT',2,1,null);
insert into professor values(4827,'suely.pitombeira@gmail.com',md5('123'),'Suely Araujo de P. Pitombeira',8,'1950-06-05','1990-09-11',71.2,'13995456558',4,'PORT',2,1,null);
insert into professor values(11100,'ana.santos@gmail.com',md5('123'),'Ana Maria dos Santos',9,'1950-06-05','1990-10-12',80.1,'13995456559',1,'PORT',2,1,null);
insert into professor values(11101,'maria.pereira@gmail.com',md5('123'),'Maria Sueli Teixeira Pereira',0,'1950-06-05','1990-01-03',3.5,'13995456550',1,'PORT',2,1,null);
insert into professor values(6032,'ana.silva@gmail.com',md5('123'),'Ana Celia Santos da Silva',1,'1950-06-05','1990-02-04',683.98,'13995456551',1,'PORT',2,1,null);
insert into professor values(8212,'ivanize.oliveira@gmail.com',md5('123'),'Ivanize Aparecida F. de Oliveira',2,'1950-06-05','1990-03-05',17.8,'13995456552',1,'PORT',2,1,null);
insert into professor values(3935,'luzia.norbiate@gmail.com',md5('123'),'Luzia Aparecida Norbiate',3,'1950-06-05','1990-04-06',26.7,'13995456553',4,'PORT',2,1,null);
insert into professor values(13275,'vera.corse@gmail.com',md5('123'),'Vera Lucia Goncalves F. Corse',4,'1950-06-05','1990-05-07',35.6,'13995456554',4,'PORT',2,1,null);
insert into professor values(13059,'ester.costa@gmail.com',md5('123'),'Ester Regina Costa',5,'1950-06-05','1990-06-08',44.5,'13995456555',1,'PORT',2,1,null);
insert into professor values(4772,'carolina.nunes@gmail.com',md5('123'),'Carolina Amelia Moreira P. Nunes',6,'1950-06-05','1990-07-09',53.4,'13995456556',1,'PORT',2,1,null);
insert into professor values(5021,'sara.dias@gmail.com',md5('123'),'Sara Correia da Cruz Dias',7,'1950-06-05','1990-08-10',62.3,'13995456557',2,'PORT',2,1,null);
insert into professor values(5273,'marileide.matos@gmail.com',md5('123'),'Marileide Ribeiro de Matos',8,'1950-06-05','1990-09-11',71.2,'13995456558',1,'PORT',2,1,null);
insert into professor values(9371,'eneida.silva@gmail.com',md5('123'),'Eneida da Silva',9,'1950-06-05','1990-10-12',80.1,'13995456559',2,'PORT',2,1,null);
insert into professor values(8337,'elaine.santos@gmail.com',md5('123'),'Elaine Cristina dos Santos',0,'1950-06-05','1990-01-03',98.34,'13995456550',1,'PORT',2,1,null);
insert into professor values(12121,'maria.santana@gmail.com',md5('123'),'Maria Aparecida de Abreu Santana',1,'1950-06-05','1990-02-04',88.9,'13995456551',4,'PORT',2,1,null);
insert into professor values(4218,'ivone.teixeira@gmail.com',md5('123'),'Ivone Mancio Teixeira',2,'1950-06-05','1990-03-05',17.8,'13995456552',2,'PORT',2,1,null);
insert into professor values(12917,'tania.mesquita@gmail.com',md5('123'),'Tania Mara Nascimento Mesquita',3,'1950-06-05','1990-04-06',26.7,'13995456553',1,'PORT',2,1,null);
insert into professor values(4537,'inez.cavalcanti@gmail.com',md5('123'),'Inez Medeiros Cavalcanti',4,'1950-06-05','1990-05-07',35.6,'13995456554',4,'PORT',2,1,null);
insert into professor values(12922,'yone.delgado@gmail.com',md5('123'),'Yone de Amorim Delgado',5,'1950-06-05','1990-06-08',44.5,'13995456555',1,'PORT',2,1,null);
insert into professor values(12914,'ilzanir.figueiredo@gmail.com',md5('123'),'Ilzanir Gomes da Cunha Figueiredo',6,'1950-06-05','1990-07-09',53.4,'13995456556',4,'PORT',2,1,null);
insert into professor values(13268,'maria.brito@gmail.com',md5('123'),'Maria das Dores Barros de Brito',7,'1950-06-05','1990-08-10',62.3,'13995456557',4,'PORT',2,1,null);
insert into professor values(14793,'alexandra.amorim@gmail.com',md5('123'),'Alexandra Alves Amorim',8,'1950-06-05','1990-09-11',71.2,'13995456558',1,'PORT',2,1,null);
insert into professor values(14813,'oscar.assunção@gmail.com',md5('123'),'Oscar Tadeu de Assunção',9,'1950-06-05','1990-10-12',80.1,'13995456559',2,'PORT',2,1,null);
insert into professor values(14796,'edna.souza@gmail.com',md5('123'),'Edna Maria Silva Souza',0,'1950-06-05','1990-01-03',11.22,'13995456550',1,'PORT',2,1,null);
insert into professor values(14816,'rosana.antoniette@gmail.com',md5('123'),'Rosana Dias Antoniette',1,'1950-06-05','1990-02-04',22.11,'13995456551',1,'PORT',2,1,null);

insert into professor values(16259,'marcos.silva@gmail.com',md5('123'),'Marcos Umbelino Silva',2,'1950-06-05','1990-03-05',17.8,'13995456552',2,'PORT',2,1,null);
insert into professor values(16250,'elaine.clemente@gmail.com',md5('123'),'Elaine Gonçalves Clemente',3,'1950-06-05','1990-04-06',26.7,'13995456553',2,'PORT',2,1,null);
insert into professor values(16258,'ronaldo.oliveira@gmail.com',md5('123'),'Ronaldo Nunes de Oliveira',4,'1950-06-05','1990-05-07',35.6,'13995456554',1,'PORT',2,1,null);
insert into professor values(16370,'heloisa.barreto@gmail.com',md5('123'),'Heloisa Cardoso Barreto',5,'1950-06-05','1990-06-08',44.5,'13995456555',1,'PORT',2,1,null);
insert into professor values(16750,'lidia.silva@gmail.com',md5('123'),'Lidia Maria da Silva',7,'1950-06-05','1990-08-10',62.3,'13995456557',1,'PORT',2,1,null);
insert into professor values(16728,'silvio.silva@gmail.com',md5('123'),'Silvio Rufino da Silva',8,'1950-06-05','1990-09-11',71.2,'13995456558',1,'PORT',2,1,null);
insert into professor values(16763,'marco.santos@gmail.com',md5('123'),'Marco Antonio dos Santos',9,'1950-06-05','1990-10-12',80.1,'13995456559',1,'PORT',2,1,null);
insert into professor values(17836,'patricia.portugal@gmail.com',md5('123'),'Patricia Azevedo Portugal',0,'1950-06-05','1990-01-03',42.42,'13995456550',1,'PORT',2,1,null);
insert into professor values(17921,'ineuriman.carolino@gmail.com',md5('123'),'Ineuriman Braz Carolino',1,'1950-06-05','1990-02-04',89.98,'13995456551',1,'PORT',2,1,null);
insert into professor values(17902,'carlos.souza@gmail.com',md5('123'),'Carlos Alberto Souza',2,'1950-06-05','1990-03-05',17.8,'13995456552',4,'PORT',2,1,null);
insert into professor values(18102,'diego.santos@gmail.com',md5('123'),'Diego Souza dos Santos',3,'1950-06-05','1990-04-06',26.7,'13995456553',1,'PORT',2,1,null);
insert into professor values(18244,'solange.anel@gmail.com',md5('123'),'Solange Alvarez Anel',4,'1950-06-05','1990-05-07',35.6,'13995456554',1,'PORT',2,1,null);
insert into professor values(19668,'maria.bernardo@gmail.com',md5('123'),'Maria Caldeira da S. Bernardo',5,'1950-06-05','1990-06-08',44.5,'13995456555',1,'PORT',2,1,null);
insert into professor values(19628,'giseli.stefani@gmail.com',md5('123'),'Giseli Viviane A. Stefani',6,'1950-06-05','1990-07-09',53.4,'13995456556',1,'PORT',2,1,null);
insert into professor values(19629,'maria.estevean@gmail.com',md5('123'),'Maria do Socorro P. M. Estevean',7,'1950-06-05','1990-08-10',62.3,'13995456557',1,'PORT',2,1,null);
insert into professor values(19669,'claudia.andrade@gmail.com',md5('123'),'Claudia Gonçalves de Andrade',8,'1950-06-05','1990-09-11',71.2,'13995456558',1,'PORT',2,1,null);
insert into professor values(19643,'rubia.silva@gmail.com',md5('123'),'Rubia Antonieta da Silva',9,'1950-06-05','1990-10-12',80.1,'13995456559',1,'PORT',2,1,null);
insert into professor values(20279,'orlando.sales@gmail.com',md5('123'),'Orlando Dias Sales',0,'1950-06-05','1990-01-03',0,'13995456550',1,'PORT',2,1,null);
insert into professor values(20267,'lilian.rosa@gmail.com',md5('123'),'Lilian Cristina Santos da S. Rosa',1,'1950-06-05','1990-02-04',7.8,'13995456551',1,'PORT',2,1,null);
insert into professor values(20284,'adriana.pinto@gmail.com',md5('123'),'Adriana Vita de Noronha Pinto',2,'1950-06-05','1990-03-05',17.8,'13995456552',1,'PORT',2,1,null);
insert into professor values(22955,'fernanda.fortes@gmail.com',md5('123'),'Fernanda Correa Fortes',3,'1950-06-05','1990-04-06',26.7,'13995456553',1,'PORT',2,1,null);
insert into professor values(22925,'camila.capps@gmail.com',md5('123'),'Camila Fernanda Loureiro Capps',4,'1950-06-05','1990-05-07',35.6,'13995456554',1,'PORT',2,1,null);
insert into professor values(22822,'giselle.silva@gmail.com',md5('123'),'Giselle Galotti Santana Silva',5,'1950-06-05','1990-06-08',44.5,'13995456555',1,'PORT',2,1,null);
insert into professor values(22819,'daniela.santos@gmail.com',md5('123'),'Daniela Mendonça Reis Santos',6,'1950-06-05','1990-07-09',53.4,'13995456556',1,'PORT',2,1,null);
insert into professor values(22820,'juliana.silva@gmail.com',md5('123'),'Juliana Gonçalves Lopes Silva',7,'1950-06-05','1990-08-10',62.3,'13995456557',1,'PORT',2,1,null);
insert into professor values(22821,'thiago.maia@gmail.com',md5('123'),'Thiago Pereira Maia',8,'1950-06-05','1990-09-11',71.2,'13995456558',1,'PORT',2,1,null);
insert into professor values(22818,'natasha.almeida@gmail.com',md5('123'),'Natasha C. S. Almeida',9,'1950-06-05','1990-10-12',80.1,'13995456559',1,'PORT',2,1,null);
insert into professor values(22924,'priscilla.santos@gmail.com',md5('123'),'Priscilla Victor S. Santos',0,'1950-06-05','1990-01-03',1,'13995456550',1,'PORT',2,1,null);
insert into professor values(22927,'fernanda.jordão@gmail.com',md5('123'),'Fernanda Trevisan K. Jordão',1,'1950-06-05','1990-02-04',9.10,'13995456551',1,'PORT',2,1,null);
insert into professor values(23013,'edgar.gonçalves@gmail.com',md5('123'),'Edgar da Silva Gonçalves',2,'1950-06-05','1990-03-05',17.8,'13995456552',1,'PORT',2,1,null);
insert into professor values(23026,'anderson.vieira@gmail.com',md5('123'),'Anderson Chioro Vieira',3,'1950-06-05','1990-04-06',26.7,'13995456553',1,'PORT',2,1,null);
insert into professor values(23059,'simone.marcondes@gmail.com',md5('123'),'Simone Pereira de Souza Marcondes',4,'1950-06-05','1990-05-07',35.6,'13995456554',1,'PORT',2,1,null);

insert into professor values(77,'evilane.temporário@gmail.com',md5('123'),'Evilane Pereira Vieira Monteiro',5,'1950-06-05','1990-06-08',44.5,'13995456555',1,'PORT',2,1,null);
insert into professor values(78,'joao.temporário@gmail.com',md5('123'),'João Aparecido Bento',6,'1950-06-05','1990-07-09',53.4,'13995456556',2,'PORT',2,1,null);
insert into professor values(85,'eliane.temporário@gmail.com',md5('123'),'Eliane Demétrio da França',7,'1950-06-05','1990-08-10',62.3,'13995456557',1,'PORT',2,1,null);
insert into professor values(86,'juliana.temporário@gmail.com',md5('123'),'Juliana Silveira da Silva Santos',8,'1950-06-05','1990-09-11',71.2,'13995456558',1,'PORT',2,1,null);
insert into professor values(90,'eloisa.temporário@gmail.com',md5('123'),'Eloisa de Fátima dos Santos',9,'1950-06-05','1990-10-12',80.1,'13995456559',2,'PORT',2,1,null);
insert into professor values(23259,'vanessa.lopes@gmail.com',md5('123'),'Vanessa Almeida dos Santos Lopes',0,'1950-06-05','1990-01-03',9,'13995456550',1,'PORT',2,1,null);
insert into professor values(6602,'mauro.vale@gmail.com',md5('123'),'Mauro da Cruz Vale',6,'1950-06-05','1990-07-09',53.4,'13995456556',1,'ING',2,1,null);
insert into professor values(11435,'elida.costa@gmail.com',md5('123'),'Elida Santos Amarilla Costa',7,'1950-06-05','1990-08-10',62.3,'13995456557',4,'ING',2,1,null);
insert into professor values(11009,'wagner.freitas@gmail.com',md5('123'),'Wagner Amparo de Freitas',8,'1950-06-05','1990-09-11',71.2,'13995456558',1,'ING',2,1,null);
insert into professor values(8233,'ilza.domingues@gmail.com',md5('123'),'Ilza Benedita Domingues',9,'1950-06-05','1990-10-12',80.1,'13995456559',1,'ING',2,1,null);
insert into professor values(8312,'neide.souza@gmail.com',md5('123'),'Neide Aparecida B. de Souza',0,'1950-06-05','1990-01-03',67.9,'13995456550',1,'ING',2,1,null);
insert into professor values(11056,'suzete.siqueira@gmail.com',md5('123'),'Suzete Gonçalves de Oliveira Siqueira',1,'1950-06-05','1990-02-04',98.88,'13995456551',4,'ING',2,1,null);
insert into professor values(11451,'claudia.brito@gmail.com',md5('123'),'Claudia Ferreira de Brito',2,'1950-06-05','1990-03-05',17.8,'13995456552',1,'ING',2,1,null);
insert into professor values(10610,'patricia.figlioli@gmail.com',md5('123'),'Patricia Aparecida M. Figlioli',3,'1950-06-05','1990-04-06',26.7,'13995456553',4,'ING',2,1,null);
insert into professor values(11447,'marcia.goncalves@gmail.com',md5('123'),'Marcia Aparecida Gonçalves',4,'1950-06-05','1990-05-07',35.6,'13995456554',1,'ING',2,1,null);
insert into professor values(12055,'joelma.celestino@gmail.com',md5('123'),'Joelma Andrade Celestino',5,'1950-06-05','1990-06-08',44.5,'13995456555',1,'ING',2,1,null);
insert into professor values(12938,'ivna.pedrão@gmail.com',md5('123'),'Ivnadigo Pedrão',6,'1950-06-05','1990-07-09',53.4,'13995456556',1,'ING',2,1,null);
insert into professor values(12931,'renata.gonçalves@gmail.com',md5('123'),'Renata Alves Gonçalves',7,'1950-06-05','1990-08-10',62.3,'13995456557',1,'ING',2,1,null);
insert into professor values(12921,'celia.jacinto@gmail.com',md5('123'),'Celia Conceição Jacinto',8,'1950-06-05','1990-09-11',71.2,'13995456558',1,'ING',2,1,null);
insert into professor values(13069,'luciane.arcon@gmail.com',md5('123'),'Luciane Pirani Arcon',0,'1950-06-05','1990-01-03',67.87,'13995456550',1,'ING',2,1,null);
insert into professor values(13271,'luana.martins@gmail.com',md5('123'),'Luana Mertinat Martins',1,'1950-06-05','1990-02-04',80.9,'13995456551',1,'ING',2,1,null);
insert into professor values(14801,'kelly.goes@gmail.com',md5('123'),'Kelly Gomes de Goes',2,'1950-06-05','1990-03-05',17.8,'13995456552',1,'ING',2,1,null);
insert into professor values(22950,'tiago.alves@gmail.com',md5('123'),'Tiago Fabrício de Souza Alves',3,'1950-06-05','1990-04-06',26.7,'13995456553',1,'ING',2,1,null);
insert into professor values(22805,'nicolle.casanova@gmail.com',md5('123'),'Nicolle de Brito Conceição Casanova',4,'1950-06-05','1990-05-07',35.6,'13995456554',1,'ING',2,1,null);
insert into professor values(22807,'adriana.esteves@gmail.com',md5('123'),'Adriana Conceição Tomas Esteves',5,'1950-06-05','1990-06-08',44.5,'13995456555',1,'ING',2,1,null);
insert into professor values(22926,'maria.silva@gmail.com',md5('123'),'Maria Jaqueline da Silva',6,'1950-06-05','1990-07-09',53.4,'13995456556',1,'ING',2,1,null);
insert into professor values(22806,'viviana.santos@gmail.com',md5('123'),'Viviana Zambelli Lino dos Santos',7,'1950-06-05','1990-08-10',62.3,'13995456557',1,'ING',2,1,null);
insert into professor values(23081,'fabio.martinez@gmail.com',md5('123'),'Fabio da Silva Martinez',8,'1950-06-05','1990-09-11',71.2,'13995456558',1,'ING',2,1,null);
insert into professor values(23255,'annemarie.lima@gmail.com',md5('123'),'Annemarie de Moraes Heltai Lima',9,'1950-06-05','1990-10-12',80.1,'13995456559',1,'ING',2,1,null);
insert into professor values(1183,'carla.temporário@gmail.com',md5('123'),'Carla Maria Farias de Almeida',0,'1950-06-05','1990-01-03',100,'13995456550',1,'ING',2,1,null);
insert into professor values(22,'marlon.temporário@gmail.com',md5('123'),'Marlon dos Santos Cruz',1,'1950-06-05','1990-02-04',80,'13995456551',1,'ING',2,1,null);
insert into professor values(23303,'tatiane.paschoal@gmail.com',md5('123'),'Tatiane Souza Paschoal',2,'1950-06-05','1990-03-05',17.8,'13995456552',1,'ING',2,1,null);
insert into professor values(23304,'marcela.forganes@gmail.com',md5('123'),'Marcela Silva de Andrade Forganes',3,'1950-06-05','1990-04-06',26.7,'13995456553',1,'ING',2,1,null);
insert into professor values(5460,'monica.damasceno@gmail.com',md5('123'),'Monica de B. Damasceno',4,'1950-06-05','1990-05-07',35.6,'13995456554',1,'HIST',2,1,null);
insert into professor values(4704,'eliana.salgado@gmail.com',md5('123'),'Eliana Aparecida R. Salgado',5,'1950-06-05','1990-06-08',44.5,'13995456555',1,'HIST',2,1,null);
insert into professor values(6104,'maria.silva@gmail.com',md5('123'),'Maria dos Prazeres da Silva',6,'1950-06-05','1990-07-09',53.4,'13995456556',4,'HIST',2,1,null);
insert into professor values(6535,'simora.souza@gmail.com',md5('123'),'Simora Jorge de Souza',7,'1950-06-05','1990-08-10',62.3,'13995456557',1,'HIST',2,1,null);
insert into professor values(6119,'aparecida.lacerda@gmail.com',md5('123'),'Aparecida Gandolfa dos S. Lacerda',8,'1950-06-05','1990-09-11',71.2,'13995456558',1,'HIST',2,1,null);
insert into professor values(8903,'jeova.bezERRA@gmail.com',md5('123'),'Jeova Queiroz Bezerra',9,'1950-06-05','1990-10-12',80.1,'13995456559',1,'HIST',2,1,null);
insert into professor values(17362,'ana.souza@gmail.com',md5('123'),'Ana Lúcia Araújo de Souza',1,'1950-06-05','1990-02-04',90,'13995456551',1,'HIST',2,1,null);
insert into professor values(18054,'lidia.anjos@gmail.com',md5('123'),'Lidia Goes dos Anjos',2,'1950-06-05','1990-03-05',17.8,'13995456552',1,'HIST',2,1,null);
insert into professor values(10331,'manuel.neto@gmail.com',md5('123'),'Manuel Pereira Soares Neto',3,'1950-06-05','1990-04-06',26.7,'13995456553',4,'HIST',2,1,null);
insert into professor values(11005,'irene.ramos@gmail.com',md5('123'),'Irene Ramos',4,'1950-06-05','1990-05-07',35.6,'13995456554',1,'HIST',2,1,null);
insert into professor values(11485,'marilandi.tavani@gmail.com',md5('123'),'Marilandi Tavani',5,'1950-06-05','1990-06-08',44.5,'13995456555',1,'HIST',2,1,null);
insert into professor values(7110,'selma.souza@gmail.com',md5('123'),'Selma de Oliveira R. Souza',6,'1950-06-05','1990-07-09',53.4,'13995456556',1,'HIST',2,1,null);
insert into professor values(5064,'nina.diniz@gmail.com',md5('123'),'Nina Fátima Mendes Dias Diniz',7,'1950-06-05','1990-08-10',62.3,'13995456557',1,'HIST',2,1,null);
insert into professor values(5692,'francisco.freitas@gmail.com',md5('123'),'Francisca Marques de Freitas',8,'1950-06-05','1990-09-11',71.2,'13995456558',1,'HIST',2,1,null);
insert into professor values(8289,'jose.oliveira@gmail.com',md5('123'),'José Carlos de Oliveira',9,'1950-06-05','1990-10-12',80.1,'13995456559',1,'HIST',2,1,null);
insert into professor values(12442,'danilo.moraes@gmail.com',md5('123'),'Danilo de Moraes',0,'1950-06-05','1990-01-03',9.90,'13995456550',1,'HIST',2,1,null);
insert into professor values(8178,'rosemeire.zacariotti@gmail.com',md5('123'),'Rosemeire de Cassia Zacariotti',1,'1950-06-05','1990-02-04',45.9,'13995456551',1,'HIST',2,1,null);
insert into professor values(11505,'jaime.freire@gmail.com',md5('123'),'Jaime Bastos Freire',2,'1950-06-05','1990-03-05',17.8,'13995456552',1,'HIST',2,1,null);
insert into professor values(12883,'eloisa.gracia@gmail.com',md5('123'),'Eloisa Flora Gracia',3,'1950-06-05','1990-04-06',26.7,'13995456553',1,'HIST',2,1,null);
insert into professor values(12916,'zoel.siqueira@gmail.com',md5('123'),'Zoel Garcia Siqueira',4,'1950-06-05','1990-05-07',35.6,'13995456554',1,'HIST',2,1,null);
insert into professor values(12919,'sergio.cardoso@gmail.com',md5('123'),'Sergio Monteiro Cardoso',5,'1950-06-05','1990-06-08',44.5,'13995456555',1,'HIST',2,1,null);
insert into professor values(12940,'carla.matos@gmail.com',md5('123'),'Carla Vanessa de O. Matos',6,'1950-06-05','1990-07-09',53.4,'13995456556',1,'HIST',2,1,null);
insert into professor values(13119,'gildete.barreto@gmail.com',md5('123'),'Gildete Santana Barreto',8,'1950-06-05','1990-09-11',71.2,'13995456558',1,'HIST',2,1,null);
insert into professor values(13120,'inalda.silva@gmail.com',md5('123'),'Inalda Clarindo da Silva',9,'1950-06-05','1990-10-12',80.1,'13995456559',1,'HIST',2,1,null);
insert into professor values(12937,'andre.silva@gmail.com',md5('123'),'André Henrique da Silva',0,'1950-06-05','1990-01-03',0,'13995456550',1,'HIST',2,1,null);

insert into professor values(12939,'antonio.junior@gmail.com',md5('123'),'Antonio Rodrigues Junior',1,'1950-06-05','1990-02-04',8.9,'13995456551',1,'HIST',2,1,null);
insert into professor values(14809,'maria.silva@gmail.com',md5('123'),'Maria Nilda Santos Silva',3,'1950-06-05','1990-04-06',26.7,'13995456553',1,'HIST',2,1,null);
insert into professor values(16371,'paula.gonçalves@gmail.com',md5('123'),'Paula Vanessa P. de A. Gonçalves',4,'1950-06-05','1990-05-07',35.6,'13995456554',1,'HIST',2,1,null);
insert into professor values(17875,'marcos.rocha@gmail.com',md5('123'),'Marcos Jose de S. Rocha',5,'1950-06-05','1990-06-08',44.5,'13995456555',1,'HIST',2,1,null);
insert into professor values(17984,'andre.prado@gmail.com',md5('123'),'Andre Luis Bueno do Prado',6,'1950-06-05','1990-07-09',53.4,'13995456556',1,'HIST',2,1,null);
insert into professor values(16822,'carlos.messias@gmail.com',md5('123'),'Carlos Roberto de Messias',7,'1950-06-05','1990-08-10',62.3,'13995456557',1,'HIST',2,1,null);
insert into professor values(17884,'andressa.zonta@gmail.com',md5('123'),'Andressa Zonta',8,'1950-06-05','1990-09-11',71.2,'13995456558',1,'HIST',2,1,null);
insert into professor values(17919,'carlos.vicente@gmail.com',md5('123'),'Carlos Eduardo Vicente',9,'1950-06-05','1990-10-12',80.1,'13995456559',1,'HIST',2,1,null);
insert into professor values(18203,'rubenval.silva@gmail.com',md5('123'),'Rubenval de Oliveira A. da Silva',0,'1950-06-05','1990-01-03',2.87,'13995456550',1,'HIST',2,1,null);
insert into professor values(21421,'marcelo.santana@gmail.com',md5('123'),'Marcelo Gomes de Santana',1,'1950-06-05','1990-02-04',88.9,'13995456551',1,'HIST',2,1,null);
insert into professor values(22811,'fabrisio.santos@gmail.com',md5('123'),'Fabrisio Freitas Tenório dos Santos',2,'1950-06-05','1990-03-05',17.8,'13995456552',1,'HIST',2,1,null);
insert into professor values(22809,'marcia.amaral@gmail.com',md5('123'),'Marcia Silva dos Santos Amaral',3,'1950-06-05','1990-04-06',26.7,'13995456553',1,'HIST',2,1,null);
insert into professor values(22810,'charlie.santos@gmail.com',md5('123'),'Charlie Drews Tomaz dos Santos',4,'1950-06-05','1990-05-07',35.6,'13995456554',1,'HIST',2,1,null);
insert into professor values(22808,'caio.santos@gmail.com',md5('123'),'Caio Cesar P. Barbosa Santos',5,'1950-06-05','1990-06-08',44.5,'13995456555',1,'HIST',2,1,null);
insert into professor values(23250,'elielson.silva@gmail.com',md5('123'),'Elielson Pereira da Silva',6,'1950-06-05','1990-07-09',53.4,'13995456556',1,'HIST',2,1,null);
insert into professor values(42,'victor.temporário@gmail.com',md5('123'),'Victor Hiero Silva David',7,'1950-06-05','1990-08-10',62.3,'13995456557',1,'HIST',2,1,null);
insert into professor values(6868,'ducila.santos@gmail.com',md5('123'),'Ducila Alves dos Santos',1,'1950-06-05','1990-02-04',55.9,'13995456551',1,'GEO',2,1,null);
insert into professor values(11115,'maria.bonfim@gmail.com',md5('123'),'Maria Edith dos Santos Bonfim',2,'1950-06-05','1990-03-05',17.8,'13995456552',1,'GEO',2,1,null);
insert into professor values(6454,'denise.florentino@gmail.com',md5('123'),'Denise Luíza Florentino',3,'1950-06-05','1990-04-06',26.7,'13995456553',1,'GEO',2,1,null);
insert into professor values(4119,'shirley.paula@gmail.com',md5('123'),'Shirley Araújo de Paula',4,'1950-06-05','1990-05-07',35.6,'13995456554',1,'GEO',2,1,null);
insert into professor values(8492,'vitorino.neto@gmail.com',md5('123'),'Vitorino Manzano Neto',5,'1950-06-05','1990-06-08',44.5,'13995456555',1,'GEO',2,1,null);
insert into professor values(10996,'célia.batista@gmail.com',md5('123'),'Célia Maria de Almeida Batista',6,'1950-06-05','1990-07-09',53.4,'13995456556',4,'GEO',2,1,null);
insert into professor values(11002,'geraldo.sampaio@gmail.com',md5('123'),'Geraldo Luiz Bueno Sampaio',8,'1950-06-05','1990-09-11',71.2,'13995456558',4,'GEO',2,1,null);
insert into professor values(11003,'edeilda.ferreira@gmail.com',md5('123'),'Edeilda Barbosa Ferreira',9,'1950-06-05','1990-10-12',80.1,'13995456559',4,'GEO',2,1,null);
insert into professor values(9630,'maria.santos@gmail.com',md5('123'),'Maria Tereza Felizardo dos Santos',0,'1950-06-05','1990-01-03',5.39,'13995456550',1,'GEO',2,1,null);
insert into professor values(12543,'regina.mello@gmail.com',md5('123'),'Regina Ferreira da C. de Mello',1,'1950-06-05','1990-02-04',0.1,'13995456551',1,'GEO',2,1,null);
insert into professor values(8207,'marli.henrique@gmail.com',md5('123'),'Marli Aparecida Henrique',2,'1950-06-05','1990-03-05',17.8,'13995456552',1,'GEO',2,1,null);
insert into professor values(12897,'alice.yamashita@gmail.com',md5('123'),'Alice Mizue H. Yamashita',3,'1950-06-05','1990-04-06',26.7,'13995456553',1,'GEO',2,1,null);
insert into professor values(8200,'andreia.cruz@gmail.com',md5('123'),'Andreia Lilian Silva Cruz',5,'1950-06-05','1990-06-08',44.5,'13995456555',1,'GEO',2,1,null);
insert into professor values(12787,'pátricia.leite@gmail.com',md5('123'),'Pátricia Carla Ferreira Leite',6,'1950-06-05','1990-07-09',53.4,'13995456556',1,'GEO',2,1,null);
insert into professor values(14795,'célia.dávila@gmail.com',md5('123'),'Célia Maria da Silva Dávila',7,'1950-06-05','1990-08-10',62.3,'13995456557',1,'GEO',2,1,null);


insert into professor values(23546,'joao.santos@gmail.com',md5('123'),'João da Silva Santos',0,'1960-05-10','1998-03-25',35.4,'13987654321',1,'GEO',2,1,null);
insert into professor values(23547,'maria.oliveria@gmail.com',md5('123'),'Maria Oliveira Souza',0,'1955-07-15','1995-06-10',29.8,'13987654322',1,'HIST',2,1,null);
insert into professor values(23548,'pedro.lima@gmail.com',md5('123'),'Pedro Almeida Lima',1,'1970-09-20','1997-11-30',33.6,'13987654323',1,'PORT',2,1,null);
insert into professor values(23549,'ana.pereira@gmail.com',md5('123'),'Ana Carolina Pereira',0,'1958-12-05','1993-01-15',30.7,'13987654324',1,'DA',3,1,null);
insert into professor values(23550,'luiz.costa@gmail.com',md5('123'),'Luiz Felipe Costa',2,'1972-11-18','1992-10-22',28.5,'13987654325',1,'MAT',2,1,null);
insert into professor values(23551,'juliana.gomes@gmail.com',md5('123'),'Juliana Rodrigues Gomes',0,'1962-04-27','1988-12-19',34.9,'13987654326',1,'ART',2,1,null);
insert into professor values(23553,'rafaela.martins@gmail.com',md5('123'),'Rafaela Fernandes Martins',0,'1967-02-14','1991-08-03',27.4,'13987654327',1,'EDF',2,1,null);
insert into professor values(23555,'fernanda.lima@gmail.com',md5('123'),'Fernanda Sousa Lima',3,'1975-10-22','1999-09-07',39.2,'13987654329',1,'DI',3,1,null);
insert into professor values(23556,'andre.ferreira@gmail.com',md5('123'),'André Luiz Ferreira',0,'1965-07-08','1994-02-18',36.7,'13987654330',1,'DV',3,1,null);
insert into professor values(23557,'camila.oliveira@gmail.com',md5('123'),'Camila Castro Oliveira',0,'1963-06-05','1991-04-06',26.7,'13995456553',1,'ING',2,1,null);
insert into professor values(23558,'diego.silva@gmail.com',md5('123'),'Diego Pereira Silva',0,'1960-08-12','1992-03-15',30.8,'13995456554',1,'PORT',2,1,null);
insert into professor values(23559,'renata.costa@gmail.com',md5('123'),'Renata Oliveira Costa',1,'1955-11-20','1990-07-22',33.2,'13995456555',1,'DA',3,1,null);
insert into professor values(23560,'lucas.souza@gmail.com',md5('123'),'Lucas Santos Souza',0,'1957-04-30','1989-05-10',28.1,'13995456556',1,'NC',1,1,null);
insert into professor values(23561,'mariana.rodrigues@gmail.com',md5('123'),'Mariana Almeida Rodrigues',2,'1964-12-25','1988-08-19',32.4,'13995456557',1,'EDF',2,1,null);
insert into professor values(23562,'gabriel.pereira@gmail.com',md5('123'),'Gabriel Lima Pereira',0,'1962-02-14','1990-01-25',35.0,'13995456558',1,'GEO',2,1,null);
insert into professor values(23563,'vanessa.alves@gmail.com',md5('123'),'Vanessa Fernandes Alves',0,'1961-05-18','1993-12-14',29.7,'13995456559',1,'HIST',2,1,null);
insert into professor values(23564,'thiago.castro@gmail.com',md5('123'),'Thiago Silva Castro',1,'1956-09-23','1994-11-18',27.8,'13995456560',1,'ART',2,1,null);
insert into professor values(23565,'patricia.oliveira@gmail.com',md5('123'),'Patricia Costa Oliveira',0,'1970-10-10','1991-06-22',31.6,'13995456561',1,'MAT',2,1,null);
insert into professor values(23566,'bruno.santos@gmail.com',md5('123'),'Bruno Oliveira Santos',3,'1965-07-05','1992-02-11',37.3,'13995456562',1,'PORT',2,1,null);
insert into professor values(23567,'larissa.fernandes@gmail.com',md5('123'),'Larissa Lima Fernandes',0,'1967-12-15','1993-01-08',25.9,'13995456563',1,'DA',3,1,null);
insert into professor values(23568,'ricardo.almeida@gmail.com',md5('123'),'Ricardo Pereira Almeida',0,'1966-03-20','1990-05-17',26.3,'13995456564',1,'DI',3,1,null);
insert into professor values(23569,'amanda.castro@gmail.com',md5('123'),'Amanda Oliveira Castro',1,'1958-06-12','1989-11-30',30.5,'13995456565',1,'DV',3,1,null);
insert into professor values(23570,'gustavo.lima@gmail.com',md5('123'),'Gustavo Santos Lima',2,'1963-09-25','1990-09-15',34.2,'13995456566',1,'ING',2,1,null);
insert into professor values(23571,'isabela.fernandes@gmail.com',md5('123'),'Isabela Almeida Fernandes',0,'1960-11-14','1988-10-10',28.9,'13995456567',1,'NC',1,1,null);
insert into professor values(23572,'fabio.silva@gmail.com',md5('123'),'Fabio Costa Silva',0,'1959-02-06','1994-06-21',35.5,'13995456568',1,'CIEN',2,1,null);
insert into professor values(23573,'carolina.alves@gmail.com',md5('123'),'Carolina Lima Alves',1,'1961-04-18','1992-08-29',32.8,'13995456569',1,'GEO',2,1,null);
insert into professor values(23574,'daniel.oliveira@gmail.com',md5('123'),'Daniel Fernandes Oliveira',0,'1955-10-09','1987-03-20',30.0,'13995456570',1,'HIST',2,1,null);
insert into professor values(23575,'ana.costa@gmail.com',md5('123'),'Ana Clara Santos Costa',3,'1956-07-26','1990-04-17',37.0,'13995456571',1,'ART',2,1,null);
insert into professor values(23576,'marcela.pereira@gmail.com',md5('123'),'Marcela Alves Pereira',0,'1968-06-22','1991-12-12',28.6,'13995456572',1,'PORT',2,1,null);
insert into professor values(23577,'andrea.lima@gmail.com',md5('123'),'Andréa Fernandes Lima',0,'1957-05-11','1992-01-29',27.1,'13995456573',1,'NC',1,1,null);
insert into professor values(23578,'leandro.santos@gmail.com',md5('123'),'Leandro Oliveira Santos',0,'1966-10-30','1989-07-20',29.5,'13995456574',1,'DA',3,1,null);
insert into professor values(23579,'aline.fernandes@gmail.com',md5('123'),'Aline Silva Fernandes',1,'1964-01-07','1994-10-05',31.8,'13995456575',1,'DI',3,1,null);
insert into professor values(23580,'eduardo.oliveira@gmail.com',md5('123'),'Eduardo Lima Oliveira',0,'1969-11-23','1991-05-24',34.1,'13995456576',1,'DV',3,1,null);
insert into professor values(23581,'marina.costa@gmail.com',md5('123'),'Marina Alves Costa',2,'1965-06-19','1993-06-18',29.9,'13995456577',1,'ING',2,1,null);
insert into professor values(23583,'roberto.santos@gmail.com',md5('123'),'Roberto Fernandes Santos',0,'1958-03-08','1992-12-03',26.4,'13995456578',1,'MAT',2,1,null);
insert into professor values(23584,'camila.lima@gmail.com',md5('123'),'Camila Oliveira Lima',0,'1962-09-14','1989-09-27',31.2,'13995456579',1,'PORT',2,1,null);
insert into professor values(23585,'vinicius.almeida@gmail.com',md5('123'),'Vinicius Costa Almeida',1,'1955-11-05','1990-08-12',30.6,'13995456580',1,'DA',3,1,null);
insert into professor values(23586,'vanessa.lima@gmail.com',md5('123'),'Vanessa Fernandes Lima',3,'1964-02-28','1988-02-22',36.0,'13995456581',1,'DI',3,1,null);
insert into professor values(23587,'rafael.santos@gmail.com',md5('123'),'Rafael Oliveira Santos',0,'1963-04-13','1994-03-09',27.7,'13995456582',1,'DV',3,1,null);
insert into professor values(23588,'ana.luiza.almeida@gmail.com',md5('123'),'Ana Luiza Costa Almeida',0,'1959-08-16','1991-07-05',32.5,'13995456583',1,'ING',2,1,null);
insert into professor values(23589,'gustavo.fernandes@gmail.com',md5('123'),'Gustavo Lima Fernandes',1,'1961-07-29','1995-11-13',34.6,'13995456584',1,'MAT',2,1,null);
insert into professor values(23590,'juliana.oliveira@gmail.com',md5('123'),'Juliana Almeida Oliveira',0,'1967-12-22','1992-04-06',29.3,'13995456585',1,'NC',1,1,null);
insert into professor values(23591,'lucas.silva@gmail.com',md5('123'),'Lucas Fernandes Silva',0,'1958-10-31','1990-10-25',28.0,'13995456586',1,'GEO',2,1,null);
insert into professor values(23592,'tatiana.alves@gmail.com',md5('123'),'Tatiana Lima Alves',3,'1969-01-03','1994-12-28',36.9,'13995456587',1,'HIST',2,1,null);
insert into professor values(23593,'guilherme.costa@gmail.com',md5('123'),'Guilherme Oliveira Costa',0,'1966-05-15','1991-11-16',27.9,'13995456588',1,'CIEN',2,1,null);
insert into professor values(13075,'andrea.aires@gmail.com',md5('123'),'Andrea Alves Aires',1,'1965-06-15','1992-06-18',25,'13994356577',3,'ING',2,0,null);
insert into professor values(7764,'geoina.goncalves@gmail.com',md5('123'),'Geoina Silva Gonçalves',2,'1968-03-08','1990-12-03',26.7,'13995496578',3,'MAT',2,0,null);
insert into professor values(13030,'paula.cespedes@gmail.com',md5('123'),'Paula Oliveira Cespedes',0,'1962-09-11','1988-09-27',31,'13992356579',3,'PORT',2,0,null);
insert into professor values(8317,'regia.almeida@gmail.com',md5('123'),'Regia Costa Almeida',2,'1950-11-05','1990-08-09',31.2,'13997656580',3,'DA',3,0,null);
insert into professor values(5420,'rejane.lima@gmail.com',md5('123'),'Rejane Fernandes Lima',3,'1960-02-25','1986-02-25',34,'13995876581',3,'DI',3,0,null);
insert into professor values(10593,'veronica.santos@gmail.com',md5('123'),'Veronica Oliveira Santos',0,'1963-04-13','1994-03-20',23.7,'13995459982',3,'DV',3,0,null);
insert into professor values(18214,'victor.almeida@gmail.com',md5('123'),'Victor Luiza Costa Almeida',0,'1959-08-16','1991-07-15',30.5,'13995400583',3,'ING',2,0,null);
insert into professor values(5790,'edite.fernandes@gmail.com',md5('123'),'Edite Lima Fernandes',1,'1961-07-29','1995-11-23',34,'139958876584',3,'MAT',2,0,null);
insert into professor values(10684,'rogerio.oliveira@gmail.com',md5('123'),'Rogerio Almeida Oliveira',0,'1967-12-22','1992-04-26',27.3,'13994456585',3,'NC',1,0,null);
insert into professor values(13277,'sandra.nunes@gmail.com',md5('123'),'Sandra Fernandes Silva',0,'1958-10-31','1990-10-05',25.0,'13995452286',3,'GEO',2,0,null);
insert into professor values(6439,'estevao.alves@gmail.com',md5('123'),'Estevao Lima Alves',3,'1969-01-03','1994-12-18',33.9,'13995454487',3,'HIST',2,0,null);
insert into professor values(13280,'walter.costa@gmail.com',md5('123'),'Walter Oliveira Costa',0,'1966-05-15','1991-11-10',22.9,'13996656588',3,'CIEN',2,0,null);

insert into professor values(14904,'ednaldo.martins@gmail.com',md5('123'),'Ednaldo de Morais Martins',8,'1950-06-05','1990-09-11',71.2,'13995456558',1,'GEO',2,1,null);
insert into professor values(15058,'maura.barbosa@gmail.com',md5('123'),'Maura Soares Barbosa',9,'1950-06-05','1990-10-12',80.1,'13995456559',1,'GEO',2,1,null);
insert into professor values(16234,'romualdo.bellomusto@gmail.com',md5('123'),'Romualdo Bellomusto',0,'1950-06-05','1990-01-03',23.5,'13995456550',1,'GEO',2,1,null);
insert into professor values(16378,'dagmar.barros@gmail.com',md5('123'),'Dagmar Barros',1,'1950-06-05','1990-02-04',65.47,'13995456551',1,'GEO',2,1,null);
insert into professor values(16987,'ronaldo.oliveira@gmail.com',md5('123'),'Ronaldo Cavalcante de Oliveira',2,'1950-06-05','1990-03-05',17.8,'13995456552',1,'GEO',2,1,null);
insert into professor values(18100,'valter.sousa@gmail.com',md5('123'),'Valter Batista de Sousa',3,'1950-06-05','1990-04-06',26.7,'13995456553',1,'GEO',2,1,null);
insert into professor values(17862,'wagner.sá@gmail.com',md5('123'),'Wagner Men de Sá',4,'1950-06-05','1990-05-07',35.6,'13995456554',1,'GEO',2,1,null);
insert into professor values(18194,'luiz.nunes@gmail.com',md5('123'),'Luiz Paulo Neves Nunes',5,'1950-06-05','1990-06-08',44.5,'13995456555',1,'GEO',2,1,null);
insert into professor values(20315,'charles.leite@gmail.com',md5('123'),'Charles de Alencar S. Leite',6,'1950-06-05','1990-07-09',53.4,'13995456556',1,'GEO',2,1,null);
insert into professor values(20800,'sueli.tabarine@gmail.com',md5('123'),'Sueli Salvador Tabarine',7,'1950-06-05','1990-08-10',62.3,'13995456557',1,'GEO',2,1,null);
insert into professor values(22901,'luiz.andrade@gmail.com',md5('123'),'Luiz Henrique Andrade',8,'1950-06-05','1990-09-11',71.2,'13995456558',1,'GEO',2,1,null);
insert into professor values(22900,'diogo.cardoso@gmail.com',md5('123'),'Diogo da Silva Cardoso',9,'1950-06-05','1990-10-12',80.1,'13995456559',1,'GEO',2,1,null);
insert into professor values(22928,'fernando.ramos@gmail.com',md5('123'),'Fernando Fagner Ramos',0,'1950-06-05','1990-01-03',9.7,'13995456550',1,'GEO',2,1,null);
insert into professor values(23002,'andré.cunha@gmail.com',md5('123'),'André Luiz Ribeiro da Cunha',1,'1950-06-05','1990-02-04',12.67,'13995456551',1,'GEO',2,1,null);
insert into professor values(22938,'valter.souza@gmail.com',md5('123'),'Valter Batista de Sousa',2,'1950-06-05','1990-03-05',17.8,'13995456552',1,'GEO',2,1,null);
insert into professor values(23058,'rafael.silva@gmail.com',md5('123'),'Rafael Fernando Gontijo Silva',3,'1950-06-05','1990-04-06',26.7,'13995456553',1,'GEO',2,1,null);
insert into professor values(23252,'renato.peres@gmail.com',md5('123'),'Renato de Toledo Peres',4,'1950-06-05','1990-05-07',35.6,'13995456554',1,'GEO',2,1,null);
insert into professor values(30,'lourinete.temporário@gmail.com',md5('123'),'Lourinete Vieira de Morais',5,'1950-06-05','1990-06-08',44.5,'13995456555',1,'GEO',2,1,null);
insert into professor values(31,'antonia.temporário@gmail.com',md5('123'),'Antonia Ribeiro de Souza',6,'1950-06-05','1990-07-09',53.4,'13995456556',1,'GEO',2,1,null);
insert into professor values(23301,'maria.bueno@gmail.com',md5('123'),'Maria Isabel Veiga Bueno',7,'1950-06-05','1990-08-10',62.3,'13995456557',1,'GEO',2,1,null);
insert into professor values(23302,'adriano.santos@gmail.com',md5('123'),'Adriano Pereira dos Santos',8,'1950-06-05','1990-09-11',71.2,'13995456558',1,'GEO',2,1,null);
insert into professor values(3173,'lázaro.silva@gmail.com',md5('123'),'Lázaro Matias da Silva',9,'1950-06-05','1990-10-12',80.1,'13995456559',4,'MAT',2,1,null);
insert into professor values(5130,'célia.silva@gmail.com',md5('123'),'Célia Regina Lima da Silva',0,'1950-06-05','1990-01-03',3,'13995456550',1,'MAT',2,1,null);
insert into professor values(7392,'liliane.sório@gmail.com',md5('123'),'Liliane Fernandes Sório',2,'1950-06-05','1990-03-05',17.8,'13995456552',1,'MAT',2,1,null);
insert into professor values(11106,'anete.salvador@gmail.com',md5('123'),'Anete Conceição S. Barbosa Salvador',3,'1950-06-05','1990-04-06',26.7,'13995456553',1,'MAT',2,1,null);
insert into professor values(8342,'maria.valgode@gmail.com',md5('123'),'Maria Gomes S. Valgode',4,'1950-06-05','1990-05-07',35.6,'13995456554',4,'MAT',2,1,null);
insert into professor values(8229,'luziene.silva@gmail.com',md5('123'),'Luziene Bezerra da Silva',5,'1950-06-05','1990-06-08',44.5,'13995456555',1,'MAT',2,1,null);
insert into professor values(11020,'sidneia.goia@gmail.com',md5('123'),'Sidneia Regina Goia',7,'1950-06-05','1990-08-10',62.3,'13995456557',1,'MAT',2,1,null);
insert into professor values(10678,'leônidas.gonçalves@gmail.com',md5('123'),'Leônidas de J. Gonçalves',8,'1950-06-05','1990-09-11',71.2,'13995456558',1,'MAT',2,1,null);
insert into professor values(11021,'oneida.cabral@gmail.com',md5('123'),'Oneida de Lourdes S. Cabral',9,'1950-06-05','1990-10-12',80.1,'13995456559',1,'MAT',2,1,null);
insert into professor values(11025,'maria.ruiz@gmail.com',md5('123'),'Maria Cristina Ruiz',0,'1950-06-05','1990-01-03',4,'13995456550',4,'MAT',2,1,null);
insert into professor values(11022,'izildinha.serra@gmail.com',md5('123'),'Izildinha de Fatima M. Serra',1,'1950-06-05','1990-02-04',8,'13995456551',4,'MAT',2,1,null);


insert into professor values(11114,'lourdes.vaz@gmail.com',md5('123'),'Lourdes Vaz',2,'1950-06-05','1990-03-5',17.8,'13995456552',4,'MAT',2,1,null);
insert into professor values(10994,'renata.cardoso@gmail.com',md5('123'),'Renata Gomes Cardoso',3,'1950-06-05','1990-04-6',26.7,'13995456553',1,'MAT',2,1,null);
insert into professor values(12929,'zenilde.carmo@gmail.com',md5('123'),'Zenilde Teles dos S. Carmo',4,'1950-06-05','1990-05-7',35.6,'13995456554',4,'MAT',2,1,null);
insert into professor values(10257,'magali.lourenço@gmail.com',md5('123'),'Magali Gaspar Lourenço',5,'1950-06-05','1990-06-8',44.5,'13995456555',1,'MAT',2,1,null);
insert into professor values(9671,'fátima.dias@gmail.com',md5('123'),'Fátima Cilene Dias',6,'1950-06-05','1990-07-9',53.4,'13995456556',1,'MAT',2,1,null);
insert into professor values(8443,'marta.macena@gmail.com',md5('123'),'Marta Menezes da Macena',7,'1950-06-05','1990-08-10',62.3,'13995456557',1,'MAT',2,1,null);
insert into professor values(13052,'umbelina.silva@gmail.com',md5('123'),'Umbelina Dantas N. Silva',8,'1950-06-05','1990-09-11',71.2,'13995456558',4,'MAT',2,1,null);
insert into professor values(10522,'edvania.santos@gmail.com',md5('123'),'Edvania Maria A. R. dos Santos',9,'1950-06-05','1990-10-12',88.9 ,'13995456559',1,'MAT',2,1,null);
insert into professor values(12095,'vlademir.passos@gmail.com',md5('123'),'Vlademir Passos',0,'1950-06-05','1990-01-3',90,'13995456550',1,'MAT',2,1,null);
insert into professor values(12025,'alexsandra.bueno@gmail.com',md5('123'),'Alexsandra Cunha Bueno',1,'1950-06-05','1990-02-4',85,'13995456551',1,'MAT',2,1,null);
insert into professor values(12046,'eliana.cruz@gmail.com',md5('123'),'Eliana Nascimento da Cruz',2,'1950-06-05','1990-03-5',17.8,'13995456552',4,'MAT',2,1,null);
insert into professor values(7765,'gislene.gonçalves@gmail.com',md5('123'),'Gislene Cabral Gonçalves',3,'1950-06-05','1990-04-6',26.7,'13995456553',1,'MAT',2,1,null);
insert into professor values(12033,'andréa.pereira@gmail.com',md5('123'),'Andréa Maria Pereira',4,'1950-06-05','1990-05-7',35.6,'13995456554',1,'MAT',2,1,null);
insert into professor values(12903,'fernando.ferreira@gmail.com',md5('123'),'Fernando Okada Ferreira',5,'1950-06-05','1990-06-8',44.5,'13995456555',1,'MAT',2,1,null);
insert into professor values(12893,'honorata.vieira@gmail.com',md5('123'),'Honorata dos Santos Vieira',6,'1950-06-05','1990-07-9',53.4,'13995456556',4,'MAT',2,1,null);
insert into professor values(12975,'virginia.oliveira@gmail.com',md5('123'),'Virginia Silva Oliveira',7,'1950-06-05','1990-08-10',62.3,'13995456557',1,'MAT',2,1,null);
insert into professor values(13278,'claudete.magri@gmail.com',md5('123'),'Claudete Tatiane G. Magri',9,'1950-06-05','1990-10-12',23,'13995456559',1,'MAT',2,1,null);
insert into professor values(12133,'suzana.pereira@gmail.com',md5('123'),'Suzana Vasconcelos Pereira',0,'1950-06-05','1990-01-3',87,'13995456550',1,'MAT',2,1,null);
insert into professor values(14893,'olair.júnior@gmail.com',md5('123'),'Olair Rodrigues Garcia Júnior',1,'1950-06-05','1990-02-4',89.9,'13995456551',1,'MAT',2,1,null);
insert into professor values(14807,'marco.pagetto@gmail.com',md5('123'),'Marco Aurélio Pagetti',2,'1950-06-05','1990-03-5',17.8,'13995456552',1,'MAT',2,1,null);
insert into professor values(14892,'marli.sampaio@gmail.com',md5('123'),'Marli Aparecida L. Sampaio',3,'1950-06-05','1990-04-6',26.7,'13995456553',1,'MAT',2,1,null);
insert into professor values(16360,'gideão.souza@gmail.com',md5('123'),'Gideão Rodrigues de Souza',4,'1950-06-05','1990-05-7',35.6,'13995456554',1,'MAT',2,1,null);
insert into professor values(16179,'dario.oliveira@gmail.com',md5('123'),'Dario dos Santos Oliveira',5,'1950-06-05','1990-06-8',44.5,'13995456555',1,'MAT',2,1,null);
insert into professor values(16233,'tomielson.jacon@gmail.com',md5('123'),'Tomielson de Oliveira Jacon',6,'1950-06-05','1990-07-9',53.4,'13995456556',1,'MAT',2,1,null);
insert into professor values(17156,'carmen.martins@gmail.com',md5('123'),'Carmen Silvia P. Martins',7,'1950-06-05','1990-08-10',62.3,'13995456557',4,'MAT',2,1,null);
insert into professor values(17200,'roseli.souza@gmail.com',md5('123'),'Roseli Ovale de Souza',8,'1950-06-05','1990-09-11',71.2,'13995456558',1,'MAT',2,1,null);
insert into professor values(17916,'viviane.santos@gmail.com',md5('123'),'Viviane Maria Fernandes dos Santos',9,'1950-06-05','1990-10-12',80.1,'13995456559',1,'MAT',2,1,null);
insert into professor values(17838,'ronaldo.lima@gmail.com',md5('123'),'Ronaldo Vidal Lima',0,'1950-06-05','1990-01-3',7,'13995456550',1,'MAT',2,1,null);
insert into professor values(17795,'alexandre.marqui@gmail.com',md5('123'),'Alexandre Marqui',1,'1950-06-05','1990-02-4',247,'13995456551',1,'MAT',2,1,null);
insert into professor values(16997,'cristiano.vieira@gmail.com',md5('123'),'Cristiano de Souza Vieira',2,'1950-06-05','1990-03-5',17.8,'13995456552',1,'MAT',2,1,null);
insert into professor values(18020,'williams.almeida@gmail.com',md5('123'),'Williams Alves de Almeida',3,'1950-06-05','1990-04-6',26.7,'13995456553',1,'MAT',2,1,null);

insert into professor values(18186, 'iara.crochemore@gmail.com', md5('123'), 'Iara Carvalho Crochemore', 4, '1950-06-05', '1990-05-07', 35.6, '13995456554', 1, 'MAT', 2, 1, null);
insert into professor values(20256, 'cristiane.cintra@gmail.com', md5('123'), 'Cristiane Castanheira Cintra', 5, '1950-06-05', '1990-06-08', 44.5, '13995456555', 1, 'MAT', 2, 1, null);
insert into professor values(20750, 'josé.silva@gmail.com', md5('123'), 'José Carlos Santos Da Silva', 6, '1950-06-05', '1990-07-09', 53.4, '13995456556', 1, 'MAT', 2, 1, null);
insert into professor values(22813, 'gabriela.kluppel.@gmail.com', md5('123'), 'Gabriela Teixeira Kluppel.', 7, '1950-06-05', '1990-08-10', 62.3, '13995456557', 1, 'MAT', 2, 1, null);
insert into professor values(22814, 'michelle.farias@gmail.com', md5('123'), 'Michelle Alves Costa Farias', 8, '1950-06-05', '1990-09-11', 71.2, '13995456558', 1, 'MAT', 2, 1, null);
insert into professor values(22817, 'pâmella.santos@gmail.com', md5('123'), 'Pâmella A. Ferreira Dos Santos', 9, '1950-06-05', '1990-10-12', 80.1, '13995456559', 1, 'MAT', 2, 1, null);
insert into professor values(22812, 'allan.pereira@gmail.com', md5('123'), 'Allan Victor Soares Da Paz Pereira', 0, '1950-06-05', '1990-01-03', 90, '13995456550', 1, 'MAT', 2, 1, null);
insert into professor values(22816, 'heitor.fernandes@gmail.com', md5('123'), 'Heitor Rivau Fernandes', 1, '1950-06-05', '1990-02-04', 80.90, '13995456551', 1, 'MAT', 2, 1, null);
insert into professor values(22923, 'mariane.ribeiro@gmail.com', md5('123'), 'Mariane Ribeiro', 2, '1950-06-05', '1990-03-05', 17.8, '13995456552', 1, 'MAT', 2, 1, null);
insert into professor values(22922, 'elda.silva@gmail.com', md5('123'), 'Elda Ferreira Da Silva', 3, '1950-06-05', '1990-04-06', 26.7, '13995456553', 1, 'MAT', 2, 1, null);
insert into professor values(17011, 'pedro.gomes@gmail.com', md5('123'), 'Pedro Luiz Gomes', 4, '1950-06-05', '1990-05-07', 35.6, '13995456554', 1, 'MAT', 2, 1, null);
insert into professor values(9872, 'elias.deratani@gmail.com', md5('123'), 'Elias Mikhail Deratani', 5, '1950-06-05', '1990-06-08', 44.5, '13995456555', 1, 'MAT', 2, 1, null);
insert into professor values(22815, 'patricia.andrade@gmail.com', md5('123'), 'Patricia De Andrade', 6, '1950-06-05', '1990-07-09', 53.4, '13995456556', 1, 'MAT', 2, 1, null);
insert into professor values(23174, 'thais.romão@gmail.com', md5('123'), 'Thais Aparecida Romão', 7, '1950-06-05', '1990-08-10', 62.3, '13995456557', 1, 'MAT', 2, 1, null);
insert into professor values(23175, 'renato.silva@gmail.com', md5('123'), 'Renato Elias Da Silva', 8, '1950-06-05', '1990-09-11', 71.2, '13995456558', 1, 'MAT', 2, 1, null);
insert into professor values(23253, 'guilherme.oliveira@gmail.com', md5('123'), 'Guilherme Laranjeira M. Oliveira', 9, '1950-06-05', '1990-10-12', 80.1, '13995456559', 1, 'MAT', 2, 1, null);
insert into professor values(23254, 'marcelo.silva@gmail.com', md5('123'), 'Marcelo Pinto Silva', 0, '1950-06-05', '1990-01-03', 10, '13995456550', 1, 'MAT', 2, 1, null);
insert into professor values(23256, 'bianca.claro@gmail.com', md5('123'), 'Bianca Dos Santos Claro', 1, '1950-06-05', '1990-02-04', 18.9, '13995456551', 1, 'MAT', 2, 1, null);
insert into professor values(26, 'edjane.temporário@gmail.com', md5('123'), 'Edjane Soares Da Franca', 2, '1950-06-05', '1990-03-05', 17.8, '13995456552', 1, 'MAT', 2, 1, null);
insert into professor values(38, 'kelly.temporário@gmail.com', md5('123'), 'Kelly Jussara De Jesus Alves', 4, '1950-06-05', '1990-05-07', 35.6, '13995456554', 1, 'MAT', 2, 1, null);
insert into professor values(55, 'joselito.temporário@gmail.com', md5('123'), 'Joselito Da Silva Borges', 5, '1950-06-05', '1990-06-08', 44.5, '13995456555', 1, 'MAT', 2, 1, null);
insert into professor values(6863, 'ana.silva@gmail.com', md5('123'), 'Ana Lúcia De Campos Silva', 9, '1950-06-05', '1990-10-12', 80.1, '13995456559', 1, 'CIEN', 2, 1, null);
insert into professor values(7033, 'elenilda.margarido@gmail.com', md5('123'), 'Elenilda Dos S. M. Margarido', 0, '1950-06-05', '1990-01-03', 50, '13995456550', 1, 'CIEN', 2, 1, null);
insert into professor values(8649, 'lilian.pinho@gmail.com', md5('123'), 'Lilian Inês Da C. Pinho', 1, '1950-06-05', '1990-02-04', 58.9, '13995456551', 1, 'CIEN', 2, 1, null);
insert into professor values(9460, 'luciano.santos@gmail.com', md5('123'), 'Luciano Dos Santos', 2, '1950-06-05', '1990-03-05', 17.8, '13995456552', 1, 'CIEN', 2, 1, null);
insert into professor values(10190, 'dulcelena.guerra@gmail.com', md5('123'), 'Dulcelena Farias Guerra', 3, '1950-06-05', '1990-04-06', 26.7, '13995456553', 1, 'CIEN', 2, 1, null);
insert into professor values(10454, 'marcia.quebralha@gmail.com', md5('123'), 'Márcia De Moraes Quebralha', 4, '1950-06-05', '1990-05-07', 35.6,'13995456553', 1,'CIEN', 2, 1, null);

insert into professor values(11030, 'jose.couto@gmail.com', md5('123'), 'José Claudio Diniz Couto', 5, '1950-06-05', '1990-06-08', 44.5, '13995456555', 1, 'CIEN', 2, 1, null);
insert into professor values(10334, 'nanci.valero@gmail.com', md5('123'), 'Nanci Papareli Valero', 6, '1950-06-05', '1990-07-09', 53.4, '13995456556', 1, 'CIEN', 2, 1, null);
insert into professor values(10968, 'rosana.camara@gmail.com', md5('123'), 'Rosana Carrera Câmara', 7, '1950-06-05', '1990-08-10', 62.3, '13995456557', 1, 'CIEN', 2, 1, null);
insert into professor values(10967, 'rita.oliveira@gmail.com', md5('123'), 'Rita De Cassia E. De Oliveira', 8, '1950-06-05', '1990-09-11', 71.2, '13995456558', 1, 'CIEN', 2, 1, null);
insert into professor values(10971, 'janete.pinto@gmail.com', md5('123'), 'Janete Garcez Dos Santos Pinto', 9, '1950-06-05', '1990-10-12', 80.1, '13995456559', 4, 'CIEN', 2, 1, null);
insert into professor values(11116, 'rosimeri.silva@gmail.com', md5('123'), 'Rosimeri Bastos Lima Da Silva', 0, '1950-06-05', '1990-01-03', 70, '13995456550', 4, 'CIEN', 2, 1, null);
insert into professor values(5136, 'djane.santos@gmail.com', md5('123'), 'Djane Cruz Dos Santos', 1, '1950-06-05', '1990-02-04', 78.9, '13995456551', 1, 'CIEN', 2, 1, null);
insert into professor values(12925, 'ana.faria@gmail.com', md5('123'), 'Ana Maria Santos C. De Faria', 2, '1950-06-05', '1990-03-05', 17.8, '13995456552', 4, 'CIEN', 2, 1, null);
insert into professor values(12915, 'jandira.canfild@gmail.com', md5('123'), 'Jandira Fortunato Canfild', 3, '1950-06-05', '1990-04-06', 26.7, '13995456553', 1, 'CIEN', 2, 1, null);
insert into professor values(12896, 'erika.machado@gmail.com', md5('123'), 'Erika Regina T. Machado', 4, '1950-06-05', '1990-05-07', 35.6, '13995456554', 1, 'CIEN', 2, 1, null);
insert into professor values(12944, 'marcelo.azevedo@gmail.com', md5('123'), 'Marcelo Azevedo', 5, '1950-06-05', '1990-06-08', 44.5, '13995456555', 1, 'CIEN', 2, 1, null);
insert into professor values(12894, 'thais.coelho@gmail.com', md5('123'), 'Thaís Helena Sá Coelho', 6, '1950-06-05', '1990-07-09', 53.4, '13995456556', 1, 'CIEN', 2, 1, null);
insert into professor values(12955, 'paulo.perricone@gmail.com', md5('123'), 'Paulo Rui Perricone', 7, '1950-06-05', '1990-08-10', 62.3, '13995456557', 1, 'CIEN', 2, 1, null);
insert into professor values(12967, 'luciana.gomes@gmail.com', md5('123'), 'Luciana Gomes', 8, '1950-06-05', '1990-09-11', 71.2, '13995456558', 1, 'CIEN', 2, 1, null);
insert into professor values(13053, 'cezar.tramontini@gmail.com', md5('123'), 'Cezar Bastos Tramontini', 9, '1950-06-05', '1990-10-12', 89.1, '13995456559', 1, 'CIEN', 2, 1, null);
insert into professor values(13241, 'clara.cabral@gmail.com', md5('123'), 'Clara Gomez Fernandez Cabral', 0, '1950-06-05', '1990-01-03', 80, '13995456550', 1, 'CIEN', 2, 1, null);
insert into professor values(13250, 'priscila.jardim@gmail.com', md5('123'), 'Priscila Castanho R. Jardim', 1, '1950-06-05', '1990-02-04', 88.9, '13995456551', 1, 'CIEN', 2, 1, null);
insert into professor values(13274, 'germano.pinho@gmail.com', md5('123'), 'Germano José Guedes De Pinho', 2, '1950-06-05', '1990-03-05', 17.8, '13995456552', 1, 'CIEN', 2, 1, null);
insert into professor values(13273, 'alissandra.henrique@gmail.com', md5('123'), 'Alissandra Henrique', 3, '1950-06-05', '1990-04-06', 26.7, '13995456553', 1, 'CIEN', 2, 1, null);
insert into professor values(17158, 'maria.rodrigues@gmail.com', md5('123'), 'Maria Da Conceição Rodrigues', 5, '1950-06-05', '1990-06-08', 44.5, '13995456555', 1, 'CIEN', 2, 1, null);
insert into professor values(16145, 'humberto.silva@gmail.com', md5('123'), 'Humberto Leandro Melo Da Silva', 6, '1950-06-05', '1990-07-09', 53.4, '13995456556', 1, 'CIEN', 2, 1, null);
insert into professor values(16223, 'tamara.damico@gmail.com', md5('123'), 'Tâmara Regina M. D’Amico', 7, '1950-06-05', '1990-08-10', 62.3, '13995456557', 1, 'CIEN', 2, 1, null);
insert into professor values(16272, 'marcia.capezzuto@gmail.com', md5('123'), 'Márcia Regina Capezzuto', 9, '1950-06-05', '1990-10-12', 80.1, '13995456559', 1, 'CIEN', 2, 1, null);
insert into professor values(16358, 'marilia.vieira@gmail.com', md5('123'), 'Marília Lima Matos Vieira', 0, '1950-06-05', '1990-01-03', 60, '13995456550', 1, 'CIEN', 2, 1, null);
insert into professor values(16254, 'ailton.silva@gmail.com', md5('123'), 'Ailton José Da Silva', 1, '1950-06-05', '1990-02-04', 8.69, '13995456551', 1, 'CIEN', 2, 1, null);
insert into professor values(16361, 'angela.aparicio@gmail.com', md5('123'), 'Ângela Maria Carvalho Aparício', 2, '1950-06-05', '1990-03-05', 17.8, '13995456552', 1, 'CIEN', 2, 1, null);
insert into professor values(16753, 'cristiane.brovini@gmail.com', md5('123'), 'Cristiane Nascimento Brovini', 3, '1950-06-05', '1990-04-06', 26.7, '13995456553', 1, 'CIEN', 2, 1, null);
insert into professor values(17758, 'joao.neto@gmail.com', md5('123'), 'João Olimpio Alves Neto', 4, '1950-06-05', '1990-05-07', 35.6, '13995456554', 1, 'CIEN', 2, 1, null);

insert into professor values(17869, 'helen.ferreira@gmail.com', md5('123'), 'Helen Souto Ferreira', 5, '1950-06-05', '1990-06-08', 44.5, '13995456555', 1, 'CIEN', 2, 1, null);
insert into professor values(17887, 'daniela.martinez@gmail.com', md5('123'), 'Daniela Conde Martinez', 6, '1950-06-05', '1990-07-09', 53.4, '13995456556', 1, 'CIEN', 2, 1, null);
insert into professor values(17910, 'angela.lima@gmail.com', md5('123'), 'Angela Madalena De Lima', 7, '1950-06-05', '1990-08-10', 62.3, '13995456557', 4, 'CIEN', 2, 1, null);
insert into professor values(19677, 'ronaldo.junior@gmail.com', md5('123'), 'Ronaldo Gomes Pereira Junior', 8, '1950-06-05', '1990-09-11', 71.2, '13995456558', 1, 'CIEN', 2, 1, null);
insert into professor values(22935, 'luciana.vieira@gmail.com', md5('123'), 'Luciana Melo Vieira', 9, '1950-06-05', '1990-10-12', 76.1, '13995456559', 1, 'CIEN', 2, 1, null);
insert into professor values(14835, 'americo.neto@gmail.com', md5('123'), 'Américo Dos Santos Neto', 0, '1950-06-05', '1990-01-03', 340, '13995456550', 1, 'CIEN', 2, 1, null);
insert into professor values(9486, 'sandra.ramos@gmail.com', md5('123'), 'Sandra Mara Ramos', 1, '1950-06-05', '1990-02-04', 38.49, '13995456551', 1, 'CIEN', 2, 1, null);
insert into professor values(17899, 'ricardo.salgado@gmail.com', md5('123'), 'Ricardo Salgado', 2, '1950-06-05', '1990-03-05', 17.8, '13995456552', 1, 'CIEN', 2, 1, null);
insert into professor values(22952, 'mariah.correia@gmail.com', md5('123'), 'Mariah Izar Francisquini Correia', 3, '1950-06-05', '1990-04-06', 26.7, '13995456553', 1, 'CIEN', 2, 1, null);
insert into professor values(22953, 'livia.alfonsi@gmail.com', md5('123'), 'Livia Essi Alfonsi', 4, '1950-06-05', '1990-05-07', 35.6, '13995456554', 1, 'CIEN', 2, 1, null);
insert into professor values(22902, 'pedro.machado@gmail.com', md5('123'), 'Pedro Ivo Chiquetto Machado', 5, '1950-06-05', '1990-06-08', 44.5, '13995456555', 1, 'CIEN', 2, 1, null);
insert into professor values(23038, 'sandra.silva@gmail.com', md5('123'), 'Sandra Marilia Souza Silva', 6, '1950-06-05', '1990-07-09', 53.4, '13995456556', 1, 'CIEN', 2, 1, null);
insert into professor values(23099, 'fabiana.estelles@gmail.com', md5('123'), 'Fabiana Estelles', 7, '1950-06-05', '1990-08-10', 62.3, '13995456557', 1, 'CIEN', 2, 1, null);
insert into professor values(23251, 'fabiola.melo@gmail.com', md5('123'), 'Fabiola Henriques Machado De Melo', 8, '1950-06-05', '1990-09-11', 71.2, '13995456558', 1, 'CIEN', 2, 1, null);
insert into professor values(47, 'pedro.temporário@gmail.com', md5('123'), 'Pedro Rogerio Rodrigues', 9, '1950-06-05', '1990-10-12', 833.1, '13995456559', 1, 'CIEN', 2, 1, null);
insert into professor values(6, 'nathaly.temporário@gmail.com', md5('123'), 'Nathaly Oliveira Pereira', 0, '1950-06-05', '1990-01-03', 33, '13995456550', 1, 'CIEN', 2, 1, null);
insert into professor values(23498, 'lauryne.silveira@gmail.com', md5('123'), 'Lauryne Desirée Alves Da Silveira', 1, '1950-06-05', '1990-02-04', 338.9, '13995456551', 1, 'CIEN', 2, 1, null);
insert into professor values(7494, 'aurea.penteado@gmail.com', md5('123'), 'Aurea Do Amaral Penteado', 2, '1950-06-05', '1990-03-05', 17.8, '13995456552', 4, 'ART', 2, 1, null);
insert into professor values(11420, 'silene.duo@gmail.com', md5('123'), 'Silene Cavalcante Silva Duo', 3, '1950-06-05', '1990-04-06', 26.7, '13995456553', 1, 'ART', 2, 1, null);
insert into professor values(4527, 'lucimar.moraes@gmail.com', md5('123'), 'Lucimar Bittencourt S. Moraes', 5, '1950-06-05', '1990-06-08', 44.5, '13995456555', 1, 'ART', 2, 1, null);
insert into professor values(10974, 'semíramis.guimarães@gmail.com', md5('123'), 'Semíramis Rodrigues Guimarães', 6, '1950-06-05', '1990-07-09', 53.4, '13995456556', 1, 'ART', 2, 1, null);
insert into professor values(7706, 'flavia.garcia@gmail.com', md5('123'), 'Flavia Aparecida De Oliveira Garcia', 7, '1950-06-05', '1990-08-10', 62.3, '13995456557', 1, 'ART', 2, 1, null);
insert into professor values(5463, 'maria.luiz@gmail.com', md5('123'), 'Maria De Fátima G. Luiz', 8, '1950-06-05', '1990-09-11', 71.2, '13995456558', 1, 'ART', 2, 1, null);
insert into professor values(7186, 'odila.mesquita@gmail.com', md5('123'), 'Odila Aparecida M. Mesquita', 9, '1950-06-05', '1990-10-12', 560.1, '13995456559', 4, 'ART', 2, 1, null);
insert into professor values(12945, 'cecília.mei@gmail.com', md5('123'), 'Cecília Vani Mei', 0, '1950-06-05', '1990-01-03', 234, '13995456550', 1, 'ART', 2, 1, null);
insert into professor values(12959, 'gislene.santos@gmail.com', md5('123'), 'Gislene Fortunato C. Dos Santos', 1, '1950-06-05', '1990-02-04', 787.94, '13995456551', 1, 'ART', 2, 1, null);
insert into professor values(12951, 'simone.abreu@gmail.com', md5('123'), 'Simone Santos Dias De Abreu', 2, '1950-06-05', '1990-03-05', 17.8, '13995456552', 4, 'ART', 2, 1, null);
insert into professor values(12936, 'valdeci.costa@gmail.com', md5('123'), 'Valdeci Teixeira Da Costa', 3, '1950-06-05', '1990-04-06', 26.7, '13995456553', 4, 'ART', 2, 1, null);

insert into professor values(12961, 'luciana.giuizio@gmail.com', md5('123'), 'Luciana De Queiroz Giuizio', 4, '1950-06-05', '1990-05-07', 35.6, '13995456554', 1, 'ART', 2, 1, null);
insert into professor values(12972, 'neilton.santos@gmail.com', md5('123'), 'Neilton Dos Santos', 5, '1950-06-05', '1990-06-08', 44.5, '13995456555', 1, 'ART', 2, 1, null);
insert into professor values(13054, 'luciene.oliveira@gmail.com', md5('123'), 'Luciene De Castro Oliveira', 6, '1950-06-05', '1990-07-09', 53.4, '13995456556', 1, 'ART', 2, 1, null);
insert into professor values(13269, 'vitorina.codo@gmail.com', md5('123'), 'Vitorina De Fátima Codo', 7, '1950-06-05', '1990-08-10', 62.3, '13995456557', 1, 'ART', 2, 1, null);
insert into professor values(14798, 'hebe.salles@gmail.com', md5('123'), 'Hebe Da Silva Salles', 8, '1950-06-05', '1990-09-11', 71.2, '13995456558', 1, 'ART', 2, 1, null);
insert into professor values(15029, 'renata.oliveira@gmail.com', md5('123'), 'Renata De Oliveira', 9, '1950-06-05', '1990-10-12', 76.1, '13995456559', 1, 'ART', 2, 1, null);
insert into professor values(14826, 'patapio.souza@gmail.com', md5('123'), 'Patápio Da Silva Souza', 0, '1950-06-05', '1990-01-03', 3, '13995456550', 1, 'ART', 2, 1, null);
insert into professor values(16142, 'iderli.souza@gmail.com', md5('123'), 'Iderli Lopes De Souza', 1, '1950-06-05', '1990-02-04', 687.9, '13995456551', 1, 'ART', 2, 1, null);
insert into professor values(16167, 'rosa.puttini@gmail.com', md5('123'), 'Rosa Lúcia Franco Puttini', 2, '1950-06-05', '1990-03-05', 17.8, '13995456552', 1, 'ART', 2, 1, null);
insert into professor values(16140, 'daniela.ribeiro@gmail.com', md5('123'), 'Daniela Dantas Ribeiro', 3, '1950-06-05', '1990-04-06', 26.7, '13995456553', 1, 'ART', 2, 1, null);
insert into professor values(16177, 'sandra.lima@gmail.com', md5('123'), 'Sandra Regina Santana S. Lima', 4, '1950-06-05', '1990-05-07', 35.6, '13995456554', 1, 'ART', 2, 1, null);
insert into professor values(16175, 'barbara.santos@gmail.com', md5('123'), 'Barbara Cabral Santos', 5, '1950-06-05', '1990-06-08', 44.5, '13995456555', 1, 'ART', 2, 1, null);
insert into professor values(16303, 'rivaldo.moura@gmail.com', md5('123'), 'Rivaldo José De Moura', 6, '1950-06-05', '1990-07-09', 53.4, '13995456556', 1, 'ART', 2, 1, null);
insert into professor values(16144, 'maria.mancuso@gmail.com', md5('123'), 'Maria Valéria Maneira Mancuso', 7, '1950-06-05', '1990-08-10', 62.3, '13995456557', 4, 'ART', 2, 1, null);
insert into professor values(16351, 'calica.barros@gmail.com', md5('123'), 'Calica Régia Gama De Barros', 8, '1950-06-05', '1990-09-11', 71.2, '13995456558', 1, 'ART', 2, 1, null);
insert into professor values(16337, 'ariadne.moreno@gmail.com', md5('123'), 'Ariadne Da Silva Moreno', 9, '1950-06-05', '1990-10-12', 900.1, '13995456559', 1, 'ART', 2, 1, null);
insert into professor values(16366, 'gerson.rodrigues@gmail.com', md5('123'), 'Gerson Da Silva Rodrigues', 0, '1950-06-05', '1990-01-03', 990, '13995456550', 1, 'ART', 2, 1, null);
insert into professor values(17920, 'simone.aido@gmail.com', md5('123'), 'Simone Santos Do Aido', 1, '1950-06-05', '1990-02-04', 989.9, '13995456551', 4, 'ART', 2, 1, null);
insert into professor values(17895, 'eliane.cabral@gmail.com', md5('123'), 'Eliane Silva Cabral', 2, '1950-06-05', '1990-03-05', 17.8, '13995456552', 1, 'ART', 2, 1, null);
insert into professor values(18258, 'nair.quintal@gmail.com', md5('123'), 'Nair Figueira Quintal', 3, '1950-06-05', '1990-04-06', 26.7, '13995456553', 1, 'ART', 2, 1, null);

insert into professor values(19647, 'felipe.silva@gmail.com', md5('123'), 'Felipe Aparecido De Oliveira Da Silva', 4, '1950-06-05', '1990-05-07', 35.6, '13995456554', 1, 'ART', 2, 1, null);
insert into professor values(19670, 'raimundo.lima@gmail.com', md5('123'), 'Raimundo Menezes Lima', 5, '1950-06-05', '1990-06-08', 44.5, '13995456555', 1, 'ART', 2, 1, null);
insert into professor values(20806, 'arace.fazio@gmail.com', md5('123'), 'Arace Machado Ribeiro Da S. Fazio', 6, '1950-06-05', '1990-07-09', 53.4, '13995456556', 1, 'ART', 2, 1, null);
insert into professor values(21122, 'joao.junior@gmail.com', md5('123'), 'João Carlos Bezerra Da S. Júnior', 7, '1950-06-05', '1990-08-10', 62.3, '13995456557', 1, 'ART', 2, 1, null);
insert into professor values(21121, 'carla.souza@gmail.com', md5('123'), 'Carla Bazílio De Souza', 8, '1950-06-05', '1990-09-11', 71.2, '13995456558', 1, 'ART', 2, 1, null);
insert into professor values(20754, 'renata.prado@gmail.com', md5('123'), 'Renata Santos De Jesus Prado', 9, '1950-06-05', '1990-10-12', 50.1, '13995456559', 1, 'ART', 2, 1, null);
insert into professor values(20755, 'carolina.silveira@gmail.com', md5('123'), 'Carolina Aparecida Ferreira Silveira', 0, '1950-06-05', '1990-01-03', 55, '13995456550', 1, 'ART', 2, 1, null);
insert into professor values(20831, 'rosa.carretta@gmail.com', md5('123'), 'Rosa Nair Carretta', 1, '1950-06-05', '1990-02-04', 58.59, '13995456551', 1, 'ART', 2, 1, null);
insert into professor values(20801, 'jair.peres@gmail.com', md5('123'), 'Jair Dos Santos Peres', 2, '1950-06-05', '1990-03-05', 17.8, '13995456552', 1, 'ART', 2, 1, null);
insert into professor values(21125, 'juliana.freitas@gmail.com', md5('123'), 'Juliana Ferreira De Freitas', 3, '1950-06-05', '1990-04-06', 26.7, '13995456553', 1, 'ART', 2, 1, null);
insert into professor values(21112, 'adonis.souza@gmail.com', md5('123'), 'Adonis Xavier De Souza', 4, '1950-06-05', '1990-05-07', 35.6, '13995456554', 1, 'ART', 2, 1, null);
insert into professor values(21110, 'thiago.reis@gmail.com', md5('123'), 'Thiago De Almeida Reis', 5, '1950-06-05', '1990-06-08', 44.5, '13995456555', 1, 'ART', 2, 1, null);
insert into professor values(22802, 'marcia.aguiar@gmail.com', md5('123'), 'Marcia Luiza De Farias Aguiar', 6, '1950-06-05', '1990-07-09', 53.4, '13995456556', 1, 'ART', 2, 1, null);
insert into professor values(21123, 'camila.silva@gmail.com', md5('123'), 'Camila Maria Gonçalves Da Silva', 7, '1950-06-05', '1990-08-10', 62.3, '13995456557', 1, 'ART', 2, 1, null);
insert into professor values(22899, 'jerian.cruz@gmail.com', md5('123'), 'Jerian Menezes Cruz', 8, '1950-06-05', '1990-09-11', 71.2, '13995456558', 1, 'ART', 2, 1, null);
insert into professor values(22823, 'luana.reis@gmail.com', md5('123'), 'Luana De Almeida Nunes Reis', 9, '1950-06-05', '1990-10-12', 580.1, '13995456559', 1, 'ART', 2, 1, null);
insert into professor values(22804, 'leandro.moreira@gmail.com', md5('123'), 'Leandro Barros Moreira', 0, '1950-06-05', '1990-01-03', 50, '13995456550', 1, 'ART', 2, 1, null);
insert into professor values(22803, 'jaqueline.alexandre@gmail.com', md5('123'), 'Jaqueline De Souza G. Alexandre', 1, '1950-06-05', '1990-02-04', 85.95, '13995456551', 1, 'ART', 2, 1, null);
insert into professor values(22801, 'daniela.rodrigues@gmail.com', md5('123'), 'Daniela Amaral Rodrigues', 2, '1950-06-05', '1990-03-05', 17.8, '13995456552', 1, 'ART', 2, 1, null);
insert into professor values(22896, 'vania.lima@gmail.com', md5('123'), 'Vania De Lima', 4, '1950-06-05', '1990-05-07', 35.6, '13995456554', 1, 'ART', 2, 1, null);
insert into professor values(22906, 'jaqueline.jesus@gmail.com', md5('123'), 'Jaqueline Santos De Jesus', 5, '1950-06-05', '1990-06-08', 44.5, '13995456555', 1, 'ART', 2, 1, null);
insert into professor values(23003, 'maria.garcia@gmail.com', md5('123'), 'Maria Lucia Da Silva Garcia', 6, '1950-06-05', '1990-07-09', 53.4, '13995456556', 1, 'ART', 2, 1, null);
insert into professor values(23014, 'walmir.junior@gmail.com', md5('123'), 'Walmir De Oliveira Junior', 7, '1950-06-05', '1990-08-10', 62.3, '13995456557', 1, 'ART', 2, 1, null);

insert into professor values(23025, 'cristina.fernandes@gmail.com', md5('123'), 'Cristina Senra Fernandes', 8, '1950-06-05', '1990-09-11', 71.2, '13995456558', 1, 'ART', 2, 1, null);
insert into professor values(23128, 'eliete.batista@gmail.com', md5('123'), 'Eliete Freitas Batista', 9, '1950-06-05', '1990-10-12', 10.1, '13995456559', 1, 'ART', 2, 1, null);
insert into professor values(23129, 'gabriel.brianese@gmail.com', md5('123'), 'Gabriel Arcanjo Brianese', 0, '1950-06-05', '1990-01-03', 430, '13995456550', 1, 'ART', 2, 1, null);
insert into professor values(22898, 'thamirys.fernandes@gmail.com', md5('123'), 'Thamirys Carrenho Fernandes', 1, '1950-06-05', '1990-02-04', 48.9, '13995456551', 1, 'ART', 2, 1, null);
insert into professor values(57, 'aline.temporary@gmail.com', md5('123'), 'Aline Da Silva Franca', 3, '1950-06-05', '1990-04-06', 26.7, '13995456553', 1, 'ART', 2, 1, null);
insert into professor values(58, 'quesia.temporary@gmail.com', md5('123'), 'Quesia Soares Cerqueira Oliveira', 4, '1950-06-05', '1990-05-07', 35.6, '13995456554', 1, 'ART', 2, 1, null);
insert into professor values(62, 'ana.temporary@gmail.com', md5('123'), 'Ana Paula Santos Da Silva', 5, '1950-06-05', '1990-06-08', 44.5, '13995456555', 1, 'ART', 2, 1, null);
insert into professor values(63, 'miriam.temporary@gmail.com', md5('123'), 'Miriam Julia Da Silva Vito', 6, '1950-06-05', '1990-07-09', 53.4, '13995456556', 1, 'ART', 2, 1, null);
insert into professor values(23305, 'pedro.picolo@gmail.com', md5('123'), 'Pedro Gabriel Picolo', 7, '1950-06-05', '1990-08-10', 62.3, '13995456557', 1, 'ART', 2, 1, null);
insert into professor values(3376, 'guaracy.moraes@gmail.com', md5('123'), 'Guaracy Pedro Moraes', 8, '1950-06-05', '1990-09-11', 71.2, '13995456558', 1, 'EDF', 2, 1, null);
insert into professor values(3673, 'maria.barreto@gmail.com', md5('123'), 'Maria Da Conceição R. Barreto', 9, '1950-06-05', '1990-10-12', 60.1, '13995456559', 1, 'EDF', 2, 1, null);
insert into professor values(4095, 'erinilza.sanches@gmail.com', md5('123'), 'Erinilza Sanches', 1, '1950-06-05', '1990-02-04', 86.9, '13995456551', 1, 'EDF', 2, 1, null);
insert into professor values(3493, 'maria.teixeira@gmail.com', md5('123'), 'Maria Estrela R. Teixeira', 2, '1950-06-05', '1990-03-05', 17.8, '13995456552', 1, 'EDF', 2, 1, null);
insert into professor values(4860, 'nivea.rolim@gmail.com', md5('123'), 'Nivea De Oliveira Rolim', 3, '1950-06-05', '1990-04-06', 26.7, '13995456553', 4, 'EDF', 2, 1, null);
insert into professor values(3419, 'antonio.filho@gmail.com', md5('123'), 'Antônio Addis Filho', 4, '1950-06-05', '1990-05-07', 35.6, '13995456554', 1, 'EDF', 2, 1, null);
insert into professor values(6016, 'adilson.souza@gmail.com', md5('123'), 'Adilson Xavier De Souza', 5, '1950-06-05', '1990-06-08', 44.5, '13995456555', 1, 'EDF', 2, 1, null);

insert into professor values(6540, 'ricardo.rodrigues@gmail.com', md5('123'), 'Ricardo Patero Rodrigues', 7, '1950-06-05', '1990-08-10', 62.3, '13995456557', 1, 'EDF', 2, 1, null);
insert into professor values(6646, 'valeria.machado@gmail.com', md5('123'), 'Valéria Maria R. Machado', 8, '1950-06-05', '1990-09-11', 71.2, '13995456558', 4, 'EDF', 2, 1, null);
insert into professor values(6556, 'josé.damy@gmail.com', md5('123'), 'José Henrique Salgado Damy', 9, '1950-06-05', '1990-10-12', 80.1, '13995456559', 1, 'EDF', 2, 1, null);
insert into professor values(7755, 'thelma.figueiredo@gmail.com', md5('123'), 'Thelma Lopes De Figueiredo', 1, '1950-06-05', '1990-02-04', 8.9, '13995456551', 1, 'EDF', 2, 1, null);
insert into professor values(8071, 'alberto.neto@gmail.com', md5('123'), 'Alberto Pires De Faria Neto', 3, '1950-06-05', '1990-04-06', 26.7, '13995456553', 1, 'EDF', 2, 1, null);
insert into professor values(5142, 'marilza.silveira@gmail.com', md5('123'), 'Marilza Ferreira Da Silveira', 5, '1950-06-05', '1990-06-08', 44.5, '13995456555', 1, 'EDF', 2, 1, null);
insert into professor values(8412, 'marco.alves@gmail.com', md5('123'), 'Marco Antônio F. Alves', 6, '1950-06-05', '1990-07-09', 53.4, '13995456556', 1, 'EDF', 2, 1, null);
insert into professor values(6784, 'cristina.fontes@gmail.com', md5('123'), 'Cristina Maria Dos S. A. Fontes', 7, '1950-06-05', '1990-08-10', 62.3, '13995456557', 1, 'EDF', 2, 1, null);
insert into professor values(9567, 'antônio.marques@gmail.com', md5('123'), 'Antônio Carlos Meneses Marques', 8, '1950-06-05', '1990-09-11', 71.2, '13995456558', 1, 'EDF', 2, 1, null);
insert into professor values(7696, 'paulo.mantovanelli@gmail.com', md5('123'), 'Paulo Fernando Mantovanelli', 9, '1950-06-05', '1990-10-12', 80.1, '13995456559', 1, 'EDF', 2, 1, null);
insert into professor values(4065, 'ayrton.ferreira@gmail.com', md5('123'), 'Ayrton Santos Ferreira', 0, '1950-06-05', '1990-01-03', 0, '13995456550', 1, 'EDF', 2, 1, null);
insert into professor values(10302, 'marisa.oliveira@gmail.com', md5('123'), 'Marisa Bueno De Oliveira', 2, '1950-06-05', '1990-03-05', 17.8, '13995456552', 1, 'EDF', 2, 1, null);
insert into professor values(3871, 'sonia.reis@gmail.com', md5('123'), 'Sonia Maria Ferreira Dos Reis', 3, '1950-06-05', '1990-04-06', 26.7, '13995456553', 1, 'EDF', 2, 1, null);
insert into professor values(12520, 'zoélio.siqueira@gmail.com', md5('123'), 'Zoélio Garcia Siqueira', 4, '1950-06-05', '1990-05-07', 35.6, '13995456554', 1, 'EDF', 2, 1, null);
insert into professor values(10984, 'francisco.castro@gmail.com', md5('123'), 'Francisco José De Castro', 5, '1950-06-05', '1990-06-08', 44.5, '13995456555', 1, 'EDF', 2, 1, null);
insert into professor values(10987, 'edson.santos@gmail.com', md5('123'), 'Edson Dos Santos', 6, '1950-06-05', '1990-07-09', 53.4, '13995456556', 1, 'EDF', 2, 1, null);
insert into professor values(10636, 'aguinaldo.gomes@gmail.com', md5('123'), 'Aguinaldo De Abreu Gomes', 7, '1950-06-05', '1990-08-10', 62.3, '13995456557', 4, 'EDF', 2, 1, null);
insert into professor values(11065, 'roberto.martini@gmail.com', md5('123'), 'Roberto Gonçalves Martini', 8, '1950-06-05', '1990-09-11', 71.2, '13995456558', 1, 'EDF', 2, 1, null);
insert into professor values(10642, 'adriana.cruz@gmail.com', md5('123'), 'Adriana Jordão De M. Cruz', 9, '1950-06-05', '1990-10-12', 60.1, '13995456559', 4, 'EDF', 2, 1, null);
insert into professor values(11053, 'marcos.costa@gmail.com', md5('123'), 'Marcos Renato De C. Costa', 0, '1950-06-05', '1990-01-03', 87.6, '13995456550', 1, 'EDF', 2, 1, null);
insert into professor values(10989, 'yone.ribeiro@gmail.com', md5('123'), 'Yone Barbosa Ribeiro', 1, '1950-06-05', '1990-02-04', 93.9, '13995456551', 1, 'EDF', 2, 1, null);
insert into professor values(10993, 'luiz.pietroluongo@gmail.com', md5('123'), 'Luiz Fernando Pietroluongo', 3, '1950-06-05', '1990-04-06', 26.7, '13995456553', 1, 'EDF', 2, 1, null);
insert into professor values(11064, 'rosana.silva@gmail.com', md5('123'), 'Rosana Rodrigues Da Silva', 4, '1950-06-05', '1990-05-07', 35.6, '13995456554', 1, 'EDF', 2, 1, null);
insert into professor values(11060, 'patrícia.faria@gmail.com', md5('123'), 'Patrícia Munhoz De Faria', 5, '1950-06-05', '1990-06-08', 44.5, '13995456555', 1, 'EDF', 2, 1, null);
insert into professor values(11037, 'cintia.freitas@gmail.com', md5('123'), 'Cintia Maria Silva Freitas', 6, '1950-06-05', '1990-07-09', 53.4, '13995456556', 1, 'EDF', 2, 1, null);

insert into professor values(10990,'jose.silva@gmail.com',md5('123'),'José Cícero F. da Silva',7,'1950-06-05','1990-08-10',62.3,'13995456557',1,'EDF',2,1,null);
insert into professor values(12900,'ida.rodrigues@gmail.com',md5('123'),'Ida Pena Rodrigues',8,'1950-06-05','1990-09-11',709.2,'13995456558',1,'EDF',2,1,null);
insert into professor values(12969,'marcos.davies@gmail.com',md5('123'),'Marcos Antônio Pinto Davies',9,'1950-06-05','1990-10-12',809.1,'13995456559',1,'EDF',2,1,null);
insert into professor values(10986,'claudia.martini@gmail.com',md5('123'),'Claudia da Silva M. Martini',0,'1950-06-05','1990-01-03',90,'13995456550',1,'EDF',2,1,null);
insert into professor values(11483,'fábio.gracia@gmail.com',md5('123'),'Fábio José Gracia',1,'1950-06-05','1990-02-04',98.9,'13995456551',1,'EDF',2,1,null);
insert into professor values(12979,'gilmar.santos@gmail.com',md5('123'),'Gilmar dos Santos',2,'1950-06-05','1990-03-05',17.8,'13995456552',1,'EDF',2,1,null);
insert into professor values(12932,'josete.gouveia@gmail.com',md5('123'),'Josete Teixeira Gouveia',3,'1950-06-05','1990-04-06',26.7,'13995456553',1,'EDF',2,1,null);
insert into professor values(10500,'andréia.guimarães@gmail.com',md5('123'),'Andréa de Oliveira Moraes Guimarães',4,'1950-06-05','1990-05-07',35.6,'13995456554',1,'EDF',2,1,null);
insert into professor values(12934,'marco.cerqueira@gmail.com',md5('123'),'Marco Antônio da Cruz Cerqueira',5,'1950-06-05','1990-06-08',44.5,'13995456555',1,'EDF',2,1,null);
insert into professor values(5798,'rui.quadros@gmail.com',md5('123'),'Rui Alberto de Quadros',7,'1950-06-05','1990-08-10',62.3,'13995456557',1,'EDF',2,1,null);
insert into professor values(11504,'iracema.santos@gmail.com',md5('123'),'Iracema da Silva Santos',8,'1950-06-05','1990-09-11',71.2,'13995456558',1,'EDF',2,1,null);
insert into professor values(12928,'paulo.lopes@gmail.com',md5('123'),'Paulo Sérgio Lopes',0,'1950-06-05','1990-01-03',0,'13995456550',1,'EDF',2,1,null);
insert into professor values(8220,'sinara.barroso@gmail.com',md5('123'),'Sinara Maria Barroso',1,'1950-06-05','1990-02-04',8.9,'13995456551',1,'EDF',2,1,null);
insert into professor values(12887,'claudia.olmos@gmail.com',md5('123'),'Claudia Lopes de F. Olmos',2,'1950-06-05','1990-03-05',17.8,'13995456552',1,'EDF',2,1,null);
insert into professor values(13252,'ana.deus@gmail.com',md5('123'),'Ana Cláudia de Deus',4,'1950-06-05','1990-05-07',35.6,'13995456554',1,'EDF',2,1,null);
insert into professor values(10291,'solange.reis@gmail.com',md5('123'),'Solange Silva Reis',5,'1950-06-05','1990-06-08',44.5,'13995456555',1,'EDF',2,1,null);

insert into professor values(12518,'andre.silva@gmail.com',md5('123'),'André Luiz Barbosa da Silva',6,'1950-06-05','1990-07-09',53.4,'13995456556',1,'EDF',2,1,null);
insert into professor values(12909,'marcilene.santos@gmail.com',md5('123'),'Marcilene Araújo dos Santos',7,'1950-06-05','1990-08-10',62.3,'13995456557',1,'EDF',2,1,null);
insert into professor values(12976,'suzi.dambrosio@gmail.com',md5('123'),'Suzi Mara R. Dambrosio',8,'1950-06-05','1990-09-11',651.2,'13995456558',1,'EDF',2,1,null);
insert into professor values(12977,'isabel.kuribara@gmail.com',md5('123'),'Isabel Cristina de Oliveira Kuribara',9,'1950-06-05','1990-10-12',88.1,'13995456559',1,'EDF',2,1,null);
insert into professor values(11848,'luciana.monteiro@gmail.com',md5('123'),'Luciana Leão Ferreira de O. Monteiro',0,'1950-06-05','1990-01-03',20,'13995456550',1,'EDF',2,1,null);
insert into professor values(13057,'margareth.silva@gmail.com',md5('123'),'Margareth Farias da Silva',2,'1950-06-05','1990-03-05',17.8,'13995456552',1,'EDF',2,1,null);
insert into professor values(8381,'nilton.menezes@gmail.com',md5('123'),'Nilton Martins de Menezes',3,'1950-06-05','1990-04-06',26.7,'13995456553',1,'EDF',2,1,null);
insert into professor values(3867,'mara.duart@gmail.com',md5('123'),'Mara de Goes Duart',4,'1950-06-05','1990-05-07',35.6,'13995456554',1,'EDF',2,1,null);
insert into professor values(12927,'graziella.gonçalves@gmail.com',md5('123'),'Graziella Cabral Gonçalves',5,'1950-06-05','1990-06-08',44.5,'13995456555',1,'EDF',2,1,null);
insert into professor values(12958,'juliana.pereira@gmail.com',md5('123'),'Juliana Leão Pereira',6,'1950-06-05','1990-07-09',53.4,'13995456556',1,'EDF',2,1,null);
insert into professor values(12943,'silvana.flamini@gmail.com',md5('123'),'Silvana Mombelli Flamini',7,'1950-06-05','1990-08-10',62.3,'13995456557',1,'EDF',2,1,null);
insert into professor values(13050,'antônio.junior@gmail.com',md5('123'),'Antônio Carlos Braz C. Junior',8,'1950-06-05','1990-09-11',71.2,'13995456558',1,'EDF',2,1,null);
insert into professor values(12935,'claudia.santos@gmail.com',md5('123'),'Claudia Carvalho de Oliveira Santos',9,'1950-06-05','1990-10-12',24.1,'13995456559',1,'EDF',2,1,null);
insert into professor values(12963,'eduardo.alves@gmail.com',md5('123'),'Eduardo Alves',0,'1950-06-05','1990-01-03',14,'13995456550',1,'EDF',2,1,null);

insert into professor values(12947,'marcello.santos@gmail.com',md5('123'),'Marcello Ferraz dos Santos',1,'1950-06-05','1990-02-04',8.9,'13995456551',1,'EDF',2,1,null);
insert into professor values(13051,'alcides.junior@gmail.com',md5('123'),'Alcides Magri Junior',2,'1950-06-05','1990-03-05',17.8,'13995456552',1,'EDF',2,1,null);
insert into professor values(13055,'silvio.cardoso@gmail.com',md5('123'),'Silvio Luiz Cardoso',3,'1950-06-05','1990-04-06',26.7,'13995456553',1,'EDF',2,1,null);
insert into professor values(13060,'júlio.dias@gmail.com',md5('123'),'Júlio Cesar Dias',4,'1950-06-05','1990-05-07',35.6,'13995456554',1,'EDF',2,1,null);
insert into professor values(13095,'marcos.filho@gmail.com',md5('123'),'Marcos Cortez Filho',5,'1950-06-05','1990-06-08',44.5,'13995456555',1,'EDF',2,1,null);
insert into professor values(13097,'walmir.dias@gmail.com',md5('123'),'Walmir Dias',6,'1950-06-05','1990-07-09',53.4,'13995456556',4,'EDF',2,1,null);
insert into professor values(13096,'maria.scandelaí@gmail.com',md5('123'),'Maria Angélica R. J. Scandelaí',7,'1950-06-05','1990-08-10',62.3,'13995456557',1,'EDF',2,1,null);
insert into professor values(13240,'fernando.oliveira@gmail.com',md5('123'),'Fernando Andrade de Oliveira',8,'1950-06-05','1990-09-11',71.2,'13995456558',1,'EDF',2,1,null);
insert into professor values(13234,'maria.moraes@gmail.com',md5('123'),'Maria Aparecida Deodoro de Moraes',9,'1950-06-05','1990-10-12',80.1,'13995456559',1,'EDF',2,1,null);
insert into professor values(13249,'nanci.nusa@gmail.com',md5('123'),'Nanci de Menezes Nusa',1,'1950-06-05','1990-02-04',42.9,'13995456551',1,'EDF',2,1,null);
insert into professor values(13238,'roberto.júnior@gmail.com',md5('123'),'Roberto Malheiros Júnior',2,'1950-06-05','1990-03-05',17.8,'13995456552',1,'EDF',2,1,null);
insert into professor values(13284,'sidnei.corrêa@gmail.com',md5('123'),'Sidnei Fernando Corrêa',3,'1950-06-05','1990-04-06',26.7,'13995456553',1,'EDF',2,1,null);
insert into professor values(13282,'surama.bezerra@gmail.com',md5('123'),'Surama Aparecida Bezerra',4,'1950-06-05','1990-05-07',35.6,'13995456554',1,'EDF',2,1,null);

insert into professor values(13237,'rodney.rodrigues@gmail.com',md5('123'),'Rodney de Souza Rodrigues',5,'1950-06-05','1990-06-08',44.5,'13995456555',1,'EDF',2,1,null);
insert into professor values(14806,'mária.souza@gmail.com',md5('123'),'Márcia Borges de Souza',6,'1950-06-05','1990-07-09',53.4,'13995456556',1,'EDF',2,1,null);
insert into professor values(14802,'luci.gomes@gmail.com',md5('123'),'Luci Cristina Afonso Gomes',7,'1950-06-05','1990-08-10',62.3,'13995456557',1,'EDF',2,1,null);
insert into professor values(15028,'hugo.campos@gmail.com',md5('123'),'Hugo Duarte Campos',8,'1950-06-05','1990-09-11',54.2,'13995456558',1,'EDF',2,1,null);
insert into professor values(14804,'juliana.fonseca@gmail.com',md5('123'),'Juliana Fátima dos Santos Fonseca',9,'1950-06-05','1990-10-12',980.1,'13995456559',1,'EDF',2,1,null);
insert into professor values(14799,'josé.lima@gmail.com',md5('123'),'José Ferreira Lima',0,'1950-06-05','1990-01-03',14.12,'13995456550',1,'EDF',2,1,null);
insert into professor values(14797,'gabriela.souza@gmail.com',md5('123'),'Gabriela Correia de Souza',1,'1950-06-05','1990-02-04',38.9,'13995456551',1,'EDF',2,1,null);
insert into professor values(14792,'alessandro.morelli@gmail.com',md5('123'),'Alessandro Morelli',2,'1950-06-05','1990-03-05',17.8,'13995456552',1,'EDF',2,1,null);
insert into professor values(14822,'débora.santos@gmail.com',md5('123'),'Débora Moraes Frik dos Santos',3,'1950-06-05','1990-04-06',26.7,'13995456553',1,'EDF',2,1,null);
insert into professor values(14828,'teresa.silva@gmail.com',md5('123'),'Teresa Christina Araújo da Silva',4,'1950-06-05','1990-05-07',35.6,'13995456554',1,'EDF',2,1,null);
insert into professor values(14944,'dalva.fujii@gmail.com',md5('123'),'Dalva Andréa Nascimento da Silva Fujii',5,'1950-06-05','1990-06-08',44.5,'13995456555',1,'EDF',2,1,null);
insert into professor values(14945,'elizabeth.silva@gmail.com',md5('123'),'Elizabeth Nunes da Silva',7,'1950-06-05','1990-08-10',62.3,'13995456557',1,'EDF',2,1,null);
insert into professor values(14949,'sueli.santos@gmail.com',md5('123'),'Sueli dos Santos',8,'1950-06-05','1990-09-11',79.2,'13995456558',1,'EDF',2,1,null);

insert into professor values(14946,'luciana.barbosa@gmail.com',md5('123'),'Luciana da Costa Pinto Barbosa',9,'1950-06-05','1990-10-12',80.1,'13995456559',2,'EDF',2,1,null);
insert into professor values(14948,'fábio.marques@gmail.com',md5('123'),'Fábio Marques',0,'1950-06-05','1990-01-03',0,'13995456550',2,'EDF',2,1,null);
insert into professor values(16143,'catia.silva@gmail.com',md5('123'),'Cátia de Souza Silva',1,'1950-06-05','1990-02-04',1,'13995456551',2,'EDF',2,1,null);
insert into professor values(16320,'valdemir.silva@gmail.com',md5('123'),'Valdemir Genuino da Silva',6,'1950-06-05','1990-07-09',53.4,'13995456556',2,'EDF',2,1,null);
insert into professor values(16355,'irenildo.lopes@gmail.com',md5('123'),'Irenildo Carlos Trajano Lopes',7,'1950-06-05','1990-08-10',62.3,'13995456557',2,'EDF',2,1,null);
insert into professor values(16363,'doroti.pasquantonio@gmail.com',md5('123'),'Doroti Aparecida Pasquantonio',8,'1950-06-05','1990-09-11',341.2,'13995456558',2,'EDF',2,1,null);
insert into professor values(18091,'andrè.zucolo@gmail.com',md5('123'),'André Chang Menassi Zucolo',9,'1950-06-05','1990-10-12',96.1,'13995456559',2,'EDF',2,1,null);
insert into professor values(18254,'andrè.romualdo@gmail.com',md5('123'),'André Luiz Seixas Romualdo',0,'1950-06-05','1990-01-03',3,'13995456550',2,'EDF',2,1,null);
insert into professor values(18255,'carla.rodrigues@gmail.com',md5('123'),'Carla Cristina M. Inácio Rodrigues',1,'1950-06-05','1990-02-04',56,'13995456551',2,'EDF',2,1,null);
insert into professor values(18279,'roniel.oliveira@gmail.com',md5('123'),'Roniel Delion N. Mathias de Oliveira',2,'1950-06-05','1990-03-05',17.8,'13995456552',2,'EDF',2,1,null);
insert into professor values(18253,'ari.filho@gmail.com',md5('123'),'Ari Cunha Filho',3,'1950-06-05','1990-04-06',26.7,'13995456553',2,'EDF',2,1,null);
insert into professor values(18252,'juliano.rolim@gmail.com',md5('123'),'Juliano Costa Rolim',4,'1950-06-05','1990-05-07',35.6,'13995456554',2,'EDF',2,1,null);
insert into professor values(18256,'daniel.barreiro@gmail.com',md5('123'),'Daniel Midoli Soto Barreiro',5,'1950-06-05','1990-06-08',44.5,'13995456555',2,'EDF',2,1,null);
insert into professor values(14,'thiago.temporario@gmail.com',md5('123'),'Thiago Rodrigues de Souza Santana',6,'1950-06-05','1990-07-09',53.4,'13995456556',2,'EDF',2,1,null);

insert into professor values(21,'brenda.temporario@gmail.com',md5('123'),'Brenda Moura Cavalcante',7,'1950-06-05','1990-08-10',78.3,'13995456557',1,'EDF',2,1,null);
insert into professor values(41,'aurea.temporario@gmail.com',md5('123'),'Aurea de Souza Porta Pereira',8,'1950-06-05','1990-09-11',91.2,'13995456558',1,'EDF',2,1,null);
insert into professor values(122,'andressa.temporario@gmail.com',md5('123'),'Andressa Silva Quaresma Santos',0,'1950-06-05','1990-01-03',2,'13995456550',1,'EDF',2,1,null);
insert into professor values(123,'carlos.temporario@gmail.com',md5('123'),'Carlos Eduardo do Nascimento',1,'1950-06-05','1990-02-04',93.9,'13995456551',1,'EDF',2,1,null);
insert into professor values(125,'andrea.temporario@gmail.com',md5('123'),'Andrea Barreto Nardes dos Santos',2,'1950-06-05','1990-03-05',17.8,'13995456552',1,'EDF',2,1,null);
insert into professor values(126,'niceia.temporario@gmail.com',md5('123'),'Niceia Ferreira',3,'1950-06-05','1990-04-06',26.65,'13995456553',1,'EDF',2,1,null);
insert into professor values(128,'tatiane.temporario@gmail.com',md5('123'),'Tatiane da Costa Simões',4,'1950-06-05','1990-05-07',35.6,'13995456554',2,'EDF',2,1,null);
insert into professor values(129,'mariana.temporario@gmail.com',md5('123'),'Mariana Santiago Sauda',5,'1950-06-05','1990-06-08',44.59,'13995456555',1,'EDF',2,1,null);
insert into professor values(131,'josilene.temporario@gmail.com',md5('123'),'Josilene Avelino de Araujo Justino',6,'1950-06-05','1990-07-09',53.4,'13995456556',1,'EDF',2,1,null);
insert into professor values(133,'danielle.temporario@gmail.com',md5('123'),'Danielle de Lima Pereira',7,'1950-06-05','1990-08-10',62.3,'13995456557',1,'EDF',2,1,null);
insert into professor values(135,'alex.temporario@gmail.com',md5('123'),'Alex Paulino da Silva',8,'1950-06-05','1990-09-11',81.2,'13995456558',1,'EDF',2,1,null);
insert into professor values(136,'natalia.temporario@gmail.com',md5('123'),'Natalia Cristina Costa Carvalho',9,'1950-06-05','1990-10-12',21.1,'13995456559',2,'EDF',2,1,null);
insert into professor values(137,'rosalva.temporario@gmail.com',md5('123'),'Rosalva Gil dos Santos de Rossi',0,'1950-06-05','1990-01-03',0,'13995456550',1,'EDF',2,1,null);
insert into professor values(139,'flaviana.temporario@gmail.com',md5('123'),'Flaviana Paula Santiago',1,'1950-06-05','1990-02-04',10,'13995456551',1,'EDF',2,1,null);

insert into professor values(140,'maria.temporario@gmail.com',md5('123'),'Maria Katia Leite Araujo',2,'1950-06-05','1990-03-05',17.8,'13995456552',1,'EDF',2,1,null);
insert into professor values(141,'amanda.temporario@gmail.com',md5('123'),'Amanda Homsi dos Passos Tavares Pereira',3,'1950-06-05','1990-04-06',26.7,'13995456553',1,'EDF',2,1,null);
insert into professor values(145,'taliani.temporario@gmail.com',md5('123'),'Taliani Sagas do Amparo',4,'1950-06-05','1990-05-07',35.6,'13995456554',1,'EDF',2,1,null);
insert into professor values(147,'maria.temporario@gmail.com',md5('123'),'Maria Paula da Silva Matheus Nascimento',5,'1950-06-05','1990-06-08',44.5,'13995456555',1,'EDF',2,1,null);
insert into professor values(51,'marcia.temporario@gmail.com',md5('123'),'Marcia Regina de Oliveira',7,'1950-06-05','1990-08-10',62.3,'13995456557',1,'EDF',2,1,null);
insert into professor values(60,'roseane.temporario@gmail.com',md5('123'),'Roseane Aparecida dos Santos Dias',8,'1950-06-05','1990-09-11',6.2,'13995456558',1,'EDF',2,1,null);
insert into professor values(68,'elielma.temporario@gmail.com',md5('123'),'Elielma dos Santos Nery Xavier',9,'1950-06-05','1990-10-12',86.1,'13995456559',1,'EDF',2,1,null);
insert into professor values(73,'jorgina.temporario@gmail.com',md5('123'),'Jorgina Felix Ferreira',0,'1950-06-05','1990-01-03',0,'13995456550',1,'EDF',2,1,null);
insert into professor values(82,'juliana.temporario@gmail.com',md5('123'),'Juliana Tavares Bueno',2,'1950-06-05','1990-03-05',17.8,'13995456552',1,'EDF',2,1,null);
insert into professor values(87,'lara.temporario@gmail.com',md5('123'),'Lara Tramontina Diniz Campos',4,'1950-06-05','1990-05-07',35.6,'13995456554',1,'EDF',2,1,null);
insert into professor values(23543,'thamirys.lemos@gmail.com',md5('123'),'Thamirys Oliveira Lemos',2,'1950-06-05','1990-03-05',8.8,'13995456552',1,'PORT',2,1,null);
insert into professor values(23545,'patricia.ferreira@gmail.com',md5('123'),'Patricia de Santana Ferreira',3,'1950-06-05','1990-04-06',26.7,'13995456553',1,'NC',1,1,null);

-- instituicao_Professores
insert into instituicao_professor values (6,'maria.camargo@gmail.com',0,2021, null);
insert into instituicao_professor values (6,'primeiro.maio@gmail.com',1,2001, null);
insert into instituicao_professor values (14,'lucia.santos@gmail.com',0,2021, null);
insert into instituicao_professor values (14,'primeiro.maio@gmail.com',1,2001, null);
insert into instituicao_professor values (21,'benedita.gonzalez@gmail.com',0,2021, null);
insert into instituicao_professor values (21,'dirce.gracia@gmail.com',1,2001, null);
insert into instituicao_professor values (22,'dirce.gracia@gmail.com',1,2001, null);
insert into instituicao_professor values (22,'francisco.figueiredo@gmail.com',0,2021, null);
insert into instituicao_professor values (26,'lucimara.vicente@gmail.com',1,2001, null);
insert into instituicao_professor values (26,'primeiro.maio@gmail.com',0,2021, null);
insert into instituicao_professor values (30,'dirce.gracia@gmail.com',0,2021, null);
insert into instituicao_professor values (30,'lucimara.vicente@gmail.com',1,2001, null);
insert into instituicao_professor values (31,'francisco.figueiredo@gmail.com',0,2021, null);
insert into instituicao_professor values (31,'maria.araujo@gmail.com',1,2001, null);
insert into instituicao_professor values (38,'maria.araujo@gmail.com',1,2001, null);
insert into instituicao_professor values (38,'primeiro.maio@gmail.com',0,2021, null);
insert into instituicao_professor values (41,'ivonete.camara@gmail.com',0,2021, null);
insert into instituicao_professor values (41,'lucia.santos@gmail.com',1,2001, null);
insert into instituicao_professor values (42,'ary.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (42,'maria.araujo@gmail.com',0,2001, null);
insert into instituicao_professor values (47,'francisco.figueiredo@gmail.com',1,2001, null);
insert into instituicao_professor values (47,'gladston.jafet@gmail.com',0,2021, null);
insert into instituicao_professor values (51,'lucimara.vicente@gmail.com',0,2021, null);
insert into instituicao_professor values (51,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (55,'benedita.gonzalez@gmail.com',1,2001, null);
insert into instituicao_professor values (55,'maria.araujo@gmail.com',0,2021, null);
insert into instituicao_professor values (57,'benedita.gonzalez@gmail.com',1,2001, null);
insert into instituicao_professor values (57,'ivonete.camara@gmail.com',0,2021, null);
insert into instituicao_professor values (58,'ary.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (58,'gladston.jafet@gmail.com',0,2021, null);
insert into instituicao_professor values (60,'dirce.gracia@gmail.com',1,2001, null);
insert into instituicao_professor values (60,'lucimara.vicente@gmail.com',0,2021, null);
insert into instituicao_professor values (62,'ary.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (62,'maria.camargo@gmail.com',0,2021, null);
insert into instituicao_professor values (63,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (63,'primeiro.maio@gmail.com',0,2021, null);
insert into instituicao_professor values (68,'ary.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (68,'lucia.santos@gmail.com',0,2021, null);
insert into instituicao_professor values (73,'ivonete.camara@gmail.com',0,2021, null);
insert into instituicao_professor values (73,'lucimara.vicente@gmail.com',1,2001, null);
insert into instituicao_professor values (77,'lucia.santos@gmail.com',1,2001, null);
insert into instituicao_professor values (77,'maria.camargo@gmail.com',0,2021, null);
insert into instituicao_professor values (78,'benedita.gonzalez@gmail.com',1,2001, null);
insert into instituicao_professor values (78,'francisco.figueiredo@gmail.com',0,2021, null);
insert into instituicao_professor values (82,'francisco.figueiredo@gmail.com',0,2021, null);
insert into instituicao_professor values (82,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (85,'benedita.gonzalez@gmail.com',1,2001, null);
insert into instituicao_professor values (85,'dirce.gracia@gmail.com',0,2021, null);
insert into instituicao_professor values (86,'ary.souza@gmail.com',0,2021, null);
insert into instituicao_professor values (86,'lucimara.vicente@gmail.com',1,2001, null);
insert into instituicao_professor values (87,'lucimara.vicente@gmail.com',1,2001, null);
insert into instituicao_professor values (87,'maria.camargo@gmail.com',0,2021, null);
insert into instituicao_professor values (90,'francisco.figueiredo@gmail.com',1,2001, null);
insert into instituicao_professor values (90,'lucimara.vicente@gmail.com',0,2021, null);
insert into instituicao_professor values (122,'benedita.gonzalez@gmail.com',0,2021, null);
insert into instituicao_professor values (122,'primeiro.maio@gmail.com',1,2001, null);
insert into instituicao_professor values (123,'dirce.gracia@gmail.com',1,2001, null);
insert into instituicao_professor values (123,'ivonete.camara@gmail.com',0,2021, null);
insert into instituicao_professor values (125,'ivonete.camara@gmail.com',0,2021, null);
insert into instituicao_professor values (125,'maria.araujo@gmail.com',1,2001, null);
insert into instituicao_professor values (126,'lucimara.vicente@gmail.com',0,2021, null);
insert into instituicao_professor values (126,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (128,'ary.souza@gmail.com',0,2021, null);
insert into instituicao_professor values (128,'dirce.gracia@gmail.com',1,2001, null);
insert into instituicao_professor values (129,'benedita.gonzalez@gmail.com',0,2021, null);
insert into instituicao_professor values (129,'lucia.santos@gmail.com',1,2001, null);
insert into instituicao_professor values (131,'lucimara.vicente@gmail.com',1,2001, null);
insert into instituicao_professor values (133,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (133,'lucimara.vicente@gmail.com',0,2021, null);
insert into instituicao_professor values (135,'lucimara.vicente@gmail.com',1,2001, null);
insert into instituicao_professor values (136,'ary.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (136,'lucia.santos@gmail.com',0,2021, null);
insert into instituicao_professor values (137,'dirce.gracia@gmail.com',0,2021, null);
insert into instituicao_professor values (137,'primeiro.maio@gmail.com',1,2001, null);
insert into instituicao_professor values (139,'lucia.santos@gmail.com',0,2021, null);
insert into instituicao_professor values (139,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (140,'gladston.jafet@gmail.com',0,2021, null);
insert into instituicao_professor values (140,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (141,'lucia.santos@gmail.com',1,2001, null);
insert into instituicao_professor values (141,'maria.araujo@gmail.com',0,2021, null);
insert into instituicao_professor values (145,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (145,'lucia.santos@gmail.com',0,2021, null);
insert into instituicao_professor values (147,'francisco.figueiredo@gmail.com',0,2021, null);
insert into instituicao_professor values (147,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (1183,'gladston.jafet@gmail.com',1,2001, null);
insert into instituicao_professor values (3173,'dirce.gracia@gmail.com',1,2001, null);
insert into instituicao_professor values (3173,'francisco.figueiredo@gmail.com',0,2021, null);
insert into instituicao_professor values (3239,'antonio.almeida@gmail.com',1,2001, null);
insert into instituicao_professor values (3376,'francisco.figueiredo@gmail.com',1,2001, null);
insert into instituicao_professor values (3376,'maria.camargo@gmail.com',0,2021, null);
insert into instituicao_professor values (3419,'francisco.figueiredo@gmail.com',0,2021, null);
insert into instituicao_professor values (3419,'maria.araujo@gmail.com',1,2001, null);
insert into instituicao_professor values (3493,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (3550,'gladston.jafet@gmail.com',1,2001, null);
insert into instituicao_professor values (3550,'maria.camargo@gmail.com',0,2021, null);
insert into instituicao_professor values (3592,'myrian.millborn@gmail.com',1,2001, null);
insert into instituicao_professor values (3606,'ary.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (3673,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (3788,'angelina.daige@gmail.com',1,2001, null);
insert into instituicao_professor values (3859,'catarina.salgado@gmail.com',1,2001, null);
insert into instituicao_professor values (3860,'paulo.freire@gmail.com',1,2001, null);
insert into instituicao_professor values (3864,'jose.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (3867,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (3871,'benedita.gonzalez@gmail.com',0,2021, null);
insert into instituicao_professor values (3871,'dirce.gracia@gmail.com',1,2001, null);
insert into instituicao_professor values (3914,'domenico.rangoni@gmail.com',1,2001, null);
insert into instituicao_professor values (3935,'ary.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (3935,'maria.camargo@gmail.com',0,2021, null);
insert into instituicao_professor values (3992,'afonso.nunes@gmail.com',1,2001, null);
insert into instituicao_professor values (4065,'benedita.gonzalez@gmail.com',0,2021, null);
insert into instituicao_professor values (4065,'maria.araujo@gmail.com',1,2001, null);
insert into instituicao_professor values (4095,'maria.araujo@gmail.com',0,2021, null);
insert into instituicao_professor values (4095,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (4099,'oswaldo.cruz@gmail.com',1,2001, null);
insert into instituicao_professor values (4119,'primeiro.maio@gmail.com',1,2001, null);
insert into instituicao_professor values (4215,'maria.eunice@gmail.com',1,2001, null);
insert into instituicao_professor values (4218,'dirce.gracia@gmail.com',1,2001, null);
insert into instituicao_professor values (4218,'lucia.santos@gmail.com',0,2021, null);
insert into instituicao_professor values (4340,'herminia.vitiello@gmail.com',1,2001, null);
insert into instituicao_professor values (4527,'ivonete.camara@gmail.com',0,2021, null);
insert into instituicao_professor values (4527,'maria.araujo@gmail.com',1,2001, null);
insert into instituicao_professor values (4537,'maria.araujo@gmail.com',0,2021, null);
insert into instituicao_professor values (4537,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (4567,'ernesto.sobrinho@gmail.com',1,2001, null);
insert into instituicao_professor values (4578,'philomena.cardoso@gmail.com',1,2001, null);
insert into instituicao_professor values (4581,'philomena.cardoso@gmail.com',1,2001, null);
insert into instituicao_professor values (4584,'ivonete.camara@gmail.com',0,2021, null);
insert into instituicao_professor values (4584,'primeiro.maio@gmail.com',1,2001, null);
insert into instituicao_professor values (4585,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (4671,'joao.oliveira@gmail.com',1,2001, null);
insert into instituicao_professor values (4679,'marina.daige@gmail.com',1,2001, null);
insert into instituicao_professor values (4691,'magdalena.lourenco@gmail.com',1,2001, null);
insert into instituicao_professor values (4702,'myrian.millborn@gmail.com',1,2001, null);
insert into instituicao_professor values (4704,'dirce.gracia@gmail.com',1,2001, null);
insert into instituicao_professor values (4704,'francisco.figueiredo@gmail.com',0,2021, null);
insert into instituicao_professor values (4771,'antonio.almeida@gmail.com',1,2001, null);
insert into instituicao_professor values (4772,'francisco.figueiredo@gmail.com',1,2001, null);
insert into instituicao_professor values (4772,'maria.araujo@gmail.com',0,2021, null);
insert into instituicao_professor values (4785,'valeria.vieira@gmail.com',1,2001, null);
insert into instituicao_professor values (4827,'maria.araujo@gmail.com',0,2021, null);
insert into instituicao_professor values (4827,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (4848,'angelina.daige@gmail.com',1,2001, null);
insert into instituicao_professor values (4860,'primeiro.maio@gmail.com',1,2001, null);
insert into instituicao_professor values (5008,'guilherme.furlani@gmail.com',1,2001, null);
insert into instituicao_professor values (5021,'dirce.gracia@gmail.com',1,2001, null);
insert into instituicao_professor values (5021,'ivonete.camara@gmail.com',0,2021, null);
insert into instituicao_professor values (5053,'maria.teixeira@gmail.com',1,2001, null);
insert into instituicao_professor values (5064,'benedita.gonzalez@gmail.com',0,2021, null);
insert into instituicao_professor values (5064,'maria.araujo@gmail.com',1,2001, null);
insert into instituicao_professor values (5065,'afonso.nunes@gmail.com',1,2001, null);
insert into instituicao_professor values (5082,'jacirema.fontes@gmail.com',1,2001, null);
insert into instituicao_professor values (5112,'adelaide.fernandes@gmail.com',1,2001, null);
insert into instituicao_professor values (5130,'ary.souza@gmail.com',0,2021, null);
insert into instituicao_professor values (5130,'francisco.figueiredo@gmail.com',1,2001, null);
insert into instituicao_professor values (5135,'augusto.antunes@gmail.com',1,2001, null);
insert into instituicao_professor values (5136,'primeiro.maio@gmail.com',1,2001, null);
insert into instituicao_professor values (5142,'ary.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (5142,'primeiro.maio@gmail.com',0,2021, null);
insert into instituicao_professor values (5143,'franklin.roosevelt@gmail.com',1,2001, null);
insert into instituicao_professor values (5150,'lucia.santos@gmail.com',1,2001, null);
insert into instituicao_professor values (5150,'primeiro.maio@gmail.com',0,2021, null);
insert into instituicao_professor values (5176,'lucia.santos@gmail.com',1,2001, null);
insert into instituicao_professor values (5272,'napoleao.rodrigues@gmail.com',1,2001, null);
insert into instituicao_professor values (5273,'gladston.jafet@gmail.com',0,2021, null);
insert into instituicao_professor values (5273,'primeiro.maio@gmail.com',1,2001, null);
insert into instituicao_professor values (5411,'giusfredo.santini@gmail.com',1,2001, null);
insert into instituicao_professor values (5421,'catarina.salgado@gmail.com',1,2001, null);
insert into instituicao_professor values (5460,'dirce.gracia@gmail.com',1,2001, null);
insert into instituicao_professor values (5460,'lucia.santos@gmail.com',0,2021, null);
insert into instituicao_professor values (5463,'primeiro.maio@gmail.com',1,2001, null);
insert into instituicao_professor values (5611,'domenico.rangoni@gmail.com',1,2001, null);
insert into instituicao_professor values (5616,'herminia.vitiello@gmail.com',1,2001, null);
insert into instituicao_professor values (5663,'oswaldo.cruz@gmail.com',1,2001, null);
insert into instituicao_professor values (5664,'gladston.jafet@gmail.com',1,2001, null);
insert into instituicao_professor values (5685,'herminia.vitiello@gmail.com',1,2001, null);
insert into instituicao_professor values (5692,'gladston.jafet@gmail.com',0,2021, null);
insert into instituicao_professor values (5692,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (5695,'vicentina.valle@gmail.com',1,2001, null);
insert into instituicao_professor values (5705,'maria.eunice@gmail.com',1,2001, null);
insert into instituicao_professor values (5790,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (5790,'lucia.santos@gmail.com',0,2021, null);
insert into instituicao_professor values (5798,'maria.araujo@gmail.com',1,2001, null);
insert into instituicao_professor values (5798,'maria.camargo@gmail.com',0,2021, null);
insert into instituicao_professor values (5820,'joao.oliveira@gmail.com',1,2001, null);
insert into instituicao_professor values (6016,'dirce.gracia@gmail.com',0,2021, null);
insert into instituicao_professor values (6016,'lucia.santos@gmail.com',1,2001, null);
insert into instituicao_professor values (6026,'joao.oliveira@gmail.com',1,2001, null);
insert into instituicao_professor values (6032,'dirce.gracia@gmail.com',1,2001, null);
insert into instituicao_professor values (6035,'domenico.rangoni@gmail.com',1,2001, null);
insert into instituicao_professor values (6041,'jose.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (6049,'franklin.roosevelt@gmail.com',1,2001, null);
insert into instituicao_professor values (6075,'samuel.franco@gmail.com',1,2001, null);
insert into instituicao_professor values (6104,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (6104,'lucia.santos@gmail.com',0,2021, null);
insert into instituicao_professor values (6119,'ary.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (6386,'jose.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (6406,'ernesto.sobrinho@gmail.com',1,2001, null);
insert into instituicao_professor values (6430,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (6430,'maria.camargo@gmail.com',0,2021, null);
insert into instituicao_professor values (6439,'maria.araujo@gmail.com',1,2001, null);
insert into instituicao_professor values (6439,'primeiro.maio@gmail.com',0,2021, null);
insert into instituicao_professor values (6452,'vereador.ernesto@gmail.com',1,2001, null);
insert into instituicao_professor values (6454,'gladston.jafet@gmail.com',1,2001, null);
insert into instituicao_professor values (6454,'primeiro.maio@gmail.com',0,2021, null);
insert into instituicao_professor values (6455,'augusto.antunes@gmail.com',1,2001, null);
insert into instituicao_professor values (6468,'oswaldo.cruz@gmail.com',1,2001, null);
insert into instituicao_professor values (6471,'valeria.vieira@gmail.com',1,2001, null);
insert into instituicao_professor values (6532,'herbert.dow@gmail.com',1,2001, null);
insert into instituicao_professor values (6535,'francisco.figueiredo@gmail.com',0,2021, null);
insert into instituicao_professor values (6535,'lucimara.vicente@gmail.com',1,2001, null);
insert into instituicao_professor values (6540,'maria.araujo@gmail.com',1,2001, null);
insert into instituicao_professor values (6540,'primeiro.maio@gmail.com',0,2021, null);
insert into instituicao_professor values (6556,'ary.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (6577,'domenico.rangoni@gmail.com',1,2001, null);
insert into instituicao_professor values (6592,'catarina.salgado@gmail.com',1,2001, null);
insert into instituicao_professor values (6602,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (6602,'maria.araujo@gmail.com',0,2021, null);
insert into instituicao_professor values (6610,'afonso.nunes@gmail.com',1,2001, null);
insert into instituicao_professor values (6632,'samuel.franco@gmail.com',1,2001, null);
insert into instituicao_professor values (6636,'vicentina.valle@gmail.com',1,2001, null);
insert into instituicao_professor values (6639,'ary.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (6646,'francisco.figueiredo@gmail.com',0,2021, null);
insert into instituicao_professor values (6646,'lucimara.vicente@gmail.com',1,2001, null);
insert into instituicao_professor values (6682,'philomena.cardoso@gmail.com',1,2001, null);
insert into instituicao_professor values (6688,'jacirema.fontes@gmail.com',1,2001, null);
insert into instituicao_professor values (6691,'ary.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (6694,'samuel.franco@gmail.com',1,2001, null);
insert into instituicao_professor values (6735,'ary.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (6760,'paulo.freire@gmail.com',1,2001, null);
insert into instituicao_professor values (6767,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (6784,'francisco.figueiredo@gmail.com',1,2001, null);
insert into instituicao_professor values (6798,'magdalena.lourenco@gmail.com',1,2001, null);
insert into instituicao_professor values (6808,'gladston.jafet@gmail.com',1,2001, null);
insert into instituicao_professor values (6853,'catarina.salgado@gmail.com',1,2001, null);
insert into instituicao_professor values (6854,'herbert.dow@gmail.com',1,2001, null);
insert into instituicao_professor values (6863,'ary.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (6863,'dirce.gracia@gmail.com',0,2021, null);
insert into instituicao_professor values (6868,'benedita.gonzalez@gmail.com',1,2001, null);
insert into instituicao_professor values (6868,'ivonete.camara@gmail.com',0,2021, null);
insert into instituicao_professor values (6899,'aparecida.sinopoli@gmail.com',1,2001, null);
insert into instituicao_professor values (6904,'jose.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (6931,'valeria.vieira@gmail.com',1,2001, null);
insert into instituicao_professor values (6934,'magdalena.lourenco@gmail.com',1,2001, null);
insert into instituicao_professor values (6960,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (7033,'lucia.santos@gmail.com',0,2021, null);
insert into instituicao_professor values (7033,'primeiro.maio@gmail.com',1,2001, null);
insert into instituicao_professor values (7110,'lucia.santos@gmail.com',0,2021, null);
insert into instituicao_professor values (7110,'lucimara.vicente@gmail.com',1,2001, null);
insert into instituicao_professor values (7133,'myrian.millborn@gmail.com',1,2001, null);
insert into instituicao_professor values (7137,'herminia.vitiello@gmail.com',1,2001, null);
insert into instituicao_professor values (7138,'antonio.almeida@gmail.com',1,2001, null);
insert into instituicao_professor values (7151,'maria.eunice@gmail.com',1,2001, null);
insert into instituicao_professor values (7160,'catarina.salgado@gmail.com',1,2001, null);
insert into instituicao_professor values (7177,'magdalena.lourenco@gmail.com',1,2001, null);
insert into instituicao_professor values (7179,'jose.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (7183,'joao.oliveira@gmail.com',1,2001, null);
insert into instituicao_professor values (7186,'dirce.gracia@gmail.com',0,2021, null);
insert into instituicao_professor values (7186,'francisco.figueiredo@gmail.com',1,2001, null);
insert into instituicao_professor values (7223,'philomena.cardoso@gmail.com',1,2001, null);
insert into instituicao_professor values (7224,'franklin.roosevelt@gmail.com',1,2001, null);
insert into instituicao_professor values (7225,'guilherme.furlani@gmail.com',1,2001, null);
insert into instituicao_professor values (7253,'joao.oliveira@gmail.com',1,2001, null);
insert into instituicao_professor values (7260,'gladston.jafet@gmail.com',1,2001, null);
insert into instituicao_professor values (7274,'napoleao.rodrigues@gmail.com',1,2001, null);
insert into instituicao_professor values (7293,'adelaide.fernandes@gmail.com',1,2001, null);
insert into instituicao_professor values (7294,'jacirema.fontes@gmail.com',1,2001, null);
insert into instituicao_professor values (7323,'maria.eunice@gmail.com',1,2001, null);
insert into instituicao_professor values (7325,'guilherme.furlani@gmail.com',1,2001, null);
insert into instituicao_professor values (7364,'angelina.daige@gmail.com',1,2001, null);
insert into instituicao_professor values (7365,'catarina.salgado@gmail.com',1,2001, null);
insert into instituicao_professor values (7371,'franklin.roosevelt@gmail.com',1,2001, null);
insert into instituicao_professor values (7372,'benedita.gonzalez@gmail.com',1,2001, null);
insert into instituicao_professor values (7375,'napoleao.rodrigues@gmail.com',1,2001, null);
insert into instituicao_professor values (7377,'marina.daige@gmail.com',1,2001, null);
insert into instituicao_professor values (7387,'samuel.franco@gmail.com',1,2001, null);
insert into instituicao_professor values (7392,'ary.souza@gmail.com',0,2021, null);
insert into instituicao_professor values (7392,'francisco.figueiredo@gmail.com',1,2001, null);
insert into instituicao_professor values (7399,'marina.daige@gmail.com',1,2001, null);
insert into instituicao_professor values (7403,'herminia.vitiello@gmail.com',1,2001, null);
insert into instituicao_professor values (7409,'jose.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (7412,'maria.teixeira@gmail.com',1,2001, null);
insert into instituicao_professor values (7426,'paulo.freire@gmail.com',1,2001, null);
insert into instituicao_professor values (7444,'vereador.ernesto@gmail.com',1,2001, null);
insert into instituicao_professor values (7457,'herbert.dow@gmail.com',1,2001, null);
insert into instituicao_professor values (7464,'gladston.jafet@gmail.com',1,2001, null);
insert into instituicao_professor values (7464,'maria.camargo@gmail.com',0,2021, null);
insert into instituicao_professor values (7494,'francisco.figueiredo@gmail.com',0,2021, null);
insert into instituicao_professor values (7494,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (7681,'herminia.vitiello@gmail.com',1,2001, null);
insert into instituicao_professor values (7686,'jacirema.fontes@gmail.com',1,2001, null);
insert into instituicao_professor values (7687,'jacirema.fontes@gmail.com',1,2001, null);
insert into instituicao_professor values (7688,'valeria.vieira@gmail.com',1,2001, null);
insert into instituicao_professor values (7696,'dirce.gracia@gmail.com',1,2001, null);
insert into instituicao_professor values (7696,'ivonete.camara@gmail.com',0,2021, null);
insert into instituicao_professor values (7697,'angelina.daige@gmail.com',1,2001, null);
insert into instituicao_professor values (7701,'valeria.vieira@gmail.com',1,2001, null);
insert into instituicao_professor values (7706,'francisco.figueiredo@gmail.com',1,2001, null);
insert into instituicao_professor values (7706,'primeiro.maio@gmail.com',0,2021, null);
insert into instituicao_professor values (7711,'philomena.cardoso@gmail.com',1,2001, null);
insert into instituicao_professor values (7716,'ernesto.sobrinho@gmail.com',1,2001, null);
insert into instituicao_professor values (7755,'francisco.figueiredo@gmail.com',0,2021, null);
insert into instituicao_professor values (7755,'lucimara.vicente@gmail.com',1,2001, null);
insert into instituicao_professor values (7764,'dirce.gracia@gmail.com',0,2021, null);
insert into instituicao_professor values (7764,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (7765,'benedita.gonzalez@gmail.com',0,2021, null);
insert into instituicao_professor values (7765,'primeiro.maio@gmail.com',1,2001, null);
insert into instituicao_professor values (7773,'mario.leite@gmail.com',1,2001, null);
insert into instituicao_professor values (7791,'samuel.franco@gmail.com',1,2001, null);
insert into instituicao_professor values (7822,'oswaldo.cruz@gmail.com',1,2001, null);
insert into instituicao_professor values (7825,'valeria.vieira@gmail.com',1,2001, null);
insert into instituicao_professor values (7835,'marina.daige@gmail.com',1,2001, null);
insert into instituicao_professor values (7845,'napoleao.rodrigues@gmail.com',1,2001, null);
insert into instituicao_professor values (7924,'maria.teixeira@gmail.com',1,2001, null);
insert into instituicao_professor values (7925,'magdalena.lourenco@gmail.com',1,2001, null);
insert into instituicao_professor values (7927,'constantino.michaello@gmail.com',1,2001, null);
insert into instituicao_professor values (7933,'maria.eunice@gmail.com',1,2001, null);
insert into instituicao_professor values (7970,'constantino.michaello@gmail.com',1,2001, null);
insert into instituicao_professor values (8047,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (8071,'gladston.jafet@gmail.com',1,2001, null);
insert into instituicao_professor values (8071,'maria.camargo@gmail.com',0,2021, null);
insert into instituicao_professor values (8130,'philomena.cardoso@gmail.com',1,2001, null);
insert into instituicao_professor values (8149,'philomena.cardoso@gmail.com',1,2001, null);
insert into instituicao_professor values (8158,'catarina.salgado@gmail.com',1,2001, null);
insert into instituicao_professor values (8178,'benedita.gonzalez@gmail.com',0,2021, null);
insert into instituicao_professor values (8178,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (8193,'giusfredo.santini@gmail.com',1,2001, null);
insert into instituicao_professor values (8195,'myrian.millborn@gmail.com',1,2001, null);
insert into instituicao_professor values (8200,'dirce.gracia@gmail.com',0,2021, null);
insert into instituicao_professor values (8200,'lucia.santos@gmail.com',1,2001, null);
insert into instituicao_professor values (8205,'maria.eunice@gmail.com',1,2001, null);
insert into instituicao_professor values (8207,'maria.araujo@gmail.com',0,2021, null);
insert into instituicao_professor values (8207,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (8208,'aparecida.sinopoli@gmail.com',1,2001, null);
insert into instituicao_professor values (8211,'guilherme.furlani@gmail.com',1,2001, null);
insert into instituicao_professor values (8212,'dirce.gracia@gmail.com',0,2021, null);
insert into instituicao_professor values (8212,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (8213,'herbert.dow@gmail.com',1,2001, null);
insert into instituicao_professor values (8217,'aparecida.sinopoli@gmail.com',1,2001, null);
insert into instituicao_professor values (8219,'sergio.rodrigues@gmail.com',1,2001, null);
insert into instituicao_professor values (8220,'ivonete.camara@gmail.com',0,2021, null);
insert into instituicao_professor values (8220,'primeiro.maio@gmail.com',1,2001, null);
insert into instituicao_professor values (8229,'maria.araujo@gmail.com',1,2001, null);
insert into instituicao_professor values (8229,'primeiro.maio@gmail.com',0,2021, null);
insert into instituicao_professor values (8233,'gladston.jafet@gmail.com',0,2021, null);
insert into instituicao_professor values (8233,'maria.araujo@gmail.com',1,2001, null);
insert into instituicao_professor values (8259,'augusto.antunes@gmail.com',1,2001, null);
insert into instituicao_professor values (8267,'jacirema.fontes@gmail.com',1,2001, null);
insert into instituicao_professor values (8268,'paulo.freire@gmail.com',1,2001, null);
insert into instituicao_professor values (8272,'vereador.ernesto@gmail.com',1,2001, null);
insert into instituicao_professor values (8289,'benedita.gonzalez@gmail.com',0,2021, null);
insert into instituicao_professor values (8289,'francisco.figueiredo@gmail.com',1,2001, null);
insert into instituicao_professor values (8300,'domenico.rangoni@gmail.com',1,2001, null);
insert into instituicao_professor values (8312,'lucia.santos@gmail.com',0,2021, null);
insert into instituicao_professor values (8312,'maria.araujo@gmail.com',1,2001, null);
insert into instituicao_professor values (8315,'afonso.nunes@gmail.com',1,2001, null);
insert into instituicao_professor values (8316,'domenico.rangoni@gmail.com',1,2001, null);
insert into instituicao_professor values (8317,'domenico.rangoni@gmail.com',1,2001, null);
insert into instituicao_professor values (8323,'jose.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (8329,'ernesto.sobrinho@gmail.com',1,2001, null);
insert into instituicao_professor values (8332,'antonio.almeida@gmail.com',1,2001, null);
insert into instituicao_professor values (8335,'mario.leite@gmail.com',1,2001, null);
insert into instituicao_professor values (8337,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (8337,'primeiro.maio@gmail.com',0,2021, null);
insert into instituicao_professor values (8339,'vicentina.valle@gmail.com',1,2001, null);
insert into instituicao_professor values (8340,'vicentina.valle@gmail.com',1,2001, null);
insert into instituicao_professor values (8342,'maria.araujo@gmail.com',1,2001, null);
insert into instituicao_professor values (8342,'primeiro.maio@gmail.com',0,2021, null);
insert into instituicao_professor values (8346,'valeria.vieira@gmail.com',1,2001, null);
insert into instituicao_professor values (8353,'joao.oliveira@gmail.com',1,2001, null);
insert into instituicao_professor values (8354,'aparecida.sinopoli@gmail.com',1,2001, null);
insert into instituicao_professor values (8356,'benedita.gonzalez@gmail.com',1,2001, null);
insert into instituicao_professor values (8381,'dirce.gracia@gmail.com',0,2021, null);
insert into instituicao_professor values (8381,'lucimara.vicente@gmail.com',1,2001, null);
insert into instituicao_professor values (8412,'primeiro.maio@gmail.com',1,2001, null);
insert into instituicao_professor values (8422,'giusfredo.santini@gmail.com',1,2001, null);
insert into instituicao_professor values (8424,'vereador.ernesto@gmail.com',1,2001, null);
insert into instituicao_professor values (8431,'giusfredo.santini@gmail.com',1,2001, null);
insert into instituicao_professor values (8436,'maria.teixeira@gmail.com',1,2001, null);
insert into instituicao_professor values (8437,'myrian.millborn@gmail.com',1,2001, null);
insert into instituicao_professor values (8443,'lucia.santos@gmail.com',1,2001, null);
insert into instituicao_professor values (8443,'maria.camargo@gmail.com',0,2021, null);
insert into instituicao_professor values (8447,'oswaldo.cruz@gmail.com',1,2001, null);
insert into instituicao_professor values (8492,'francisco.figueiredo@gmail.com',0,2021, null);
insert into instituicao_professor values (8492,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (8649,'gladston.jafet@gmail.com',1,2001, null);
insert into instituicao_professor values (8649,'lucimara.vicente@gmail.com',0,2021, null);
insert into instituicao_professor values (8672,'ary.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (8676,'maria.eunice@gmail.com',1,2001, null);
insert into instituicao_professor values (8740,'napoleao.rodrigues@gmail.com',1,2001, null);
insert into instituicao_professor values (8903,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (8974,'philomena.cardoso@gmail.com',1,2001, null);
insert into instituicao_professor values (8986,'paulo.freire@gmail.com',1,2001, null);
insert into instituicao_professor values (9371,'lucia.santos@gmail.com',0,2021, null);
insert into instituicao_professor values (9371,'lucimara.vicente@gmail.com',1,2001, null);
insert into instituicao_professor values (9423,'vicentina.valle@gmail.com',1,2001, null);
insert into instituicao_professor values (9432,'jacirema.fontes@gmail.com',1,2001, null);
insert into instituicao_professor values (9433,'myrian.millborn@gmail.com',1,2001, null);
insert into instituicao_professor values (9460,'maria.araujo@gmail.com',0,2021, null);
insert into instituicao_professor values (9460,'primeiro.maio@gmail.com',1,2001, null);
insert into instituicao_professor values (9486,'ary.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (9486,'dirce.gracia@gmail.com',0,2021, null);
insert into instituicao_professor values (9503,'guilherme.furlani@gmail.com',1,2001, null);
insert into instituicao_professor values (9520,'jacirema.fontes@gmail.com',1,2001, null);
insert into instituicao_professor values (9546,'vicentina.valle@gmail.com',1,2001, null);
insert into instituicao_professor values (9567,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (9567,'lucimara.vicente@gmail.com',0,2021, null);
insert into instituicao_professor values (9612,'maria.eunice@gmail.com',1,2001, null);
insert into instituicao_professor values (9630,'ary.souza@gmail.com',0,2021, null);
insert into instituicao_professor values (9630,'dirce.gracia@gmail.com',1,2001, null);
insert into instituicao_professor values (9636,'jose.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (9637,'antonio.almeida@gmail.com',1,2001, null);
insert into instituicao_professor values (9639,'sergio.rodrigues@gmail.com',1,2001, null);
insert into instituicao_professor values (9641,'benedita.gonzalez@gmail.com',1,2001, null);
insert into instituicao_professor values (9642,'maria.lourdes@gmail.com',1,2001, null);
insert into instituicao_professor values (9658,'vicentina.valle@gmail.com',1,2001, null);
insert into instituicao_professor values (9671,'gladston.jafet@gmail.com',1,2001, null);
insert into instituicao_professor values (9671,'maria.araujo@gmail.com',0,2021, null);
insert into instituicao_professor values (9675,'herbert.dow@gmail.com',1,2001, null);
insert into instituicao_professor values (9687,'domenico.rangoni@gmail.com',1,2001, null);
insert into instituicao_professor values (9707,'mario.leite@gmail.com',1,2001, null);
insert into instituicao_professor values (9768,'maria.eunice@gmail.com',1,2001, null);
insert into instituicao_professor values (9782,'magdalena.lourenco@gmail.com',1,2001, null);
insert into instituicao_professor values (9791,'giusfredo.santini@gmail.com',1,2001, null);
insert into instituicao_professor values (9794,'magdalena.lourenco@gmail.com',1,2001, null);
insert into instituicao_professor values (9812,'antonio.almeida@gmail.com',1,2001, null);
insert into instituicao_professor values (9816,'napoleao.rodrigues@gmail.com',1,2001, null);
insert into instituicao_professor values (9863,'catarina.salgado@gmail.com',1,2001, null);
insert into instituicao_professor values (9872,'francisco.figueiredo@gmail.com',1,2001, null);
insert into instituicao_professor values (9872,'gladston.jafet@gmail.com',0,2021, null);
insert into instituicao_professor values (9908,'joao.oliveira@gmail.com',1,2001, null);
insert into instituicao_professor values (9953,'guilherme.furlani@gmail.com',1,2001, null);
insert into instituicao_professor values (9986,'domenico.rangoni@gmail.com',1,2001, null);
insert into instituicao_professor values (10174,'joao.oliveira@gmail.com',1,2001, null);
insert into instituicao_professor values (10190,'ary.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (10257,'benedita.gonzalez@gmail.com',0,2021, null);
insert into instituicao_professor values (10257,'francisco.figueiredo@gmail.com',1,2001, null);
insert into instituicao_professor values (10260,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (10261,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (10264,'augusto.antunes@gmail.com',1,2001, null);
insert into instituicao_professor values (10270,'mario.leite@gmail.com',1,2001, null);
insert into instituicao_professor values (10281,'maria.eunice@gmail.com',1,2001, null);
insert into instituicao_professor values (10282,'vicentina.valle@gmail.com',1,2001, null);
insert into instituicao_professor values (10283,'adelaide.fernandes@gmail.com',1,2001, null);
insert into instituicao_professor values (10285,'herbert.dow@gmail.com',1,2001, null);
insert into instituicao_professor values (10291,'gladston.jafet@gmail.com',0,2021, null);
insert into instituicao_professor values (10291,'maria.araujo@gmail.com',1,2001, null);
insert into instituicao_professor values (10297,'jacirema.fontes@gmail.com',1,2001, null);
insert into instituicao_professor values (10299,'afonso.nunes@gmail.com',1,2001, null);
insert into instituicao_professor values (10300,'herbert.dow@gmail.com',1,2001, null);
insert into instituicao_professor values (10302,'dirce.gracia@gmail.com',1,2001, null);
insert into instituicao_professor values (10302,'gladston.jafet@gmail.com',0,2021, null);
insert into instituicao_professor values (10310,'benedita.gonzalez@gmail.com',1,2001, null);
insert into instituicao_professor values (10316,'joao.oliveira@gmail.com',1,2001, null);
insert into instituicao_professor values (10331,'benedita.gonzalez@gmail.com',1,2001, null);
insert into instituicao_professor values (10331,'gladston.jafet@gmail.com',0,2021, null);
insert into instituicao_professor values (10334,'benedita.gonzalez@gmail.com',1,2001, null);
insert into instituicao_professor values (10334,'lucia.santos@gmail.com',0,2021, null);
insert into instituicao_professor values (10337,'antonio.almeida@gmail.com',1,2001, null);
insert into instituicao_professor values (10396,'sergio.rodrigues@gmail.com',1,2001, null);
insert into instituicao_professor values (10454,'ary.souza@gmail.com',0,2021, null);
insert into instituicao_professor values (10454,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (10469,'guilherme.furlani@gmail.com',1,2001, null);
insert into instituicao_professor values (10477,'constantino.michaello@gmail.com',1,2001, null);
insert into instituicao_professor values (10496,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (10500,'ary.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (10500,'gladston.jafet@gmail.com',0,2021, null);
insert into instituicao_professor values (10502,'herbert.dow@gmail.com',1,2001, null);
insert into instituicao_professor values (10508,'angelina.daige@gmail.com',1,2001, null);
insert into instituicao_professor values (10516,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (10519,'vicentina.valle@gmail.com',1,2001, null);
insert into instituicao_professor values (10521,'maria.teixeira@gmail.com',1,2001, null);
insert into instituicao_professor values (10522,'ary.souza@gmail.com',0,2021, null);
insert into instituicao_professor values (10522,'gladston.jafet@gmail.com',1,2001, null);
insert into instituicao_professor values (10524,'vicentina.valle@gmail.com',1,2001, null);
insert into instituicao_professor values (10525,'franklin.roosevelt@gmail.com',1,2001, null);
insert into instituicao_professor values (10528,'philomena.cardoso@gmail.com',1,2001, null);
insert into instituicao_professor values (10530,'ary.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (10542,'maria.lourdes@gmail.com',1,2001, null);
insert into instituicao_professor values (10544,'adelaide.fernandes@gmail.com',1,2001, null);
insert into instituicao_professor values (10546,'vicentina.valle@gmail.com',1,2001, null);
insert into instituicao_professor values (10548,'antonio.almeida@gmail.com',1,2001, null);
insert into instituicao_professor values (10552,'afonso.nunes@gmail.com',1,2001, null);
insert into instituicao_professor values (10555,'maria.eunice@gmail.com',1,2001, null);
insert into instituicao_professor values (10556,'herbert.dow@gmail.com',1,2001, null);
insert into instituicao_professor values (10561,'giusfredo.santini@gmail.com',1,2001, null);
insert into instituicao_professor values (10565,'myrian.millborn@gmail.com',1,2001, null);
insert into instituicao_professor values (10572,'valeria.vieira@gmail.com',1,2001, null);
insert into instituicao_professor values (10573,'valeria.vieira@gmail.com',1,2001, null);
insert into instituicao_professor values (10575,'ernesto.sobrinho@gmail.com',1,2001, null);
insert into instituicao_professor values (10580,'guilherme.furlani@gmail.com',1,2001, null);
insert into instituicao_professor values (10584,'oswaldo.cruz@gmail.com',1,2001, null);
insert into instituicao_professor values (10588,'gladston.jafet@gmail.com',1,2001, null);
insert into instituicao_professor values (10589,'guilherme.furlani@gmail.com',1,2001, null);
insert into instituicao_professor values (10595,'giusfredo.santini@gmail.com',1,2001, null);
insert into instituicao_professor values (10602,'magdalena.lourenco@gmail.com',1,2001, null);
insert into instituicao_professor values (10609,'antonio.almeida@gmail.com',1,2001, null);
insert into instituicao_professor values (10610,'dirce.gracia@gmail.com',0,2021, null);
insert into instituicao_professor values (10610,'primeiro.maio@gmail.com',1,2001, null);
insert into instituicao_professor values (10636,'lucia.santos@gmail.com',1,2001, null);
insert into instituicao_professor values (10642,'ary.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (10642,'ivonete.camara@gmail.com',0,2021, null);
insert into instituicao_professor values (10678,'dirce.gracia@gmail.com',1,2001, null);
insert into instituicao_professor values (10678,'primeiro.maio@gmail.com',0,2021, null);
insert into instituicao_professor values (10684,'myrian.millborn@gmail.com',1,2001, null);
insert into instituicao_professor values (10967,'dirce.gracia@gmail.com',0,2021, null);
insert into instituicao_professor values (10967,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (10968,'lucimara.vicente@gmail.com',0,2021, null);
insert into instituicao_professor values (10968,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (10971,'benedita.gonzalez@gmail.com',1,2001, null);
insert into instituicao_professor values (10971,'primeiro.maio@gmail.com',0,2021, null);
insert into instituicao_professor values (10974,'ary.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (10974,'primeiro.maio@gmail.com',0,2021, null);
insert into instituicao_professor values (10984,'ary.souza@gmail.com',0,2021, null);
insert into instituicao_professor values (10984,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (10986,'francisco.figueiredo@gmail.com',0,2021, null);
insert into instituicao_professor values (10986,'maria.araujo@gmail.com',1,2001, null);
insert into instituicao_professor values (10987,'ary.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (10987,'dirce.gracia@gmail.com',0,2021, null);
insert into instituicao_professor values (10989,'ary.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (10989,'lucimara.vicente@gmail.com',0,2021, null);
insert into instituicao_professor values (10990,'ary.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (10990,'lucia.santos@gmail.com',0,2021, null);
insert into instituicao_professor values (10993,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (10994,'benedita.gonzalez@gmail.com',1,2001, null);
insert into instituicao_professor values (10994,'ivonete.camara@gmail.com',0,2021, null);
insert into instituicao_professor values (10996,'gladston.jafet@gmail.com',0,2021, null);
insert into instituicao_professor values (10996,'lucia.santos@gmail.com',1,2001, null);
insert into instituicao_professor values (11002,'lucia.santos@gmail.com',1,2001, null);
insert into instituicao_professor values (11002,'maria.camargo@gmail.com',0,2021, null);
insert into instituicao_professor values (11003,'dirce.gracia@gmail.com',0,2021, null);
insert into instituicao_professor values (11003,'francisco.figueiredo@gmail.com',1,2001, null);
insert into instituicao_professor values (11005,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (11009,'lucia.santos@gmail.com',1,2001, null);
insert into instituicao_professor values (11009,'primeiro.maio@gmail.com',0,2021, null);
insert into instituicao_professor values (11014,'benedita.gonzalez@gmail.com',1,2001, null);
insert into instituicao_professor values (11014,'maria.araujo@gmail.com',0,2021, null);
insert into instituicao_professor values (11015,'ary.souza@gmail.com',0,2021, null);
insert into instituicao_professor values (11015,'lucimara.vicente@gmail.com',1,2001, null);
insert into instituicao_professor values (11018,'ary.souza@gmail.com',0,2021, null);
insert into instituicao_professor values (11018,'maria.araujo@gmail.com',1,2001, null);
insert into instituicao_professor values (11020,'maria.araujo@gmail.com',0,2021, null);
insert into instituicao_professor values (11020,'primeiro.maio@gmail.com',1,2001, null);
insert into instituicao_professor values (11021,'lucia.santos@gmail.com',0,2021, null);
insert into instituicao_professor values (11021,'primeiro.maio@gmail.com',1,2001, null);
insert into instituicao_professor values (11022,'lucimara.vicente@gmail.com',1,2001, null);
insert into instituicao_professor values (11022,'maria.camargo@gmail.com',0,2021, null);
insert into instituicao_professor values (11025,'lucia.santos@gmail.com',0,2021, null);
insert into instituicao_professor values (11025,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (11030,'ary.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (11030,'dirce.gracia@gmail.com',0,2021, null);
insert into instituicao_professor values (11033,'constantino.michaello@gmail.com',1,2001, null);
insert into instituicao_professor values (11037,'francisco.figueiredo@gmail.com',0,2021, null);
insert into instituicao_professor values (11037,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (11044,'catarina.salgado@gmail.com',1,2001, null);
insert into instituicao_professor values (11046,'afonso.nunes@gmail.com',1,2001, null);
insert into instituicao_professor values (11049,'jacirema.fontes@gmail.com',1,2001, null);
insert into instituicao_professor values (11052,'jose.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (11053,'ivonete.camara@gmail.com',0,2021, null);
insert into instituicao_professor values (11053,'lucia.santos@gmail.com',1,2001, null);
insert into instituicao_professor values (11056,'maria.araujo@gmail.com',1,2001, null);
insert into instituicao_professor values (11058,'samuel.franco@gmail.com',1,2001, null);
insert into instituicao_professor values (11059,'herbert.dow@gmail.com',1,2001, null);
insert into instituicao_professor values (11060,'benedita.gonzalez@gmail.com',0,2021, null);
insert into instituicao_professor values (11060,'lucimara.vicente@gmail.com',1,2001, null);
insert into instituicao_professor values (11061,'afonso.nunes@gmail.com',1,2001, null);
insert into instituicao_professor values (11062,'gladston.jafet@gmail.com',1,2001, null);
insert into instituicao_professor values (11063,'napoleao.rodrigues@gmail.com',1,2001, null);
insert into instituicao_professor values (11064,'benedita.gonzalez@gmail.com',0,2021, null);
insert into instituicao_professor values (11064,'dirce.gracia@gmail.com',1,2001, null);
insert into instituicao_professor values (11065,'maria.araujo@gmail.com',1,2001, null);
insert into instituicao_professor values (11065,'primeiro.maio@gmail.com',0,2021, null);
insert into instituicao_professor values (11067,'constantino.michaello@gmail.com',1,2001, null);
insert into instituicao_professor values (11069,'jacirema.fontes@gmail.com',1,2001, null);
insert into instituicao_professor values (11071,'maria.lourdes@gmail.com',1,2001, null);
insert into instituicao_professor values (11100,'benedita.gonzalez@gmail.com',0,2021, null);
insert into instituicao_professor values (11100,'francisco.figueiredo@gmail.com',1,2001, null);
insert into instituicao_professor values (11101,'lucia.santos@gmail.com',1,2001, null);
insert into instituicao_professor values (11101,'lucimara.vicente@gmail.com',0,2021, null);
insert into instituicao_professor values (11102,'dirce.gracia@gmail.com',1,2001, null);
insert into instituicao_professor values (11102,'gladston.jafet@gmail.com',0,2021, null);
insert into instituicao_professor values (11106,'ivonete.camara@gmail.com',0,2021, null);
insert into instituicao_professor values (11106,'lucia.santos@gmail.com',1,2001, null);
insert into instituicao_professor values (11114,'ary.souza@gmail.com',0,2021, null);
insert into instituicao_professor values (11114,'lucimara.vicente@gmail.com',1,2001, null);
insert into instituicao_professor values (11115,'francisco.figueiredo@gmail.com',0,2021, null);
insert into instituicao_professor values (11115,'gladston.jafet@gmail.com',1,2001, null);
insert into instituicao_professor values (11116,'benedita.gonzalez@gmail.com',1,2001, null);
insert into instituicao_professor values (11116,'lucia.santos@gmail.com',0,2021, null);
insert into instituicao_professor values (11420,'ary.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (11420,'ivonete.camara@gmail.com',0,2021, null);
insert into instituicao_professor values (11435,'benedita.gonzalez@gmail.com',0,2021, null);
insert into instituicao_professor values (11435,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (11445,'augusto.antunes@gmail.com',1,2001, null);
insert into instituicao_professor values (11447,'dirce.gracia@gmail.com',1,2001, null);
insert into instituicao_professor values (11447,'primeiro.maio@gmail.com',0,2021, null);
insert into instituicao_professor values (11451,'benedita.gonzalez@gmail.com',1,2001, null);
insert into instituicao_professor values (11451,'maria.camargo@gmail.com',0,2021, null);
insert into instituicao_professor values (11483,'gladston.jafet@gmail.com',0,2021, null);
insert into instituicao_professor values (11483,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (11485,'dirce.gracia@gmail.com',1,2001, null);
insert into instituicao_professor values (11485,'lucimara.vicente@gmail.com',0,2021, null);
insert into instituicao_professor values (11504,'dirce.gracia@gmail.com',1,2001, null);
insert into instituicao_professor values (11504,'gladston.jafet@gmail.com',0,2021, null);
insert into instituicao_professor values (11505,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (11505,'lucimara.vicente@gmail.com',0,2021, null);
insert into instituicao_professor values (11848,'benedita.gonzalez@gmail.com',1,2001, null);
insert into instituicao_professor values (11848,'lucimara.vicente@gmail.com',0,2021, null);
insert into instituicao_professor values (12025,'dirce.gracia@gmail.com',1,2001, null);
insert into instituicao_professor values (12025,'gladston.jafet@gmail.com',0,2021, null);
insert into instituicao_professor values (12033,'ary.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (12033,'lucia.santos@gmail.com',0,2021, null);
insert into instituicao_professor values (12046,'gladston.jafet@gmail.com',0,2021, null);
insert into instituicao_professor values (12046,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (12055,'lucimara.vicente@gmail.com',0,2021, null);
insert into instituicao_professor values (12055,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (12121,'lucia.santos@gmail.com',0,2021, null);
insert into instituicao_professor values (12121,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (12133,'benedita.gonzalez@gmail.com',0,2021, null);
insert into instituicao_professor values (12133,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (12442,'francisco.figueiredo@gmail.com',1,2001, null);
insert into instituicao_professor values (12442,'lucimara.vicente@gmail.com',0,2021, null);
insert into instituicao_professor values (12518,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (12518,'maria.camargo@gmail.com',0,2021, null);
insert into instituicao_professor values (12520,'francisco.figueiredo@gmail.com',0,2021, null);
insert into instituicao_professor values (12520,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (12543,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (12543,'maria.araujo@gmail.com',0,2021, null);
insert into instituicao_professor values (12787,'dirce.gracia@gmail.com',0,2021, null);
insert into instituicao_professor values (12787,'lucia.santos@gmail.com',1,2001, null);
insert into instituicao_professor values (12883,'dirce.gracia@gmail.com',1,2001, null);
insert into instituicao_professor values (12883,'maria.araujo@gmail.com',0,2021, null);
insert into instituicao_professor values (12887,'ary.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (12887,'lucia.santos@gmail.com',0,2021, null);
insert into instituicao_professor values (12893,'ary.souza@gmail.com',0,2021, null);
insert into instituicao_professor values (12893,'maria.araujo@gmail.com',1,2001, null);
insert into instituicao_professor values (12894,'benedita.gonzalez@gmail.com',1,2001, null);
insert into instituicao_professor values (12896,'lucimara.vicente@gmail.com',0,2021, null);
insert into instituicao_professor values (12896,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (12897,'benedita.gonzalez@gmail.com',0,2021, null);
insert into instituicao_professor values (12897,'dirce.gracia@gmail.com',1,2001, null);
insert into instituicao_professor values (12900,'benedita.gonzalez@gmail.com',1,2001, null);
insert into instituicao_professor values (12900,'francisco.figueiredo@gmail.com',0,2021, null);
insert into instituicao_professor values (12903,'francisco.figueiredo@gmail.com',0,2021, null);
insert into instituicao_professor values (12903,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (12909,'lucimara.vicente@gmail.com',1,2001, null);
insert into instituicao_professor values (12914,'benedita.gonzalez@gmail.com',0,2021, null);
insert into instituicao_professor values (12914,'dirce.gracia@gmail.com',1,2001, null);
insert into instituicao_professor values (12915,'gladston.jafet@gmail.com',1,2001, null);
insert into instituicao_professor values (12916,'francisco.figueiredo@gmail.com',0,2021, null);
insert into instituicao_professor values (12916,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (12917,'gladston.jafet@gmail.com',0,2021, null);
insert into instituicao_professor values (12917,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (12919,'lucia.santos@gmail.com',1,2001, null);
insert into instituicao_professor values (12919,'lucimara.vicente@gmail.com',0,2021, null);
insert into instituicao_professor values (12921,'francisco.figueiredo@gmail.com',0,2021, null);
insert into instituicao_professor values (12921,'primeiro.maio@gmail.com',1,2001, null);
insert into instituicao_professor values (12922,'ary.souza@gmail.com',0,2021, null);
insert into instituicao_professor values (12922,'dirce.gracia@gmail.com',1,2001, null);
insert into instituicao_professor values (12925,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (12925,'maria.camargo@gmail.com',0,2021, null);
insert into instituicao_professor values (12927,'gladston.jafet@gmail.com',1,2001, null);
insert into instituicao_professor values (12927,'maria.araujo@gmail.com',0,2021, null);
insert into instituicao_professor values (12928,'ary.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (12928,'maria.camargo@gmail.com',0,2021, null);
insert into instituicao_professor values (12929,'ary.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (12929,'lucia.santos@gmail.com',0,2021, null);
insert into instituicao_professor values (12931,'dirce.gracia@gmail.com',0,2021, null);
insert into instituicao_professor values (12931,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (12932,'benedita.gonzalez@gmail.com',1,2001, null);
insert into instituicao_professor values (12934,'lucia.santos@gmail.com',1,2001, null);
insert into instituicao_professor values (12934,'maria.araujo@gmail.com',0,2021, null);
insert into instituicao_professor values (12935,'benedita.gonzalez@gmail.com',0,2021, null);
insert into instituicao_professor values (12935,'gladston.jafet@gmail.com',1,2001, null);
insert into instituicao_professor values (12936,'lucia.santos@gmail.com',1,2001, null);
insert into instituicao_professor values (12936,'maria.camargo@gmail.com',0,2021, null);
insert into instituicao_professor values (12937,'benedita.gonzalez@gmail.com',1,2001, null);
insert into instituicao_professor values (12937,'gladston.jafet@gmail.com',0,2021, null);
insert into instituicao_professor values (12938,'dirce.gracia@gmail.com',0,2021, null);
insert into instituicao_professor values (12938,'francisco.figueiredo@gmail.com',1,2001, null);
insert into instituicao_professor values (12939,'benedita.gonzalez@gmail.com',0,2021, null);
insert into instituicao_professor values (12939,'gladston.jafet@gmail.com',1,2001, null);
insert into instituicao_professor values (12940,'ary.souza@gmail.com',1,2021, null);
insert into instituicao_professor values (12943,'ary.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (12943,'maria.araujo@gmail.com',0,2021, null);
insert into instituicao_professor values (12944,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (12944,'maria.araujo@gmail.com',0,2021, null);
insert into instituicao_professor values (12945,'benedita.gonzalez@gmail.com',1,2001, null);
insert into instituicao_professor values (12945,'francisco.figueiredo@gmail.com',0,2021, null);
insert into instituicao_professor values (12947,'francisco.figueiredo@gmail.com',1,2001, null);
insert into instituicao_professor values (12947,'maria.araujo@gmail.com',0,2021, null);
insert into instituicao_professor values (12951,'benedita.gonzalez@gmail.com',0,2021, null);
insert into instituicao_professor values (12951,'dirce.gracia@gmail.com',1,2001, null);
insert into instituicao_professor values (12955,'gladston.jafet@gmail.com',1,2001, null);
insert into instituicao_professor values (12955,'maria.araujo@gmail.com',0,2021, null);
insert into instituicao_professor values (12958,'benedita.gonzalez@gmail.com',1,2001, null);
insert into instituicao_professor values (12959,'gladston.jafet@gmail.com',1,2001, null);
insert into instituicao_professor values (12959,'ivonete.camara@gmail.com',0,2021, null);
insert into instituicao_professor values (12961,'lucimara.vicente@gmail.com',1,2001, null);
insert into instituicao_professor values (12961,'primeiro.maio@gmail.com',0,2021, null);
insert into instituicao_professor values (12963,'francisco.figueiredo@gmail.com',0,2021, null);
insert into instituicao_professor values (12963,'primeiro.maio@gmail.com',1,2001, null);
insert into instituicao_professor values (12967,'lucia.santos@gmail.com',0,2021, null);
insert into instituicao_professor values (12967,'maria.araujo@gmail.com',1,2001, null);
insert into instituicao_professor values (12969,'ary.souza@gmail.com',0,2021, null);
insert into instituicao_professor values (12969,'maria.araujo@gmail.com',1,2001, null);
insert into instituicao_professor values (12972,'ary.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (12972,'lucia.santos@gmail.com',0,2021, null);
insert into instituicao_professor values (12975,'lucia.santos@gmail.com',0,2021, null);
insert into instituicao_professor values (12975,'lucimara.vicente@gmail.com',1,2001, null);
insert into instituicao_professor values (12976,'francisco.figueiredo@gmail.com',0,2021, null);
insert into instituicao_professor values (12976,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (12977,'ivonete.camara@gmail.com',0,2021, null);
insert into instituicao_professor values (12977,'lucimara.vicente@gmail.com',1,2001, null);
insert into instituicao_professor values (12979,'benedita.gonzalez@gmail.com',1,2001, null);
insert into instituicao_professor values (13030,'ary.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (13030,'gladston.jafet@gmail.com',0,2021, null);
insert into instituicao_professor values (13051,'dirce.gracia@gmail.com',1,2001, null);
insert into instituicao_professor values (13051,'lucimara.vicente@gmail.com',0,2021, null);
insert into instituicao_professor values (13052,'gladston.jafet@gmail.com',0,2021, null);
insert into instituicao_professor values (13052,'maria.araujo@gmail.com',1,2001, null);
insert into instituicao_professor values (13053,'francisco.figueiredo@gmail.com',1,2001, null);
insert into instituicao_professor values (13054,'maria.araujo@gmail.com',1,2001, null);
insert into instituicao_professor values (13054,'maria.camargo@gmail.com',0,2021, null);
insert into instituicao_professor values (13055,'benedita.gonzalez@gmail.com',1,2001, null);
insert into instituicao_professor values (13055,'francisco.figueiredo@gmail.com',0,2021, null);
insert into instituicao_professor values (13057,'dirce.gracia@gmail.com',0,2021, null);
insert into instituicao_professor values (13057,'lucia.santos@gmail.com',1,2001, null);
insert into instituicao_professor values (13059,'dirce.gracia@gmail.com',0,2021, null);
insert into instituicao_professor values (13059,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (13060,'ivonete.camara@gmail.com',0,2021, null);
insert into instituicao_professor values (13060,'lucia.santos@gmail.com',1,2001, null);
insert into instituicao_professor values (13069,'ary.souza@gmail.com',0,2021, null);
insert into instituicao_professor values (13069,'maria.araujo@gmail.com',1,2001, null);
insert into instituicao_professor values (13075,'ary.souza@gmail.com',0,2021, null);
insert into instituicao_professor values (13075,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (13095,'dirce.gracia@gmail.com',0,2021, null);
insert into instituicao_professor values (13095,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (13096,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (13097,'lucimara.vicente@gmail.com',1,2001, null);
insert into instituicao_professor values (13097,'maria.araujo@gmail.com',0,2021, null);
insert into instituicao_professor values (13234,'francisco.figueiredo@gmail.com',1,2001, null);
insert into instituicao_professor values (13234,'maria.camargo@gmail.com',0,2021, null);
insert into instituicao_professor values (13237,'dirce.gracia@gmail.com',0,2021, null);
insert into instituicao_professor values (13237,'primeiro.maio@gmail.com',1,2001, null);
insert into instituicao_professor values (13238,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (13240,'benedita.gonzalez@gmail.com',1,2001, null);
insert into instituicao_professor values (13240,'primeiro.maio@gmail.com',0,2021, null);
insert into instituicao_professor values (13241,'dirce.gracia@gmail.com',1,2001, null);
insert into instituicao_professor values (13241,'lucia.santos@gmail.com',0,2021, null);
insert into instituicao_professor values (13249,'lucia.santos@gmail.com',1,2001, null);
insert into instituicao_professor values (13249,'primeiro.maio@gmail.com',0,2021, null);
insert into instituicao_professor values (13250,'ary.souza@gmail.com',0,2021, null);
insert into instituicao_professor values (13250,'benedita.gonzalez@gmail.com',1,2001, null);
insert into instituicao_professor values (13252,'francisco.figueiredo@gmail.com',1,2001, null);
insert into instituicao_professor values (13252,'maria.camargo@gmail.com',0,2021, null);
insert into instituicao_professor values (13269,'benedita.gonzalez@gmail.com',0,2021, null);
insert into instituicao_professor values (13269,'primeiro.maio@gmail.com',1,2001, null);
insert into instituicao_professor values (13271,'francisco.figueiredo@gmail.com',0,2021, null);
insert into instituicao_professor values (13271,'maria.araujo@gmail.com',1,2001, null);
insert into instituicao_professor values (13273,'dirce.gracia@gmail.com',1,2001, null);
insert into instituicao_professor values (13273,'primeiro.maio@gmail.com',0,2021, null);
insert into instituicao_professor values (13274,'ivonete.camara@gmail.com',0,2021, null);
insert into instituicao_professor values (13274,'lucia.santos@gmail.com',1,2001, null);
insert into instituicao_professor values (13275,'maria.araujo@gmail.com',1,2001, null);
insert into instituicao_professor values (13275,'maria.camargo@gmail.com',0,2021, null);
insert into instituicao_professor values (13277,'gladston.jafet@gmail.com',1,2001, null);
insert into instituicao_professor values (13277,'primeiro.maio@gmail.com',0,2021, null);
insert into instituicao_professor values (13278,'francisco.figueiredo@gmail.com',1,2001, null);
insert into instituicao_professor values (13278,'ivonete.camara@gmail.com',0,2021, null);
insert into instituicao_professor values (13280,'ivonete.camara@gmail.com',0,2021, null);
insert into instituicao_professor values (13280,'lucimara.vicente@gmail.com',1,2001, null);
insert into instituicao_professor values (13282,'dirce.gracia@gmail.com',0,2021, null);
insert into instituicao_professor values (13282,'lucia.santos@gmail.com',1,2001, null);
insert into instituicao_professor values (13284,'dirce.gracia@gmail.com',1,2001, null);
insert into instituicao_professor values (13284,'maria.camargo@gmail.com',0,2021, null);
insert into instituicao_professor values (14792,'francisco.figueiredo@gmail.com',1,2001, null);
insert into instituicao_professor values (14792,'lucia.santos@gmail.com',0,2021, null);
insert into instituicao_professor values (14793,'gladston.jafet@gmail.com',1,2001, null);
insert into instituicao_professor values (14793,'ivonete.camara@gmail.com',0,2021, null);
insert into instituicao_professor values (14795,'ary.souza@gmail.com',0,2021, null);
insert into instituicao_professor values (14795,'maria.araujo@gmail.com',1,2001, null);
insert into instituicao_professor values (14796,'maria.araujo@gmail.com',1,2001, null);
insert into instituicao_professor values (14796,'maria.camargo@gmail.com',0,2021, null);
insert into instituicao_professor values (14797,'francisco.figueiredo@gmail.com',0,2021, null);
insert into instituicao_professor values (14797,'lucimara.vicente@gmail.com',1,2001, null);
insert into instituicao_professor values (14798,'dirce.gracia@gmail.com',1,2001, null);
insert into instituicao_professor values (14798,'primeiro.maio@gmail.com',0,2021, null);
insert into instituicao_professor values (14799,'benedita.gonzalez@gmail.com',0,2021, null);
insert into instituicao_professor values (14799,'francisco.figueiredo@gmail.com',1,2001, null);
insert into instituicao_professor values (14801,'gladston.jafet@gmail.com',0,2021, null);
insert into instituicao_professor values (14801,'lucia.santos@gmail.com',1,2001, null);
insert into instituicao_professor values (14802,'francisco.figueiredo@gmail.com',1,2001, null);
insert into instituicao_professor values (14802,'lucia.santos@gmail.com',0,2021, null);
insert into instituicao_professor values (14804,'maria.camargo@gmail.com',0,2021, null);
insert into instituicao_professor values (14804,'primeiro.maio@gmail.com',1,2001, null);
insert into instituicao_professor values (14806,'francisco.figueiredo@gmail.com',0,2021, null);
insert into instituicao_professor values (14806,'maria.araujo@gmail.com',1,2001, null);
insert into instituicao_professor values (14807,'dirce.gracia@gmail.com',0,2021, null);
insert into instituicao_professor values (14807,'gladston.jafet@gmail.com',1,2001, null);
insert into instituicao_professor values (14809,'lucia.santos@gmail.com',1,2001, null);
insert into instituicao_professor values (14809,'lucimara.vicente@gmail.com',0,2021, null);
insert into instituicao_professor values (14813,'francisco.figueiredo@gmail.com',1,2001, null);
insert into instituicao_professor values (14813,'maria.araujo@gmail.com',0,2021, null);
insert into instituicao_professor values (14816,'francisco.figueiredo@gmail.com',1,2001, null);
insert into instituicao_professor values (14816,'gladston.jafet@gmail.com',0,2021, null);
insert into instituicao_professor values (14822,'ary.souza@gmail.com',0,2021, null);
insert into instituicao_professor values (14822,'benedita.gonzalez@gmail.com',1,2001, null);
insert into instituicao_professor values (14826,'ivonete.camara@gmail.com',0,2021, null);
insert into instituicao_professor values (14826,'primeiro.maio@gmail.com',1,2001, null);
insert into instituicao_professor values (14828,'francisco.figueiredo@gmail.com',1,2001, null);
insert into instituicao_professor values (14828,'maria.camargo@gmail.com',0,2021, null);
insert into instituicao_professor values (14835,'ary.souza@gmail.com',0,2021, null);
insert into instituicao_professor values (14835,'maria.araujo@gmail.com',1,2001, null);
insert into instituicao_professor values (14892,'benedita.gonzalez@gmail.com',1,2001, null);
insert into instituicao_professor values (14892,'francisco.figueiredo@gmail.com',0,2021, null);
insert into instituicao_professor values (14893,'benedita.gonzalez@gmail.com',0,2021, null);
insert into instituicao_professor values (14893,'primeiro.maio@gmail.com',1,2001, null);
insert into instituicao_professor values (14904,'francisco.figueiredo@gmail.com',0,2021, null);
insert into instituicao_professor values (14904,'lucimara.vicente@gmail.com',1,2001, null);
insert into instituicao_professor values (14944,'lucia.santos@gmail.com',1,2001, null);
insert into instituicao_professor values (14944,'primeiro.maio@gmail.com',0,2021, null);
insert into instituicao_professor values (14945,'gladston.jafet@gmail.com',0,2021, null);
insert into instituicao_professor values (14945,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (14946,'dirce.gracia@gmail.com',0,2021, null);
insert into instituicao_professor values (14946,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (14948,'ary.souza@gmail.com',0,2021, null);
insert into instituicao_professor values (14948,'francisco.figueiredo@gmail.com',1,2001, null);
insert into instituicao_professor values (14949,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (14949,'maria.camargo@gmail.com',0,2021, null);
insert into instituicao_professor values (15028,'ivonete.camara@gmail.com',0,2021, null);
insert into instituicao_professor values (15028,'primeiro.maio@gmail.com',1,2001, null);
insert into instituicao_professor values (15029,'benedita.gonzalez@gmail.com',1,2001, null);
insert into instituicao_professor values (15029,'dirce.gracia@gmail.com',0,2021, null);
insert into instituicao_professor values (16140,'benedita.gonzalez@gmail.com',0,2021, null);
insert into instituicao_professor values (16140,'gladston.jafet@gmail.com',1,2001, null);
insert into instituicao_professor values (16142,'gladston.jafet@gmail.com',0,2021, null);
insert into instituicao_professor values (16142,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (16143,'lucimara.vicente@gmail.com',1,2001, null);
insert into instituicao_professor values (16143,'maria.camargo@gmail.com',0,2021, null);
insert into instituicao_professor values (16144,'benedita.gonzalez@gmail.com',0,2021, null);
insert into instituicao_professor values (16144,'dirce.gracia@gmail.com',1,2001, null);
insert into instituicao_professor values (16145,'dirce.gracia@gmail.com',0,2021, null);
insert into instituicao_professor values (16145,'gladston.jafet@gmail.com',1,2001, null);
insert into instituicao_professor values (16167,'maria.araujo@gmail.com',1,2001, null);
insert into instituicao_professor values (16167,'primeiro.maio@gmail.com',0,2021, null);
insert into instituicao_professor values (16175,'lucia.santos@gmail.com',1,2001, null);
insert into instituicao_professor values (16175,'maria.camargo@gmail.com',0,2021, null);
insert into instituicao_professor values (16177,'gladston.jafet@gmail.com',1,2001, null);
insert into instituicao_professor values (16177,'primeiro.maio@gmail.com',0,2021, null);
insert into instituicao_professor values (16179,'benedita.gonzalez@gmail.com',1,2001, null);
insert into instituicao_professor values (16179,'maria.camargo@gmail.com',0,2021, null);
insert into instituicao_professor values (16223,'lucimara.vicente@gmail.com',1,2001, null);
insert into instituicao_professor values (16223,'primeiro.maio@gmail.com',0,2021, null);
insert into instituicao_professor values (16233,'lucia.santos@gmail.com',1,2001, null);
insert into instituicao_professor values (16233,'primeiro.maio@gmail.com',0,2021, null);
insert into instituicao_professor values (16234,'maria.camargo@gmail.com',0,2021, null);
insert into instituicao_professor values (16234,'primeiro.maio@gmail.com',1,2001, null);
insert into instituicao_professor values (16250,'francisco.figueiredo@gmail.com',1,2001, null);
insert into instituicao_professor values (16250,'primeiro.maio@gmail.com',0,2021, null);
insert into instituicao_professor values (16254,'ivonete.camara@gmail.com',0,2021, null);
insert into instituicao_professor values (16254,'maria.araujo@gmail.com',1,2001, null);
insert into instituicao_professor values (16258,'benedita.gonzalez@gmail.com',1,2001, null);
insert into instituicao_professor values (16258,'francisco.figueiredo@gmail.com',0,2021, null);
insert into instituicao_professor values (16259,'francisco.figueiredo@gmail.com',0,2021, null);
insert into instituicao_professor values (16259,'primeiro.maio@gmail.com',1,2001, null);
insert into instituicao_professor values (16303,'maria.araujo@gmail.com',1,2001, null);
insert into instituicao_professor values (16303,'maria.camargo@gmail.com',0,2021, null);
insert into instituicao_professor values (16320,'francisco.figueiredo@gmail.com',1,2001, null);
insert into instituicao_professor values (16320,'lucimara.vicente@gmail.com',0,2021, null);
insert into instituicao_professor values (16351,'ary.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (16351,'dirce.gracia@gmail.com',0,2021, null);
insert into instituicao_professor values (16355,'maria.araujo@gmail.com',1,2001, null);
insert into instituicao_professor values (16355,'maria.camargo@gmail.com',0,2021, null);
insert into instituicao_professor values (16360,'ary.souza@gmail.com',0,2021, null);
insert into instituicao_professor values (16360,'primeiro.maio@gmail.com',1,2001, null);
insert into instituicao_professor values (16361,'lucia.santos@gmail.com',0,2021, null);
insert into instituicao_professor values (16361,'primeiro.maio@gmail.com',1,2001, null);
insert into instituicao_professor values (16363,'ary.souza@gmail.com',0,2021, null);
insert into instituicao_professor values (16363,'francisco.figueiredo@gmail.com',1,2001, null);
insert into instituicao_professor values (16366,'lucimara.vicente@gmail.com',0,2021, null);
insert into instituicao_professor values (16366,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (16370,'lucimara.vicente@gmail.com',1,2001, null);
insert into instituicao_professor values (16370,'maria.camargo@gmail.com',0,2021, null);
insert into instituicao_professor values (16371,'maria.araujo@gmail.com',1,2001, null);
insert into instituicao_professor values (16371,'primeiro.maio@gmail.com',0,2021, null);
insert into instituicao_professor values (16378,'ary.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (16728,'benedita.gonzalez@gmail.com',1,2001, null);
insert into instituicao_professor values (16728,'lucimara.vicente@gmail.com',0,2021, null);
insert into instituicao_professor values (16750,'ary.souza@gmail.com',0,2021, null);
insert into instituicao_professor values (16750,'francisco.figueiredo@gmail.com',1,2001, null);
insert into instituicao_professor values (16753,'dirce.gracia@gmail.com',0,2021, null);
insert into instituicao_professor values (16753,'lucia.santos@gmail.com',1,2001, null);
insert into instituicao_professor values (16763,'dirce.gracia@gmail.com',0,2021, null);
insert into instituicao_professor values (16763,'francisco.figueiredo@gmail.com',1,2001, null);
insert into instituicao_professor values (16822,'ivonete.camara@gmail.com',0,2021, null);
insert into instituicao_professor values (16822,'maria.araujo@gmail.com',1,2001, null);
insert into instituicao_professor values (16987,'gladston.jafet@gmail.com',0,2021, null);
insert into instituicao_professor values (16987,'lucia.santos@gmail.com',1,2001, null);
insert into instituicao_professor values (16997,'francisco.figueiredo@gmail.com',1,2001, null);
insert into instituicao_professor values (16997,'primeiro.maio@gmail.com',0,2021, null);
insert into instituicao_professor values (17011,'benedita.gonzalez@gmail.com',0,2021, null);
insert into instituicao_professor values (17011,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (17156,'francisco.figueiredo@gmail.com',1,2001, null);
insert into instituicao_professor values (17156,'maria.camargo@gmail.com',0,2021, null);
insert into instituicao_professor values (17158,'dirce.gracia@gmail.com',1,2001, null);
insert into instituicao_professor values (17158,'lucia.santos@gmail.com',0,2021, null);
insert into instituicao_professor values (17200,'dirce.gracia@gmail.com',0,2021, null);
insert into instituicao_professor values (17200,'gladston.jafet@gmail.com',1,2001, null);
insert into instituicao_professor values (17362,'gladston.jafet@gmail.com',0,2021, null);
insert into instituicao_professor values (17362,'lucimara.vicente@gmail.com',1,2001, null);
insert into instituicao_professor values (17758,'benedita.gonzalez@gmail.com',1,2001, null);
insert into instituicao_professor values (17758,'primeiro.maio@gmail.com',0,2021, null);
insert into instituicao_professor values (17795,'gladston.jafet@gmail.com',0,2021, null);
insert into instituicao_professor values (17795,'primeiro.maio@gmail.com',1,2001, null);
insert into instituicao_professor values (17836,'ary.souza@gmail.com',0,2021, null);
insert into instituicao_professor values (17836,'lucimara.vicente@gmail.com',1,2001, null);
insert into instituicao_professor values (17838,'gladston.jafet@gmail.com',0,2021, null);
insert into instituicao_professor values (17838,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (17862,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (17862,'maria.camargo@gmail.com',0,2021, null);
insert into instituicao_professor values (17869,'benedita.gonzalez@gmail.com',0,2021, null);
insert into instituicao_professor values (17869,'lucia.santos@gmail.com',1,2001, null);
insert into instituicao_professor values (17875,'benedita.gonzalez@gmail.com',0,2021, null);
insert into instituicao_professor values (17875,'maria.araujo@gmail.com',1,2001, null);
insert into instituicao_professor values (17884,'gladston.jafet@gmail.com',1,2001, null);
insert into instituicao_professor values (17884,'primeiro.maio@gmail.com',0,2021, null);
insert into instituicao_professor values (17887,'benedita.gonzalez@gmail.com',0,2021, null);
insert into instituicao_professor values (17887,'francisco.figueiredo@gmail.com',1,2001, null);
insert into instituicao_professor values (17895,'benedita.gonzalez@gmail.com',0,2021, null);
insert into instituicao_professor values (17895,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (17899,'francisco.figueiredo@gmail.com',1,2001, null);
insert into instituicao_professor values (17899,'lucimara.vicente@gmail.com',0,2021, null);
insert into instituicao_professor values (17902,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (17902,'lucimara.vicente@gmail.com',0,2021, null);
insert into instituicao_professor values (17910,'francisco.figueiredo@gmail.com',0,2021, null);
insert into instituicao_professor values (17910,'primeiro.maio@gmail.com',1,2001, null);
insert into instituicao_professor values (17916,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (17916,'maria.araujo@gmail.com',0,2021, null);
insert into instituicao_professor values (17920,'lucia.santos@gmail.com',0,2021, null);
insert into instituicao_professor values (17920,'primeiro.maio@gmail.com',1,2001, null);
insert into instituicao_professor values (17921,'benedita.gonzalez@gmail.com',1,2001, null);
insert into instituicao_professor values (17921,'lucia.santos@gmail.com',0,2021, null);
insert into instituicao_professor values (17984,'ary.souza@gmail.com',0,2021, null);
insert into instituicao_professor values (17984,'lucia.santos@gmail.com',1,2001, null);
insert into instituicao_professor values (18020,'francisco.figueiredo@gmail.com',0,2021, null);
insert into instituicao_professor values (18020,'lucia.santos@gmail.com',1,2001, null);
insert into instituicao_professor values (18054,'ary.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (18054,'maria.araujo@gmail.com',0,2021, null);
insert into instituicao_professor values (18091,'gladston.jafet@gmail.com',0,2021, null);
insert into instituicao_professor values (18091,'lucia.santos@gmail.com',1,2001, null);
insert into instituicao_professor values (18100,'lucia.santos@gmail.com',0,2021, null);
insert into instituicao_professor values (18100,'lucimara.vicente@gmail.com',1,2001, null);
insert into instituicao_professor values (18102,'ary.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (18102,'lucia.santos@gmail.com',0,2021, null);
insert into instituicao_professor values (18186,'ary.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (18186,'maria.camargo@gmail.com',0,2021, null);
insert into instituicao_professor values (18194,'dirce.gracia@gmail.com',1,2001, null);
insert into instituicao_professor values (18194,'ivonete.camara@gmail.com',0,2021, null);
insert into instituicao_professor values (18203,'benedita.gonzalez@gmail.com',0,2021, null);
insert into instituicao_professor values (18203,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (18244,'francisco.figueiredo@gmail.com',0,2021, null);
insert into instituicao_professor values (18244,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (18252,'dirce.gracia@gmail.com',0,2021, null);
insert into instituicao_professor values (18252,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (18253,'ary.souza@gmail.com',0,2021, null);
insert into instituicao_professor values (18253,'lucimara.vicente@gmail.com',1,2001, null);
insert into instituicao_professor values (18254,'dirce.gracia@gmail.com',0,2021, null);
insert into instituicao_professor values (18254,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (18255,'gladston.jafet@gmail.com',0,2021, null);
insert into instituicao_professor values (18255,'lucia.santos@gmail.com',1,2001, null);
insert into instituicao_professor values (18256,'francisco.figueiredo@gmail.com',0,2021, null);
insert into instituicao_professor values (18256,'maria.araujo@gmail.com',1,2001, null);
insert into instituicao_professor values (18258,'ivonete.camara@gmail.com',0,2021, null);
insert into instituicao_professor values (18258,'lucia.santos@gmail.com',1,2001, null);
insert into instituicao_professor values (18279,'dirce.gracia@gmail.com',1,2001, null);
insert into instituicao_professor values (18279,'gladston.jafet@gmail.com',0,2021, null);
insert into instituicao_professor values (19628,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (19628,'primeiro.maio@gmail.com',0,2021, null);
insert into instituicao_professor values (19629,'dirce.gracia@gmail.com',0,2021, null);
insert into instituicao_professor values (19629,'lucimara.vicente@gmail.com',1,2001, null);
insert into instituicao_professor values (19643,'lucimara.vicente@gmail.com',0,2021, null);
insert into instituicao_professor values (19643,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (19647,'francisco.figueiredo@gmail.com',0,2021, null);
insert into instituicao_professor values (19647,'maria.araujo@gmail.com',1,2001, null);
insert into instituicao_professor values (19669,'benedita.gonzalez@gmail.com',1,2001, null);
insert into instituicao_professor values (19669,'gladston.jafet@gmail.com',0,2021, null);
insert into instituicao_professor values (19670,'dirce.gracia@gmail.com',1,2001, null);
insert into instituicao_professor values (19670,'primeiro.maio@gmail.com',0,2021, null);
insert into instituicao_professor values (19677,'ary.souza@gmail.com',0,2021, null);
insert into instituicao_professor values (19677,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (20256,'dirce.gracia@gmail.com',1,2001, null);
insert into instituicao_professor values (20256,'francisco.figueiredo@gmail.com',0,2021, null);
insert into instituicao_professor values (20267,'lucimara.vicente@gmail.com',0,2021, null);
insert into instituicao_professor values (20267,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (20279,'lucia.santos@gmail.com',1,2001, null);
insert into instituicao_professor values (20279,'maria.camargo@gmail.com',0,2021, null);
insert into instituicao_professor values (20284,'dirce.gracia@gmail.com',1,2001, null);
insert into instituicao_professor values (20284,'ivonete.camara@gmail.com',0,2021, null);
insert into instituicao_professor values (20315,'francisco.figueiredo@gmail.com',1,2001, null);
insert into instituicao_professor values (20315,'ivonete.camara@gmail.com',0,2021, null);
insert into instituicao_professor values (20750,'ary.souza@gmail.com',0,2021, null);
insert into instituicao_professor values (20750,'lucia.santos@gmail.com',1,2001, null);
insert into instituicao_professor values (20754,'benedita.gonzalez@gmail.com',1,2001, null);
insert into instituicao_professor values (20754,'lucia.santos@gmail.com',0,2021, null);
insert into instituicao_professor values (20755,'gladston.jafet@gmail.com',1,2001, null);
insert into instituicao_professor values (20755,'lucimara.vicente@gmail.com',0,2021, null);
insert into instituicao_professor values (21110,'ivonete.camara@gmail.com',0,2021, null);
insert into instituicao_professor values (21110,'maria.araujo@gmail.com',1,2001, null);
insert into instituicao_professor values (21112,'dirce.gracia@gmail.com',1,2001, null);
insert into instituicao_professor values (21121,'gladston.jafet@gmail.com',1,2001, null);
insert into instituicao_professor values (21121,'maria.araujo@gmail.com',0,2021, null);
insert into instituicao_professor values (21122,'benedita.gonzalez@gmail.com',0,2021, null);
insert into instituicao_professor values (21122,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (21123,'gladston.jafet@gmail.com',0,2021, null);
insert into instituicao_professor values (21123,'primeiro.maio@gmail.com',1,2001, null);
insert into instituicao_professor values (21125,'francisco.figueiredo@gmail.com',1,2001, null);
insert into instituicao_professor values (21125,'maria.araujo@gmail.com',0,2021, null);
insert into instituicao_professor values (21421,'gladston.jafet@gmail.com',1,2001, null);
insert into instituicao_professor values (21421,'lucimara.vicente@gmail.com',0,2021, null);
insert into instituicao_professor values (22802,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (22802,'maria.araujo@gmail.com',0,2021, null);
insert into instituicao_professor values (22803,'francisco.figueiredo@gmail.com',0,2021, null);
insert into instituicao_professor values (22803,'primeiro.maio@gmail.com',1,2001, null);
insert into instituicao_professor values (22804,'gladston.jafet@gmail.com',0,2021, null);
insert into instituicao_professor values (22804,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (22805,'ary.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (22806,'francisco.figueiredo@gmail.com',1,2001, null);
insert into instituicao_professor values (22806,'ivonete.camara@gmail.com',0,2021, null);
insert into instituicao_professor values (22807,'benedita.gonzalez@gmail.com',0,2021, null);
insert into instituicao_professor values (22807,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (22808,'maria.araujo@gmail.com',1,2001, null);
insert into instituicao_professor values (22809,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (22809,'maria.araujo@gmail.com',0,2021, null);
insert into instituicao_professor values (22810,'lucia.santos@gmail.com',1,2001, null);
insert into instituicao_professor values (22810,'lucimara.vicente@gmail.com',0,2021, null);
insert into instituicao_professor values (22811,'lucimara.vicente@gmail.com',1,2001, null);
insert into instituicao_professor values (22811,'maria.camargo@gmail.com',0,2021, null);
insert into instituicao_professor values (22812,'lucia.santos@gmail.com',1,2001, null);
insert into instituicao_professor values (22813,'benedita.gonzalez@gmail.com',1,2001, null);
insert into instituicao_professor values (22813,'gladston.jafet@gmail.com',0,2021, null);
insert into instituicao_professor values (22814,'francisco.figueiredo@gmail.com',0,2021, null);
insert into instituicao_professor values (22814,'lucia.santos@gmail.com',1,2001, null);
insert into instituicao_professor values (22815,'benedita.gonzalez@gmail.com',1,2001, null);
insert into instituicao_professor values (22815,'dirce.gracia@gmail.com',0,2021, null);
insert into instituicao_professor values (22816,'benedita.gonzalez@gmail.com',0,2021, null);
insert into instituicao_professor values (22816,'gladston.jafet@gmail.com',1,2001, null);
insert into instituicao_professor values (22817,'dirce.gracia@gmail.com',0,2021, null);
insert into instituicao_professor values (22817,'maria.araujo@gmail.com',1,2001, null);
insert into instituicao_professor values (22818,'maria.araujo@gmail.com',0,2021, null);
insert into instituicao_professor values (22818,'primeiro.maio@gmail.com',1,2001, null);
insert into instituicao_professor values (22819,'ary.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (22819,'francisco.figueiredo@gmail.com',0,2021, null);
insert into instituicao_professor values (22820,'maria.araujo@gmail.com',1,2001, null);
insert into instituicao_professor values (22821,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (22821,'primeiro.maio@gmail.com',0,2021, null);
insert into instituicao_professor values (22822,'dirce.gracia@gmail.com',1,2001, null);
insert into instituicao_professor values (22822,'gladston.jafet@gmail.com',0,2021, null);
insert into instituicao_professor values (22823,'gladston.jafet@gmail.com',1,2001, null);
insert into instituicao_professor values (22823,'lucia.santos@gmail.com',0,2021, null);
insert into instituicao_professor values (22896,'benedita.gonzalez@gmail.com',1,2001, null);
insert into instituicao_professor values (22896,'maria.camargo@gmail.com',0,2021, null);
insert into instituicao_professor values (22898,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (22898,'primeiro.maio@gmail.com',0,2021, null);
insert into instituicao_professor values (22899,'lucimara.vicente@gmail.com',0,2021, null);
insert into instituicao_professor values (22899,'primeiro.maio@gmail.com',1,2001, null);
insert into instituicao_professor values (22900,'dirce.gracia@gmail.com',0,2021, null);
insert into instituicao_professor values (22900,'maria.araujo@gmail.com',1,2001, null);
insert into instituicao_professor values (22901,'dirce.gracia@gmail.com',1,2001, null);
insert into instituicao_professor values (22901,'ivonete.camara@gmail.com',0,2021, null);
insert into instituicao_professor values (22902,'dirce.gracia@gmail.com',1,2001, null);
insert into instituicao_professor values (22902,'gladston.jafet@gmail.com',0,2021, null);
insert into instituicao_professor values (22906,'benedita.gonzalez@gmail.com',1,2001, null);
insert into instituicao_professor values (22906,'lucia.santos@gmail.com',0,2021, null);
insert into instituicao_professor values (22922,'benedita.gonzalez@gmail.com',0,2021, null);
insert into instituicao_professor values (22922,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (22923,'benedita.gonzalez@gmail.com',1,2001, null);
insert into instituicao_professor values (22923,'francisco.figueiredo@gmail.com',0,2021, null);
insert into instituicao_professor values (22924,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (22924,'lucia.santos@gmail.com',0,2021, null);
insert into instituicao_professor values (22925,'francisco.figueiredo@gmail.com',1,2001, null);
insert into instituicao_professor values (22925,'ivonete.camara@gmail.com',0,2021, null);
insert into instituicao_professor values (22926,'dirce.gracia@gmail.com',1,2001, null);
insert into instituicao_professor values (22927,'ary.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (22927,'francisco.figueiredo@gmail.com',0,2021, null);
insert into instituicao_professor values (22928,'lucimara.vicente@gmail.com',1,2001, null);
insert into instituicao_professor values (22928,'maria.camargo@gmail.com',0,2021, null);
insert into instituicao_professor values (22935,'benedita.gonzalez@gmail.com',1,2001, null);
insert into instituicao_professor values (22935,'gladston.jafet@gmail.com',0,2021, null);
insert into instituicao_professor values (22938,'gladston.jafet@gmail.com',0,2021, null);
insert into instituicao_professor values (22938,'primeiro.maio@gmail.com',1,2001, null);
insert into instituicao_professor values (22950,'ivonete.camara@gmail.com',0,2021, null);
insert into instituicao_professor values (22950,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (22952,'ivonete.camara@gmail.com',0,2021, null);
insert into instituicao_professor values (22952,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (22953,'ary.souza@gmail.com',0,2021, null);
insert into instituicao_professor values (22953,'lucia.santos@gmail.com',1,2001, null);
insert into instituicao_professor values (22955,'francisco.figueiredo@gmail.com',0,2021, null);
insert into instituicao_professor values (22955,'primeiro.maio@gmail.com',1,2001, null);
insert into instituicao_professor values (23002,'lucimara.vicente@gmail.com',1,2001, null);
insert into instituicao_professor values (23002,'maria.camargo@gmail.com',0,2021, null);
insert into instituicao_professor values (23003,'ary.souza@gmail.com',0,2021, null);
insert into instituicao_professor values (23003,'primeiro.maio@gmail.com',1,2001, null);
insert into instituicao_professor values (23013,'lucimara.vicente@gmail.com',1,2001, null);
insert into instituicao_professor values (23013,'maria.araujo@gmail.com',0,2021, null);
insert into instituicao_professor values (23014,'francisco.figueiredo@gmail.com',0,2021, null);
insert into instituicao_professor values (23014,'lucia.santos@gmail.com',1,2001, null);
insert into instituicao_professor values (23025,'dirce.gracia@gmail.com',0,2021, null);
insert into instituicao_professor values (23025,'lucimara.vicente@gmail.com',1,2001, null);
insert into instituicao_professor values (23026,'ary.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (23026,'dirce.gracia@gmail.com',0,2021, null);
insert into instituicao_professor values (23038,'lucimara.vicente@gmail.com',1,2001, null);
insert into instituicao_professor values (23038,'maria.araujo@gmail.com',0,2021, null);
insert into instituicao_professor values (23058,'ary.souza@gmail.com',0,2021, null);
insert into instituicao_professor values (23058,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (23059,'benedita.gonzalez@gmail.com',1,2001, null);
insert into instituicao_professor values (23059,'francisco.figueiredo@gmail.com',0,2021, null);
insert into instituicao_professor values (23081,'lucia.santos@gmail.com',0,2021, null);
insert into instituicao_professor values (23081,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (23099,'lucimara.vicente@gmail.com',1,2001, null);
insert into instituicao_professor values (23099,'primeiro.maio@gmail.com',0,2021, null);
insert into instituicao_professor values (23128,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (23128,'lucimara.vicente@gmail.com',0,2021, null);
insert into instituicao_professor values (23129,'gladston.jafet@gmail.com',0,2021, null);
insert into instituicao_professor values (23129,'maria.araujo@gmail.com',1,2001, null);
insert into instituicao_professor values (23174,'ary.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (23174,'lucimara.vicente@gmail.com',0,2021, null);
insert into instituicao_professor values (23175,'gladston.jafet@gmail.com',1,2001, null);
insert into instituicao_professor values (23175,'primeiro.maio@gmail.com',0,2021, null);
insert into instituicao_professor values (23250,'benedita.gonzalez@gmail.com',1,2001, null);
insert into instituicao_professor values (23250,'lucia.santos@gmail.com',0,2021, null);
insert into instituicao_professor values (23251,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (23251,'primeiro.maio@gmail.com',0,2021, null);
insert into instituicao_professor values (23252,'francisco.figueiredo@gmail.com',1,2001, null);
insert into instituicao_professor values (23252,'ivonete.camara@gmail.com',0,2021, null);
insert into instituicao_professor values (23253,'lucia.santos@gmail.com',1,2001, null);
insert into instituicao_professor values (23254,'ivonete.camara@gmail.com',0,2021, null);
insert into instituicao_professor values (23254,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (23255,'dirce.gracia@gmail.com',0,2021, null);
insert into instituicao_professor values (23255,'maria.araujo@gmail.com',1,2001, null);
insert into instituicao_professor values (23256,'gladston.jafet@gmail.com',1,2001, null);
insert into instituicao_professor values (23256,'maria.camargo@gmail.com',0,2021, null);
insert into instituicao_professor values (23259,'lucimara.vicente@gmail.com',0,2021, null);
insert into instituicao_professor values (23259,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (23301,'lucia.santos@gmail.com',1,2001, null);
insert into instituicao_professor values (23301,'primeiro.maio@gmail.com',0,2021, null);
insert into instituicao_professor values (23302,'ary.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (23302,'ivonete.camara@gmail.com',0,2021, null);
insert into instituicao_professor values (23303,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (23303,'primeiro.maio@gmail.com',0,2021, null);
insert into instituicao_professor values (23304,'benedita.gonzalez@gmail.com',0,2021, null);
insert into instituicao_professor values (23304,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (23305,'benedita.gonzalez@gmail.com',0,2021, null);
insert into instituicao_professor values (23305,'maria.araujo@gmail.com',1,2001, null);
insert into instituicao_professor values (23498,'ary.souza@gmail.com',0,2021, null);
insert into instituicao_professor values (23498,'lucia.santos@gmail.com',1,2001, null);
insert into instituicao_professor values (23543,'ary.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (23543,'ivonete.camara@gmail.com',0,2021, null);
insert into instituicao_professor values (23545,'valeria.vieira@gmail.com',1,2001, null);
insert into instituicao_professor values (23546,'ary.souza@gmail.com',0,2021, null);
insert into instituicao_professor values (23546,'dirce.gracia@gmail.com',1,2001, null);
insert into instituicao_professor values (23547,'gladston.jafet@gmail.com',0,2021, null);
insert into instituicao_professor values (23547,'primeiro.maio@gmail.com',1,2001, null);
insert into instituicao_professor values (23548,'ivonete.camara@gmail.com',0,2021, null);
insert into instituicao_professor values (23548,'lucimara.vicente@gmail.com',1,2001, null);
insert into instituicao_professor values (23550,'dirce.gracia@gmail.com',1,2001, null);
insert into instituicao_professor values (23550,'maria.camargo@gmail.com',0,2021, null);
insert into instituicao_professor values (23551,'ivonete.camara@gmail.com',1,2001, null);
insert into instituicao_professor values (23551,'primeiro.maio@gmail.com',0,2021, null);
insert into instituicao_professor values (23553,'benedita.gonzalez@gmail.com',1,2001, null);
insert into instituicao_professor values (23554,'ary.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (23554,'primeiro.maio@gmail.com',0,2021, null);
insert into instituicao_professor values (23557,'francisco.figueiredo@gmail.com',1,2001, null);
insert into instituicao_professor values (23557,'primeiro.maio@gmail.com',0,2021, null);
insert into instituicao_professor values (23558,'lucia.santos@gmail.com',0,2021, null);
insert into instituicao_professor values (23558,'primeiro.maio@gmail.com',1,2001, null);
insert into instituicao_professor values (23560,'guilherme.furlani@gmail.com',1,2001, null);
insert into instituicao_professor values (23561,'maria.araujo@gmail.com',1,2001, null);
insert into instituicao_professor values (23561,'primeiro.maio@gmail.com',0,2021, null);
insert into instituicao_professor values (23562,'ivonete.camara@gmail.com',0,2021, null);
insert into instituicao_professor values (23562,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (23563,'benedita.gonzalez@gmail.com',1,2001, null);
insert into instituicao_professor values (23563,'gladston.jafet@gmail.com',0,2021, null);
insert into instituicao_professor values (23564,'dirce.gracia@gmail.com',0,2021, null);
insert into instituicao_professor values (23564,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (23565,'ary.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (23565,'benedita.gonzalez@gmail.com',0,2021, null);
insert into instituicao_professor values (23566,'dirce.gracia@gmail.com',0,2021, null);
insert into instituicao_professor values (23566,'gladston.jafet@gmail.com',1,2001, null);
insert into instituicao_professor values (23570,'francisco.figueiredo@gmail.com',1,2001, null);
insert into instituicao_professor values (23571,'paulo.freire@gmail.com',1,2001, null);
insert into instituicao_professor values (23572,'maria.camargo@gmail.com',1,2001, null);
insert into instituicao_professor values (23573,'ivonete.camara@gmail.com',0,2021, null);
insert into instituicao_professor values (23573,'primeiro.maio@gmail.com',1,2001, null);
insert into instituicao_professor values (23574,'benedita.gonzalez@gmail.com',0,2021, null);
insert into instituicao_professor values (23574,'primeiro.maio@gmail.com',1,2001, null);
insert into instituicao_professor values (23575,'dirce.gracia@gmail.com',0,2021, null);
insert into instituicao_professor values (23575,'francisco.figueiredo@gmail.com',1,2001, null);
insert into instituicao_professor values (23576,'gladston.jafet@gmail.com',1,2001, null);
insert into instituicao_professor values (23576,'primeiro.maio@gmail.com',0,2021, null);
insert into instituicao_professor values (23577,'jose.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (23581,'ary.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (23583,'ary.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (23583,'benedita.gonzalez@gmail.com',0,2021, null);
insert into instituicao_professor values (23584,'francisco.figueiredo@gmail.com',1,2001, null);
insert into instituicao_professor values (23584,'gladston.jafet@gmail.com',0,2021, null);
insert into instituicao_professor values (23588,'lucimara.vicente@gmail.com',0,2021, null);
insert into instituicao_professor values (23588,'primeiro.maio@gmail.com',1,2001, null);
insert into instituicao_professor values (23589,'gladston.jafet@gmail.com',0,2021, null);
insert into instituicao_professor values (23589,'maria.araujo@gmail.com',1,2001, null);
insert into instituicao_professor values (23590,'herbert.dow@gmail.com',1,2001, null);
insert into instituicao_professor values (23591,'lucimara.vicente@gmail.com',0,2021, null);
insert into instituicao_professor values (23591,'primeiro.maio@gmail.com',1,2001, null);
insert into instituicao_professor values (23592,'ary.souza@gmail.com',1,2001, null);
insert into instituicao_professor values (23592,'ivonete.camara@gmail.com',0,2021, null);
insert into instituicao_professor values (23593,'dirce.gracia@gmail.com',0,2021, null);
insert into instituicao_professor values (23593,'lucia.santos@gmail.com',1,2001, null);

-- Supervisores
insert into supervisor values('erica.campos@gmail.com',13075,'ING',2,'supervisor.ingles@gmail.com',md5('123'),null);
insert into supervisor values('erica.campos@gmail.com',7764,'MAT',2,'supervisor.matematica@gmail.com',md5('123'),null);
insert into supervisor values('erica.campos@gmail.com',13030,'PORT',2,'supervisor.portugues@gmail.com',md5('123'),null);
insert into supervisor values('erica.campos@gmail.com',8317,'GEO',2,'supervisor.geografia@gmail.com',md5('123'),null);
insert into supervisor values('erica.campos@gmail.com',5420,'CIEN',2,'supervisor.ciencias@gmail.com',md5('123'),null);
insert into supervisor values('erica.campos@gmail.com',10593,'EDF',2,'supervisor.edfisica@gmail.com',md5('123'),null);
insert into supervisor values('erica.campos@gmail.com',18214,'ART',2,'supervisor.artes@gmail.com',md5('123'),null);
insert into supervisor values('erica.campos@gmail.com',5790,'HIST',2,'supervisor.historia@gmail.com',md5('123'),null);
insert into supervisor values('erica.campos@gmail.com',10684,'DV',3,'supervisor.defvisual@gmail.com',md5('123'),null);
insert into supervisor values('erica.campos@gmail.com',10684,'DA',3,'supervisor.defauditiva@gmail.com',md5('123'),null);
insert into supervisor values('erica.campos@gmail.com',10684,'DI',3,'supervisor.defintelectual@gmail.com',md5('123'),null);
insert into supervisor values('erica.campos@gmail.com',13280,'NC',1,'supervisor.nucleocomum@gmail.com',md5('123'),null);

-- Diretores
Insert into diretor values('adelaide.fernandes@gmail.com',(Select cd_professor from professor where nm_email_professor= 'joao.santos@gmail.com'),'2021-01-01','2021-12-31');
Insert into diretor values('afonso.nunes@gmail.com',(Select cd_professor from professor where nm_email_professor= 'maria.souza@gmail.com'),'2021-01-01','2021-12-31');
Insert into diretor values('angelina.daige@gmail.com',(Select cd_professor from professor where nm_email_professor= 'pedro.lima@gmail.com'),'2021-01-01','2021-12-31');
Insert into diretor values('antonio.almeida@gmail.com',(Select cd_professor from professor where nm_email_professor= 'ana.pereira@gmail.com'),'2021-01-01','2021-12-31');
Insert into diretor values('aparecida.sinopoli@gmail.com',(Select cd_professor from professor where nm_email_professor= 'luiz.costa@gmail.com'),'2021-01-01','2021-12-31');
Insert into diretor values('augusto.antunes@gmail.com',(Select cd_professor from professor where nm_email_professor= 'rafaela.martins@gmail.com'),'2021-01-01','2021-12-31');
Insert into diretor values('benedita.gonzalez@gmail.com',(Select cd_professor from professor where nm_email_professor= 'marcelo.santos@gmail.com'),'2021-01-01','2021-12-31');
Insert into diretor values('catarina.salgado@gmail.com',(Select cd_professor from professor where nm_email_professor= 'andre.ferreira@gmail.com'),'2021-01-01','2021-12-31');
Insert into diretor values('constantino.michaello@gmail.com',(Select cd_professor from professor where nm_email_professor= 'camila.oliveira@gmail.com'),'2021-01-01','2021-12-31');
Insert into diretor values('dirce.gracia@gmail.com',(Select cd_professor from professor where nm_email_professor= 'diego.silva@gmail.com'),'2021-01-01','2021-12-31');
Insert into diretor values('domenico.rangoni@gmail.com',(Select cd_professor from professor where nm_email_professor= 'renata.costa@gmail.com'),'2021-01-01','2021-12-31');
Insert into diretor values('ernesto.sobrinho@gmail.com',(Select cd_professor from professor where nm_email_professor= 'lucas.souza@gmail.com'),'2021-01-01','2021-12-31');
Insert into diretor values('francisco.figueiredo@gmail.com',(Select cd_professor from professor where nm_email_professor= 'mariana.rodrigues@gmail.com'),'2021-01-01','2021-12-31');
Insert into diretor values('franklin.roosevelt@gmail.com',(Select cd_professor from professor where nm_email_professor= 'gabriel.pereira@gmail.com'),'2021-01-01','2021-12-31');
Insert into diretor values('giusfredo.santini@gmail.com',(Select cd_professor from professor where nm_email_professor= 'vanessa.alves@gmail.com'),'2021-01-01','2021-12-31');
Insert into diretor values('gladston.jafet@gmail.com',(Select cd_professor from professor where nm_email_professor= 'thiago.castro@gmail.com'),'2021-01-01','2021-12-31');
Insert into diretor values('guilherme.furlani@gmail.com',(Select cd_professor from professor where nm_email_professor= 'patricia.oliveira@gmail.com'),'2021-01-01','2021-12-31');
Insert into diretor values('herbert.dow@gmail.com',(Select cd_professor from professor where nm_email_professor= 'bruno.santos@gmail.com'),'2021-01-01','2021-12-31');
Insert into diretor values('herminia.vitiello@gmail.com',(Select cd_professor from professor where nm_email_professor= 'larissa.fernandes@gmail.com'),'2021-01-01','2021-12-31');
Insert into diretor values('ivonete.camara@gmail.com',(Select cd_professor from professor where nm_email_professor= 'ricardo.almeida@gmail.com'),'2021-01-01','2021-12-31');
Insert into diretor values('jacirema.fontes@gmail.com',(Select cd_professor from professor where nm_email_professor= 'amanda.castro@gmail.com'),'2021-01-01','2021-12-31');
Insert into diretor values('joao.oliveira@gmail.com',(Select cd_professor from professor where nm_email_professor= 'gustavo.lima@gmail.com'),'2021-01-01','2021-12-31');
Insert into diretor values('jose.souza@gmail.com',(Select cd_professor from professor where nm_email_professor= 'isabela.fernandes@gmail.com'),'2021-01-01','2021-12-31');
Insert into diretor values('lucia.santos@gmail.com',(Select cd_professor from professor where nm_email_professor= 'fabio.silva@gmail.com'),'2021-01-01','2021-12-31');
Insert into diretor values('lucimara.vicente@gmail.com',(Select cd_professor from professor where nm_email_professor= 'carolina.alves@gmail.com'),'2021-01-01','2021-12-31');
Insert into diretor values('magdalena.lourenco@gmail.com',(Select cd_professor from professor where nm_email_professor= 'daniel.oliveira@gmail.com'),'2021-01-01','2021-12-31');
Insert into diretor values('maria.araujo@gmail.com',(Select cd_professor from professor where nm_email_professor= 'ana.costa@gmail.com'),'2021-01-01','2021-12-31');
Insert into diretor values('maria.camargo@gmail.com',(Select cd_professor from professor where nm_email_professor= 'marcela.pereira@gmail.com'),'2021-01-01','2021-12-31');
Insert into diretor values('maria.eunice@gmail.com',(Select cd_professor from professor where nm_email_professor= 'andrea.lima@gmail.com'),'2021-01-01','2021-12-31');
Insert into diretor values('maria.lourdes@gmail.com',(Select cd_professor from professor where nm_email_professor= 'leandro.santos@gmail.com'),'2021-01-01','2021-12-31');
Insert into diretor values('maria.teixeira@gmail.com',(Select cd_professor from professor where nm_email_professor= 'aline.fernandes@gmail.com'),'2021-01-01','2021-12-31');
Insert into diretor values('marina.daige@gmail.com',(Select cd_professor from professor where nm_email_professor= 'eduardo.oliveira@gmail.com'),'2021-01-01','2021-12-31');
Insert into diretor values('mario.leite@gmail.com',(Select cd_professor from professor where nm_email_professor= 'marina.costa@gmail.com'),'2021-01-01','2021-12-31');
Insert into diretor values('myrian.millborn@gmail.com',(Select cd_professor from professor where nm_email_professor= 'roberto.santos@gmail.com'),'2021-01-01','2021-12-31');
Insert into diretor values('napoleao.rodrigues@gmail.com',(Select cd_professor from professor where nm_email_professor= 'camila.lima@gmail.com'),'2021-01-01','2021-12-31');
Insert into diretor values('oswaldo.cruz@gmail.com',(Select cd_professor from professor where nm_email_professor= 'vinicius.almeida@gmail.com'),'2021-01-01','2021-12-31');
Insert into diretor values('paulo.freire@gmail.com',(Select cd_professor from professor where nm_email_professor= 'vanessa.lima@gmail.com'),'2021-01-01','2021-12-31');
Insert into diretor values('philomena.cardoso@gmail.com',(Select cd_professor from professor where nm_email_professor= 'rafael.santos@gmail.com'),'2021-01-01','2021-12-31');
Insert into diretor values('primeiro.maio@gmail.com',(Select cd_professor from professor where nm_email_professor= 'ana.luiza.almeida@gmail.com'),'2021-01-01','2021-12-31');
Insert into diretor values('samuel.franco@gmail.com',(Select cd_professor from professor where nm_email_professor= 'gustavo.fernandes@gmail.com'),'2021-01-01','2021-12-31');
Insert into diretor values('sergio.rodrigues@gmail.com',(Select cd_professor from professor where nm_email_professor= 'juliana.oliveira@gmail.com'),'2021-01-01','2021-12-31');
Insert into diretor values('valeria.vieira@gmail.com',(Select cd_professor from professor where nm_email_professor= 'lucas.silva@gmail.com'),'2021-01-01','2021-12-31');
Insert into diretor values('vereador.ernesto@gmail.com',(Select cd_professor from professor where nm_email_professor= 'tatiana.alves@gmail.com'),'2021-01-01','2021-12-31');
Insert into diretor values('vicentina.valle@gmail.com',(Select cd_professor from professor where nm_email_professor= 'guilherme.costa@gmail.com'),'2021-01-01','2021-12-31');

Insert into diretor values('ary.souza@gmail.com',(Select cd_professor from professor where nm_email_professor= 'juliana.gomes@gmail.com'),'2019-01-01','2019-12-31');
Insert into diretor values('ary.souza@gmail.com',(Select cd_professor from professor where nm_email_professor= 'juliana.gomes@gmail.com'),'2020-01-01','2020-12-31');
Insert into diretor values('ary.souza@gmail.com',(Select cd_professor from professor where nm_email_professor= 'juliana.gomes@gmail.com'),'2021-01-01','2021-12-31');
Insert into diretor values('ary.souza@gmail.com',(Select cd_professor from professor where nm_email_professor= 'juliana.gomes@gmail.com'),'2022-01-01','2022-12-31');
Insert into diretor values('ary.souza@gmail.com',(Select cd_professor from professor where nm_email_professor= 'juliana.gomes@gmail.com'),'2023-01-01','2023-12-31');
Insert into diretor values('ary.souza@gmail.com',(Select cd_professor from professor where nm_email_professor= 'juliana.gomes@gmail.com'),'2025-01-01','2025-12-31');

-- instituicao Tipo Ensino
Insert into instituicao_Tipo_Ensino values ((Select nm_email_instituicao from instituicao where nm_instituicao = 'E.M. Ver. Afonso Nunes'), 1);
Insert into instituicao_Tipo_Ensino values ((Select nm_email_instituicao from instituicao where nm_instituicao = 'E.M. Angelina Daige'), 1);
Insert into instituicao_Tipo_Ensino values ((Select nm_email_instituicao from instituicao where nm_instituicao = 'E.M. Prof. Antonio Ferreira de Almeida Jr'), 1);
Insert into instituicao_Tipo_Ensino values ((Select nm_email_instituicao from instituicao where nm_instituicao = 'E.M. Pres. Franklin Delano Roosevelt'), 1);
Insert into instituicao_Tipo_Ensino values ((Select nm_email_instituicao from instituicao where nm_instituicao = 'E.M. Giusfredo Santini'), 1);
Insert into instituicao_Tipo_Ensino values ((Select nm_email_instituicao from instituicao where nm_instituicao = 'E.M. Hebert Henry Dow'), 1);
Insert into instituicao_Tipo_Ensino values ((Select nm_email_instituicao from instituicao where nm_instituicao = 'E.M. Profª Jacirema dos Santos Fontes'), 1);
Insert into instituicao_Tipo_Ensino values ((Select nm_email_instituicao from instituicao where nm_instituicao = 'E.M. Mario Cerqueira Leite Filho'), 1);
Insert into instituicao_Tipo_Ensino values ((Select nm_email_instituicao from instituicao where nm_instituicao = 'E.M. Profª Myrian Terezinha Wichrowski Millbourn'), 1);
Insert into instituicao_Tipo_Ensino values ((Select nm_email_instituicao from instituicao where nm_instituicao = 'E.M. Dr. Oswaldo Cruz II'), 1);
Insert into instituicao_Tipo_Ensino values ((Select nm_email_instituicao from instituicao where nm_instituicao = 'E.M. Paulo Freire'), 1);
Insert into instituicao_Tipo_Ensino values ((Select nm_email_instituicao from instituicao where nm_instituicao = 'E.M. Sérgio Pereira Rodrigues'), 1);
Insert into instituicao_Tipo_Ensino values ((Select nm_email_instituicao from instituicao where nm_instituicao = 'E.M. Valéria Cristina Vieira da Cruz Silva'), 1);
Insert into instituicao_Tipo_Ensino values ((Select nm_email_instituicao from instituicao where nm_instituicao = 'N.E.I.M. Marina Daige'), 1);
Insert into instituicao_Tipo_Ensino values ((Select nm_email_instituicao from instituicao where nm_instituicao = 'E.M. Adelaide Fernandes'), 1);
Insert into instituicao_Tipo_Ensino values ((Select nm_email_instituicao from instituicao where nm_instituicao = 'E.M. Aparecida da Costa Sinópoli'), 1);
Insert into instituicao_Tipo_Ensino values ((Select nm_email_instituicao from instituicao where nm_instituicao = 'E.M. Augusto Antunes Correa'), 1);
Insert into instituicao_Tipo_Ensino values ((Select nm_email_instituicao from instituicao where nm_instituicao = 'E.M. Catarina de Oliveira Salgado'), 1);
Insert into instituicao_Tipo_Ensino values ((Select nm_email_instituicao from instituicao where nm_instituicao = 'E.M. Cônego Domenico Rangoni'), 1);
Insert into instituicao_Tipo_Ensino values ((Select nm_email_instituicao from instituicao where nm_instituicao = 'E.M. Constantino Michaello Condei'), 1);
Insert into instituicao_Tipo_Ensino values ((Select nm_email_instituicao from instituicao where nm_instituicao = 'E.M. Dr. Ernesto Ferreira Sobrinho'), 1);
Insert into instituicao_Tipo_Ensino values ((Select nm_email_instituicao from instituicao where nm_instituicao = 'E.M. Prof. Guilherme Furlani Junior'), 1);
Insert into instituicao_Tipo_Ensino values ((Select nm_email_instituicao from instituicao where nm_instituicao = 'E.M. Hermínia Neves Vitiello'), 1);
Insert into instituicao_Tipo_Ensino values ((Select nm_email_instituicao from instituicao where nm_instituicao = 'E.M. João de Oliveira'), 1);
Insert into instituicao_Tipo_Ensino values ((Select nm_email_instituicao from instituicao where nm_instituicao = 'E.M. José de Souza'), 1);
Insert into instituicao_Tipo_Ensino values ((Select nm_email_instituicao from instituicao where nm_instituicao = 'E.M. Profª Magdalena Maria Cardoso Lourenço'), 1);
Insert into instituicao_Tipo_Ensino values ((Select nm_email_instituicao from instituicao where nm_instituicao = 'E.M. Profª Maria de Lourdes Gonçalves de Oliveira'), 1);
Insert into instituicao_Tipo_Ensino values ((Select nm_email_instituicao from instituicao where nm_instituicao = 'E.M. Maria Eunice da Cruz'), 1);
Insert into instituicao_Tipo_Ensino values ((Select nm_email_instituicao from instituicao where nm_instituicao = 'E.M. Profª Maria Regina Teixeira dos Santos Claro'), 1);
Insert into instituicao_Tipo_Ensino values ((Select nm_email_instituicao from instituicao where nm_instituicao = 'E.M. Profª Philomena Cardoso de Oliveira'), 1);
Insert into instituicao_Tipo_Ensino values ((Select nm_email_instituicao from instituicao where nm_instituicao = 'E.M. Pastor Samuel Franco de Menezes'), 1);
Insert into instituicao_Tipo_Ensino values ((Select nm_email_instituicao from instituicao where nm_instituicao = 'E.M. Ver. Ernesto Pereira'), 1);
Insert into instituicao_Tipo_Ensino values ((Select nm_email_instituicao from instituicao where nm_instituicao = 'E.M. Vicentina Lamas do Valle'), 1);
Insert into instituicao_Tipo_Ensino values ((Select nm_email_instituicao from instituicao where nm_instituicao = 'E.M. Ver. Ary Silva Souza'), 1);
Insert into instituicao_Tipo_Ensino values ((Select nm_email_instituicao from instituicao where nm_instituicao = 'E.M. Benedicta Blac Gonzalez'), 1);
Insert into instituicao_Tipo_Ensino values ((Select nm_email_instituicao from instituicao where nm_instituicao = 'E.M. Profª Ivonete da Silva Câmara'), 1);
Insert into instituicao_Tipo_Ensino values ((Select nm_email_instituicao from instituicao where nm_instituicao = 'E.M. Dr. Napoleão Rodrigues Laureano'), 1);
Insert into instituicao_Tipo_Ensino values ((Select nm_email_instituicao from instituicao where nm_instituicao = 'E.M. Dr. Gladston Jafet'), 1);
Insert into instituicao_Tipo_Ensino values ((Select nm_email_instituicao from instituicao where nm_instituicao = 'E.M. Ver. Ary Silva Souza'), 2);
Insert into instituicao_Tipo_Ensino values ((Select nm_email_instituicao from instituicao where nm_instituicao = 'E.M. Benedicta Blac Gonzalez'), 2);
Insert into instituicao_Tipo_Ensino values ((Select nm_email_instituicao from instituicao where nm_instituicao = 'E.M. Profª Dirce Valério Gracia'), 2);
Insert into instituicao_Tipo_Ensino values ((Select nm_email_instituicao from instituicao where nm_instituicao = 'E.M. Profª Ivonete da Silva Câmara'), 2);
Insert into instituicao_Tipo_Ensino values ((Select nm_email_instituicao from instituicao where nm_instituicao = 'E.M. Ver. Francisco Figueiredo'), 2);
Insert into instituicao_Tipo_Ensino values ((Select nm_email_instituicao from instituicao where nm_instituicao = 'E.M. Profª Maria Aparecida de Araújo'), 2);
Insert into instituicao_Tipo_Ensino values ((Select nm_email_instituicao from instituicao where nm_instituicao = 'E.M. Profª Mª Aparecida Ramos Camargo'), 2);
Insert into instituicao_Tipo_Ensino values ((Select nm_email_instituicao from instituicao where nm_instituicao = 'E.M. 1º de Maio'), 2);
Insert into instituicao_Tipo_Ensino values ((Select nm_email_instituicao from instituicao where nm_instituicao = 'E.M. Lucimara de Jesus Vicente'), 2);
Insert into instituicao_Tipo_Ensino values ((Select nm_email_instituicao from instituicao where nm_instituicao = 'E.M. Dr. Gladston Jafet'), 2);
Insert into instituicao_Tipo_Ensino values ((Select nm_email_instituicao from instituicao where nm_instituicao = 'E.M. Profª Lúcia Flora dos Santos'), 2);


-- ADELAIDE
insert into turma values
('1º Ano A', '1A', 'adelaide.fernandes@gmail.com',1,1),
('1º Ano B', '1B', 'adelaide.fernandes@gmail.com',1,1),
('1º Ano C', '1C', 'adelaide.fernandes@gmail.com',1,1),
('2º Ano A', '2A', 'adelaide.fernandes@gmail.com',1,1),
('2º Ano B', '2B', 'adelaide.fernandes@gmail.com',1,1),
('2º Ano C', '2C', 'adelaide.fernandes@gmail.com',1,1),
('3º Ano A', '3A', 'adelaide.fernandes@gmail.com',1,1),
('3º Ano B', '3B', 'adelaide.fernandes@gmail.com',1,1),
('3º Ano C', '3C', 'adelaide.fernandes@gmail.com',1,1),
('4º Ano A', '4A', 'adelaide.fernandes@gmail.com',1,1),
('4º Ano B', '4B', 'adelaide.fernandes@gmail.com',1,1),
('4º Ano C', '4C', 'adelaide.fernandes@gmail.com',1,1),
('5º Ano A', '5A', 'adelaide.fernandes@gmail.com',1,1),
('5º Ano B', '5B', 'adelaide.fernandes@gmail.com',1,1),
('5º Ano C', '5C', 'adelaide.fernandes@gmail.com',1,1);

-- AFONSO NUNES
insert into turma values
('1º Ano A', '1A', 'afonso.nunes@gmail.com',1,1),
('1º Ano B', '1B', 'afonso.nunes@gmail.com',1,1),
('1º Ano C', '1C', 'afonso.nunes@gmail.com',1,1),
('2º Ano A', '2A', 'afonso.nunes@gmail.com',1,1),
('2º Ano B', '2B', 'afonso.nunes@gmail.com',1,1),
('2º Ano C', '2C', 'afonso.nunes@gmail.com',1,1),
('3º Ano A', '3A', 'afonso.nunes@gmail.com',1,1),
('3º Ano B', '3B', 'afonso.nunes@gmail.com',1,1),
('3º Ano C', '3C', 'afonso.nunes@gmail.com',1,1);

-- ANGELINA DAIGE
insert into turma values
('4º Ano A', '4A', 'angelina.daige@gmail.com',1,1),
('4º Ano B', '4B', 'angelina.daige@gmail.com',1,1),
('4º Ano C', '4C', 'angelina.daige@gmail.com',1,1),
('4º Ano D', '4D', 'angelina.daige@gmail.com',1,1),
('4º Ano E', '4E', 'angelina.daige@gmail.com',1,1),
('5º Ano A', '5A', 'angelina.daige@gmail.com',1,1),
('5º Ano B', '5B', 'angelina.daige@gmail.com',1,1),
('5º Ano C', '5C', 'angelina.daige@gmail.com',1,1),
('5º Ano D', '5D', 'angelina.daige@gmail.com',1,1),
('5º Ano E', '5E', 'angelina.daige@gmail.com',1,1);

-- Antonio Almeida
insert into turma values
('1º Ano A', '1A', 'antonio.almeida@gmail.com',1,1),
('1º Ano B', '1B', 'antonio.almeida@gmail.com',1,1),
('1º Ano C', '1C', 'antonio.almeida@gmail.com',1,1),
('1º Ano D', '1D', 'antonio.almeida@gmail.com',1,1),
('1º Ano E', '1E', 'antonio.almeida@gmail.com',1,1),
('2º Ano A', '2A', 'antonio.almeida@gmail.com',1,1),
('2º Ano B', '2B', 'antonio.almeida@gmail.com',1,1),
('2º Ano C', '2C', 'antonio.almeida@gmail.com',1,1),
('2º Ano D', '2D', 'antonio.almeida@gmail.com',1,1),
('2º Ano E', '2E', 'antonio.almeida@gmail.com',1,1),
('3º Ano A', '3A', 'antonio.almeida@gmail.com',1,1),
('3º Ano B', '3B', 'antonio.almeida@gmail.com',1,1),
('3º Ano C', '3C', 'antonio.almeida@gmail.com',1,1),
('3º Ano D', '3D', 'antonio.almeida@gmail.com',1,1),
('3º Ano E', '3E', 'antonio.almeida@gmail.com',1,1),
('4º Ano A', '4A', 'antonio.almeida@gmail.com',1,1),
('4º Ano B', '4B', 'antonio.almeida@gmail.com',1,1),
('4º Ano C', '4C', 'antonio.almeida@gmail.com',1,1),
('4º Ano D', '4D', 'antonio.almeida@gmail.com',1,1),
('4º Ano E', '4E', 'antonio.almeida@gmail.com',1,1),
('5º Ano A', '5A', 'antonio.almeida@gmail.com',1,1),
('5º Ano B', '5B', 'antonio.almeida@gmail.com',1,1),
('5º Ano C', '5C', 'antonio.almeida@gmail.com',1,1),
('5º Ano D', '5D', 'antonio.almeida@gmail.com',1,1),
('5º Ano E', '5E', 'antonio.almeida@gmail.com',1,1);

-- Aparecida Sinopoli
insert into turma values
('1º Ano A', '1A', 'aparecida.sinopoli@gmail.com',1,1),
('1º Ano B', '1B', 'aparecida.sinopoli@gmail.com',1,1),
('1º Ano C', '1C', 'aparecida.sinopoli@gmail.com',1,1),
('1º Ano D', '1D', 'aparecida.sinopoli@gmail.com',1,1),
('1º Ano E', '1E', 'aparecida.sinopoli@gmail.com',1,1),
('2º Ano A', '2A', 'aparecida.sinopoli@gmail.com',1,1),
('2º Ano B', '2B', 'aparecida.sinopoli@gmail.com',1,1),
('2º Ano C', '2C', 'aparecida.sinopoli@gmail.com',1,1),
('2º Ano D', '2D', 'aparecida.sinopoli@gmail.com',1,1),
('2º Ano E', '2E', 'aparecida.sinopoli@gmail.com',1,1),
('3º Ano A', '3A', 'aparecida.sinopoli@gmail.com',1,1),
('3º Ano B', '3B', 'aparecida.sinopoli@gmail.com',1,1),
('3º Ano C', '3C', 'aparecida.sinopoli@gmail.com',1,1),
('3º Ano D', '3D', 'aparecida.sinopoli@gmail.com',1,1),
('3º Ano E', '3E', 'aparecida.sinopoli@gmail.com',1,1),
('4º Ano A', '4A', 'aparecida.sinopoli@gmail.com',1,1),
('4º Ano B', '4B', 'aparecida.sinopoli@gmail.com',1,1),
('4º Ano C', '4C', 'aparecida.sinopoli@gmail.com',1,1),
('4º Ano D', '4D', 'aparecida.sinopoli@gmail.com',1,1),
('4º Ano E', '4E', 'aparecida.sinopoli@gmail.com',1,1),
('5º Ano A', '5A', 'aparecida.sinopoli@gmail.com',1,1),
('5º Ano B', '5B', 'aparecida.sinopoli@gmail.com',1,1),
('5º Ano C', '5C', 'aparecida.sinopoli@gmail.com',1,1),
('5º Ano D', '5D', 'aparecida.sinopoli@gmail.com',1,1),
('5º Ano E', '5E', 'aparecida.sinopoli@gmail.com',1,1);

-- Ary Souza
insert into turma values
('1º Ano A', '1A', 'ary.souza@gmail.com',1,1),
('1º Ano B', '1B', 'ary.souza@gmail.com',1,1),
('1º Ano C', '1C', 'ary.souza@gmail.com',1,1),
('1º Ano D', '1D', 'ary.souza@gmail.com',1,1),
('1º Ano E', '1E', 'ary.souza@gmail.com',1,1),
('2º Ano A', '2A', 'ary.souza@gmail.com',1,1),
('2º Ano B', '2B', 'ary.souza@gmail.com',1,1),
('2º Ano C', '2C', 'ary.souza@gmail.com',1,1),
('2º Ano D', '2D', 'ary.souza@gmail.com',1,1),
('2º Ano E', '2E', 'ary.souza@gmail.com',1,1),
('3º Ano A', '3A', 'ary.souza@gmail.com',1,1),
('3º Ano B', '3B', 'ary.souza@gmail.com',1,1),
('3º Ano C', '3C', 'ary.souza@gmail.com',1,1),
('3º Ano D', '3D', 'ary.souza@gmail.com',1,1),
('3º Ano E', '3E', 'ary.souza@gmail.com',1,1),
('4º Ano A', '4A', 'ary.souza@gmail.com',1,1),
('4º Ano B', '4B', 'ary.souza@gmail.com',1,1),
('4º Ano C', '4C', 'ary.souza@gmail.com',1,1),
('4º Ano D', '4D', 'ary.souza@gmail.com',1,1),
('4º Ano E', '4E', 'ary.souza@gmail.com',1,1),
('5º Ano A', '5A', 'ary.souza@gmail.com',1,1),
('5º Ano B', '5B', 'ary.souza@gmail.com',1,1),
('5º Ano C', '5C', 'ary.souza@gmail.com',1,1),
('5º Ano D', '5D', 'ary.souza@gmail.com',1,1),
('5º Ano E', '5E', 'ary.souza@gmail.com',1,1),
('6º Ano A', '6A', 'ary.souza@gmail.com',2,1),
('6º Ano B', '6B', 'ary.souza@gmail.com',2,1),
('6º Ano C', '6C', 'ary.souza@gmail.com',2,1),
('6º Ano D', '6D', 'ary.souza@gmail.com',2,1),
('6º Ano E', '6E', 'ary.souza@gmail.com',2,1),
('7º Ano A', '7A', 'ary.souza@gmail.com',2,1),
('7º Ano B', '7B', 'ary.souza@gmail.com',2,1),
('7º Ano C', '7C', 'ary.souza@gmail.com',2,1),
('7º Ano D', '7D', 'ary.souza@gmail.com',2,1),
('7º Ano E', '7E', 'ary.souza@gmail.com',2,1),
('8º Ano A', '8A', 'ary.souza@gmail.com',2,1),
('8º Ano B', '8B', 'ary.souza@gmail.com',2,1),
('8º Ano C', '8C', 'ary.souza@gmail.com',2,3),
('8º Ano D', '8D', 'ary.souza@gmail.com',2,3),
('8º Ano E', '8E', 'ary.souza@gmail.com',2,3),
('9º Ano A', '9A', 'ary.souza@gmail.com',2,3),
('9º Ano B', '9B', 'ary.souza@gmail.com',2,3),
('9º Ano C', '9C', 'ary.souza@gmail.com',2,3),
('9º Ano D', '9D', 'ary.souza@gmail.com',2,3),
('9º Ano E', '9E', 'ary.souza@gmail.com',2,3);

-- ANTUNES CORREA
insert into turma values
('1º Ano A', '1A', 'augusto.antunes@gmail.com',1,1),
('1º Ano B', '1B', 'augusto.antunes@gmail.com',1,1),
('1º Ano C', '1C', 'augusto.antunes@gmail.com',1,1),
('1º Ano D', '1D', 'augusto.antunes@gmail.com',1,1),
('2º Ano A', '2A', 'augusto.antunes@gmail.com',1,1),
('2º Ano B', '2B', 'augusto.antunes@gmail.com',1,1),
('2º Ano C', '2C', 'augusto.antunes@gmail.com',1,1),
('2º Ano D', '2D', 'augusto.antunes@gmail.com',1,1),
('3º Ano A', '3A', 'augusto.antunes@gmail.com',1,1),
('3º Ano B', '3B', 'augusto.antunes@gmail.com',1,1),
('3º Ano C', '3C', 'augusto.antunes@gmail.com',1,1),
('3º Ano D', '3D', 'augusto.antunes@gmail.com',1,1),
('4º Ano A', '4A', 'augusto.antunes@gmail.com',1,1),
('4º Ano B', '4B', 'augusto.antunes@gmail.com',1,1),
('4º Ano C', '4C', 'augusto.antunes@gmail.com',1,1),
('4º Ano D', '4D', 'augusto.antunes@gmail.com',1,1),
('5º Ano A', '5A', 'augusto.antunes@gmail.com',1,1),
('5º Ano B', '5B', 'augusto.antunes@gmail.com',1,1),
('5º Ano C', '5C', 'augusto.antunes@gmail.com',1,1),
('5º Ano D', '5D', 'augusto.antunes@gmail.com',1,1);

-- Benedita Gonzalez
insert into turma values
('1º Ano A', '1A', 'benedita.gonzalez@gmail.com',1,1),
('1º Ano B', '1B', 'benedita.gonzalez@gmail.com',1,1),
('1º Ano C', '1C', 'benedita.gonzalez@gmail.com',1,1),
('2º Ano A', '2A', 'benedita.gonzalez@gmail.com',1,1),
('2º Ano B', '2B', 'benedita.gonzalez@gmail.com',1,1),
('2º Ano C', '2C', 'benedita.gonzalez@gmail.com',1,1),
('3º Ano A', '3A', 'benedita.gonzalez@gmail.com',1,1),
('3º Ano B', '3B', 'benedita.gonzalez@gmail.com',1,1),
('3º Ano C', '3C', 'benedita.gonzalez@gmail.com',1,1),
('4º Ano A', '4A', 'benedita.gonzalez@gmail.com',1,1),
('4º Ano B', '4B', 'benedita.gonzalez@gmail.com',1,1),
('4º Ano C', '4C', 'benedita.gonzalez@gmail.com',1,1),
('5º Ano A', '5A', 'benedita.gonzalez@gmail.com',1,1),
('5º Ano B', '5B', 'benedita.gonzalez@gmail.com',1,1),
('5º Ano C', '5C', 'benedita.gonzalez@gmail.com',1,1),
('6º Ano A', '6A', 'benedita.gonzalez@gmail.com',2,3),
('6º Ano B', '6B', 'benedita.gonzalez@gmail.com',2,3),
('6º Ano C', '6C', 'benedita.gonzalez@gmail.com',2,3),
('7º Ano A', '7A', 'benedita.gonzalez@gmail.com',2,3),
('7º Ano B', '7B', 'benedita.gonzalez@gmail.com',2,3),
('7º Ano C', '7C', 'benedita.gonzalez@gmail.com',2,3),
('8º Ano A', '8A', 'benedita.gonzalez@gmail.com',2,3),
('8º Ano B', '8B', 'benedita.gonzalez@gmail.com',2,3),
('8º Ano C', '8C', 'benedita.gonzalez@gmail.com',2,3),
('9º Ano A', '9A', 'benedita.gonzalez@gmail.com',2,3),
('9º Ano B', '9B', 'benedita.gonzalez@gmail.com',2,3),
('9º Ano C', '9C', 'benedita.gonzalez@gmail.com',2,3);

-- CATARINA
insert into turma values
('1º Ano A', '1A', 'catarina.salgado@gmail.com',1,1),
('1º Ano B', '1B', 'catarina.salgado@gmail.com',1,1),
('1º Ano C', '1C', 'catarina.salgado@gmail.com',1,1),
('1º Ano D', '1D', 'catarina.salgado@gmail.com',1,1),
('2º Ano A', '2A', 'catarina.salgado@gmail.com',1,1),
('2º Ano B', '2B', 'catarina.salgado@gmail.com',1,1),
('2º Ano C', '2C', 'catarina.salgado@gmail.com',1,1),
('2º Ano D', '2D', 'catarina.salgado@gmail.com',1,1),
('3º Ano A', '3A', 'catarina.salgado@gmail.com',1,1),
('3º Ano B', '3B', 'catarina.salgado@gmail.com',1,1),
('3º Ano C', '3C', 'catarina.salgado@gmail.com',1,1),
('3º Ano D', '3D', 'catarina.salgado@gmail.com',1,1),
('4º Ano A', '4A', 'catarina.salgado@gmail.com',1,1),
('4º Ano B', '4B', 'catarina.salgado@gmail.com',1,1),
('4º Ano C', '4C', 'catarina.salgado@gmail.com',1,1),
('4º Ano D', '4D', 'catarina.salgado@gmail.com',1,1);

-- CONSTANTINO
insert into turma values
('1º Ano A', '1A', 'constantino.michaello@gmail.com',1,1),
('1º Ano B', '1B', 'constantino.michaello@gmail.com',1,1),
('1º Ano C', '1C', 'constantino.michaello@gmail.com',1,1),
('1º Ano D', '1D', 'constantino.michaello@gmail.com',1,1),
('1º Ano E', '1E', 'constantino.michaello@gmail.com',1,1),
('2º Ano A', '2A', 'constantino.michaello@gmail.com',1,1),
('2º Ano B', '2B', 'constantino.michaello@gmail.com',1,1),
('2º Ano C', '2C', 'constantino.michaello@gmail.com',1,1),
('2º Ano D', '2D', 'constantino.michaello@gmail.com',1,1),
('2º Ano E', '2E', 'constantino.michaello@gmail.com',1,1),
('3º Ano A', '3A', 'constantino.michaello@gmail.com',1,1),
('3º Ano B', '3B', 'constantino.michaello@gmail.com',1,1),
('3º Ano C', '3C', 'constantino.michaello@gmail.com',1,1),
('3º Ano D', '3D', 'constantino.michaello@gmail.com',1,1),
('3º Ano E', '3E', 'constantino.michaello@gmail.com',1,1),
('4º Ano A', '4A', 'constantino.michaello@gmail.com',1,1),
('4º Ano B', '4B', 'constantino.michaello@gmail.com',1,1),
('4º Ano C', '4C', 'constantino.michaello@gmail.com',1,1),
('4º Ano D', '4D', 'constantino.michaello@gmail.com',1,1),
('4º Ano E', '4E', 'constantino.michaello@gmail.com',1,1);

-- Dirce Gracia 
insert into turma values
('6º Ano A', '6A', 'dirce.gracia@gmail.com',2,3),
('6º Ano B', '6B', 'dirce.gracia@gmail.com',2,3),
('6º Ano C', '6C', 'dirce.gracia@gmail.com',2,3),
('6º Ano D', '6D', 'dirce.gracia@gmail.com',2,3),
('6º Ano E', '6E', 'dirce.gracia@gmail.com',2,3),
('7º Ano A', '7A', 'dirce.gracia@gmail.com',2,3),
('7º Ano B', '7B', 'dirce.gracia@gmail.com',2,3),
('7º Ano C', '7C', 'dirce.gracia@gmail.com',2,3),
('7º Ano D', '7D', 'dirce.gracia@gmail.com',2,3),
('7º Ano E', '7E', 'dirce.gracia@gmail.com',2,3),
('8º Ano A', '8A', 'dirce.gracia@gmail.com',2,3),
('8º Ano B', '8B', 'dirce.gracia@gmail.com',2,3),
('8º Ano C', '8C', 'dirce.gracia@gmail.com',2,3),
('8º Ano D', '8D', 'dirce.gracia@gmail.com',2,3),
('8º Ano E', '8E', 'dirce.gracia@gmail.com',2,3),
('9º Ano A', '9A', 'dirce.gracia@gmail.com',2,3),
('9º Ano B', '9B', 'dirce.gracia@gmail.com',2,3),
('9º Ano C', '9C', 'dirce.gracia@gmail.com',2,3),
('9º Ano D', '9D', 'dirce.gracia@gmail.com',2,3),
('9º Ano E', '9E', 'dirce.gracia@gmail.com',2,3);

-- RANGONI
insert into turma values
('1º Ano A', '1A', 'domenico.rangoni@gmail.com',1,1),
('1º Ano B', '1B', 'domenico.rangoni@gmail.com',1,1),
('1º Ano C', '1C', 'domenico.rangoni@gmail.com',1,1),
('1º Ano D', '1D', 'domenico.rangoni@gmail.com',1,1),
('2º Ano A', '2A', 'domenico.rangoni@gmail.com',1,1),
('2º Ano B', '2B', 'domenico.rangoni@gmail.com',1,1),
('2º Ano C', '2C', 'domenico.rangoni@gmail.com',1,1),
('2º Ano D', '2D', 'domenico.rangoni@gmail.com',1,1),
('3º Ano A', '3A', 'domenico.rangoni@gmail.com',1,1),
('3º Ano B', '3B', 'domenico.rangoni@gmail.com',1,1),
('3º Ano C', '3C', 'domenico.rangoni@gmail.com',1,1),
('3º Ano D', '3D', 'domenico.rangoni@gmail.com',1,1),
('4º Ano A', '4A', 'domenico.rangoni@gmail.com',1,1),
('4º Ano B', '4B', 'domenico.rangoni@gmail.com',1,1),
('4º Ano C', '4C', 'domenico.rangoni@gmail.com',1,1),
('4º Ano D', '4D', 'domenico.rangoni@gmail.com',1,1);

-- Ernesto Sobrinho 
insert into turma values
('1º Ano A', '1A', 'ernesto.sobrinho@gmail.com',1,1),
('1º Ano B', '1B', 'ernesto.sobrinho@gmail.com',1,1),
('1º Ano C', '1C', 'ernesto.sobrinho@gmail.com',1,1),
('2º Ano A', '2A', 'ernesto.sobrinho@gmail.com',1,1),
('2º Ano B', '2B', 'ernesto.sobrinho@gmail.com',1,1),
('2º Ano C', '2C', 'ernesto.sobrinho@gmail.com',1,1),
('3º Ano A', '3A', 'ernesto.sobrinho@gmail.com',1,1),
('3º Ano B', '3B', 'ernesto.sobrinho@gmail.com',1,1),
('3º Ano C', '3C', 'ernesto.sobrinho@gmail.com',1,1),
('4º Ano A', '4A', 'ernesto.sobrinho@gmail.com',1,1),
('4º Ano B', '4B', 'ernesto.sobrinho@gmail.com',1,1),
('4º Ano C', '4C', 'ernesto.sobrinho@gmail.com',1,1);

-- Francisco Figueiredo
insert into turma values
('6º Ano A', '6A', 'francisco.figueiredo@gmail.com',2,3),
('6º Ano B', '6B', 'francisco.figueiredo@gmail.com',2,3),
('6º Ano C', '6C', 'francisco.figueiredo@gmail.com',2,3),
('6º Ano D', '6D', 'francisco.figueiredo@gmail.com',2,3),
('6º Ano E', '6E', 'francisco.figueiredo@gmail.com',2,3),
('7º Ano A', '7A', 'francisco.figueiredo@gmail.com',2,3),
('7º Ano B', '7B', 'francisco.figueiredo@gmail.com',2,3),
('7º Ano C', '7C', 'francisco.figueiredo@gmail.com',2,3),
('7º Ano D', '7D', 'francisco.figueiredo@gmail.com',2,3),
('7º Ano E', '7E', 'francisco.figueiredo@gmail.com',2,3),
('8º Ano A', '8A', 'francisco.figueiredo@gmail.com',2,3),
('8º Ano B', '8B', 'francisco.figueiredo@gmail.com',2,3),
('8º Ano C', '8C', 'francisco.figueiredo@gmail.com',2,3),
('8º Ano D', '8D', 'francisco.figueiredo@gmail.com',2,3),
('8º Ano E', '8E', 'francisco.figueiredo@gmail.com',2,3),
('9º Ano A', '9A', 'francisco.figueiredo@gmail.com',2,3),
('9º Ano B', '9B', 'francisco.figueiredo@gmail.com',2,3),
('9º Ano C', '9C', 'francisco.figueiredo@gmail.com',2,3),
('9º Ano D', '9D', 'francisco.figueiredo@gmail.com',2,3),
('9º Ano E', '9E', 'francisco.figueiredo@gmail.com',2,3);

-- Franklin Roosevelt 
insert into turma values
('1º Ano A', '1A', 'franklin.roosevelt@gmail.com',1,1),
('2º Ano A', '2A', 'franklin.roosevelt@gmail.com',1,1),
('3º Ano A', '3A', 'franklin.roosevelt@gmail.com',1,1),
('4º Ano A', '4A', 'franklin.roosevelt@gmail.com',1,1);

-- GIUSFREDO SANTINI 
insert into turma values
('1º Ano A', '1A', 'giusfredo.santini@gmail.com',1,1),
('1º Ano B', '1B', 'giusfredo.santini@gmail.com',1,1),
('1º Ano C', '1C', 'giusfredo.santini@gmail.com',1,1),
('1º Ano D', '1D', 'giusfredo.santini@gmail.com',1,1),
('2º Ano A', '2A', 'giusfredo.santini@gmail.com',1,1),
('2º Ano B', '2B', 'giusfredo.santini@gmail.com',1,1),
('2º Ano C', '2C', 'giusfredo.santini@gmail.com',1,1),
('2º Ano D', '2D', 'giusfredo.santini@gmail.com',1,1),
('3º Ano A', '3A', 'giusfredo.santini@gmail.com',1,1),
('3º Ano B', '3B', 'giusfredo.santini@gmail.com',1,1),
('3º Ano C', '3C', 'giusfredo.santini@gmail.com',1,1),
('3º Ano D', '3D', 'giusfredo.santini@gmail.com',1,1);

-- GLADSTON JAFET 
insert into turma values
('1º Ano A', '1A', 'gladston.jafet@gmail.com',1,1),
('1º Ano B', '1B', 'gladston.jafet@gmail.com',1,1),
('1º Ano C', '1C', 'gladston.jafet@gmail.com',1,1),
('2º Ano A', '2A', 'gladston.jafet@gmail.com',1,1),
('2º Ano B', '2B', 'gladston.jafet@gmail.com',1,1),
('2º Ano C', '2C', 'gladston.jafet@gmail.com',1,1),
('3º Ano A', '3A', 'gladston.jafet@gmail.com',1,1),
('3º Ano B', '3B', 'gladston.jafet@gmail.com',1,1),
('3º Ano C', '3C', 'gladston.jafet@gmail.com',1,1),
('4º Ano A', '4A', 'gladston.jafet@gmail.com',1,1),
('4º Ano B', '4B', 'gladston.jafet@gmail.com',1,1),
('4º Ano C', '4C', 'gladston.jafet@gmail.com',1,1),
('6º Ano A', '6A', 'gladston.jafet@gmail.com',2,3),
('6º Ano B', '6B', 'gladston.jafet@gmail.com',2,3),
('6º Ano C', '6C', 'gladston.jafet@gmail.com',2,3),
('7º Ano A', '7A', 'gladston.jafet@gmail.com',2,3),
('7º Ano B', '7B', 'gladston.jafet@gmail.com',2,3),
('7º Ano C', '7C', 'gladston.jafet@gmail.com',2,3),
('8º Ano A', '8A', 'gladston.jafet@gmail.com',2,3),
('8º Ano B', '8B', 'gladston.jafet@gmail.com',2,3),
('8º Ano C', '8C', 'gladston.jafet@gmail.com',2,3),
('9º Ano A', '9A', 'gladston.jafet@gmail.com',2,3),
('9º Ano B', '9B', 'gladston.jafet@gmail.com',2,3),
('9º Ano C', '9C', 'gladston.jafet@gmail.com',2,3);

-- GUILHERME FURLANI
insert into turma values
('1º Ano A', '1A', 'guilherme.furlani@gmail.com',1,1),
('1º Ano B', '1B', 'guilherme.furlani@gmail.com',1,1),
('1º Ano C', '1C', 'guilherme.furlani@gmail.com',1,1),
('1º Ano D', '1D', 'guilherme.furlani@gmail.com',1,1),
('2º Ano A', '2A', 'guilherme.furlani@gmail.com',1,1),
('2º Ano B', '2B', 'guilherme.furlani@gmail.com',1,1),
('2º Ano C', '2C', 'guilherme.furlani@gmail.com',1,1),
('2º Ano D', '2D', 'guilherme.furlani@gmail.com',1,1),
('3º Ano A', '3A', 'guilherme.furlani@gmail.com',1,1),
('3º Ano B', '3B', 'guilherme.furlani@gmail.com',1,1),
('3º Ano C', '3C', 'guilherme.furlani@gmail.com',1,1),
('3º Ano D', '3D', 'guilherme.furlani@gmail.com',1,1);

-- Herbert Dow 
insert into turma values
('1º Ano A', '1A', 'herbert.dow@gmail.com',1,1),
('1º Ano B', '1B', 'herbert.dow@gmail.com',1,1),
('1º Ano C', '1C', 'herbert.dow@gmail.com',1,1),
('1º Ano D', '1D', 'herbert.dow@gmail.com',1,1),
('1º Ano E', '1E', 'herbert.dow@gmail.com',1,1),
('2º Ano A', '2A', 'herbert.dow@gmail.com',1,1),
('2º Ano B', '2B', 'herbert.dow@gmail.com',1,1),
('2º Ano C', '2C', 'herbert.dow@gmail.com',1,1),
('2º Ano D', '2D', 'herbert.dow@gmail.com',1,1),
('2º Ano E', '2E', 'herbert.dow@gmail.com',1,1),
('3º Ano A', '3A', 'herbert.dow@gmail.com',1,1),
('3º Ano B', '3B', 'herbert.dow@gmail.com',1,1),
('3º Ano C', '3C', 'herbert.dow@gmail.com',1,1),
('3º Ano D', '3D', 'herbert.dow@gmail.com',1,1),
('3º Ano E', '3E', 'herbert.dow@gmail.com',1,1);

-- Herminia Vitiello 
insert into turma values
('1º Ano A', '1A', 'herminia.vitiello@gmail.com',1,1),
('1º Ano B', '1B', 'herminia.vitiello@gmail.com',1,1),
('1º Ano C', '1C', 'herminia.vitiello@gmail.com',1,1),
('2º Ano A', '2A', 'herminia.vitiello@gmail.com',1,1),
('2º Ano B', '2B', 'herminia.vitiello@gmail.com',1,1),
('2º Ano C', '2C', 'herminia.vitiello@gmail.com',1,1),
('3º Ano A', '3A', 'herminia.vitiello@gmail.com',1,1),
('3º Ano B', '3B', 'herminia.vitiello@gmail.com',1,1),
('3º Ano C', '3C', 'herminia.vitiello@gmail.com',1,1);

-- Ivonete Camara 
insert into turma values
('1º Ano A', '1A', 'ivonete.camara@gmail.com',1,1),
('1º Ano B', '1B', 'ivonete.camara@gmail.com',1,1),
('1º Ano C', '1C', 'ivonete.camara@gmail.com',1,1),
('1º Ano D', '1D', 'ivonete.camara@gmail.com',1,1),
('2º Ano A', '2A', 'ivonete.camara@gmail.com',1,1),
('2º Ano B', '2B', 'ivonete.camara@gmail.com',1,1),
('2º Ano C', '2C', 'ivonete.camara@gmail.com',1,1),
('2º Ano D', '2D', 'ivonete.camara@gmail.com',1,1),
('3º Ano A', '3A', 'ivonete.camara@gmail.com',1,1),
('3º Ano B', '3B', 'ivonete.camara@gmail.com',1,1),
('3º Ano C', '3C', 'ivonete.camara@gmail.com',1,1),
('3º Ano D', '3D', 'ivonete.camara@gmail.com',1,1),
('6º Ano A', '6A', 'ivonete.camara@gmail.com',2,3),
('6º Ano B', '6B', 'ivonete.camara@gmail.com',2,3),
('6º Ano C', '6C', 'ivonete.camara@gmail.com',2,3),
('6º Ano D', '6D', 'ivonete.camara@gmail.com',2,3),
('7º Ano A', '7A', 'ivonete.camara@gmail.com',2,3),
('7º Ano B', '7B', 'ivonete.camara@gmail.com',2,3),
('7º Ano C', '7C', 'ivonete.camara@gmail.com',2,3),
('7º Ano D', '7D', 'ivonete.camara@gmail.com',2,3),
('8º Ano A', '8A', 'ivonete.camara@gmail.com',2,3),
('8º Ano B', '8B', 'ivonete.camara@gmail.com',2,3),
('8º Ano C', '8C', 'ivonete.camara@gmail.com',2,3),
('8º Ano D', '8D', 'ivonete.camara@gmail.com',2,3),
('9º Ano A', '9A', 'ivonete.camara@gmail.com',2,3),
('9º Ano B', '9B', 'ivonete.camara@gmail.com',2,3),
('9º Ano C', '9C', 'ivonete.camara@gmail.com',2,3),
('9º Ano D', '9D', 'ivonete.camara@gmail.com',2,3);

-- Jacirema Fontes 
insert into turma values
('1º Ano A', '1A', 'jacirema.fontes@gmail.com',1,1),
('1º Ano B', '1B', 'jacirema.fontes@gmail.com',1,1),
('1º Ano C', '1C', 'jacirema.fontes@gmail.com',1,1),
('1º Ano D', '1D', 'jacirema.fontes@gmail.com',1,1),
('2º Ano A', '2A', 'jacirema.fontes@gmail.com',1,1),
('2º Ano B', '2B', 'jacirema.fontes@gmail.com',1,1),
('2º Ano C', '2C', 'jacirema.fontes@gmail.com',1,1),
('2º Ano D', '2D', 'jacirema.fontes@gmail.com',1,1),
('3º Ano A', '3A', 'jacirema.fontes@gmail.com',1,1),
('3º Ano B', '3B', 'jacirema.fontes@gmail.com',1,1),
('3º Ano C', '3C', 'jacirema.fontes@gmail.com',1,1),
('3º Ano D', '3D', 'jacirema.fontes@gmail.com',1,1);

-- Joao Oliveira
insert into turma values
('1º Ano A', '1A', 'joao.oliveira@gmail.com',1,1),
('1º Ano B', '1B', 'joao.oliveira@gmail.com',1,1),
('1º Ano C', '1C', 'joao.oliveira@gmail.com',1,1),
('2º Ano A', '2A', 'joao.oliveira@gmail.com',1,1),
('2º Ano B', '2B', 'joao.oliveira@gmail.com',1,1),
('2º Ano C', '2C', 'joao.oliveira@gmail.com',1,1),
('3º Ano A', '3A', 'joao.oliveira@gmail.com',1,1),
('3º Ano B', '3B', 'joao.oliveira@gmail.com',1,1),
('3º Ano C', '3C', 'joao.oliveira@gmail.com',1,1);

-- Jose Souza
insert into turma values
('1º Ano A', '1A', 'jose.souza@gmail.com',1,1),
('1º Ano B', '1B', 'jose.souza@gmail.com',1,1),
('2º Ano A', '2A', 'jose.souza@gmail.com',1,1),
('2º Ano B', '2B', 'jose.souza@gmail.com',1,1),
('3º Ano A', '3A', 'jose.souza@gmail.com',1,1),
('3º Ano B', '3B', 'jose.souza@gmail.com',1,1);

-- Lucia Santos 
insert into turma values
('6º Ano A', '6A', 'lucia.santos@gmail.com',2,3),
('7º Ano A', '7A', 'lucia.santos@gmail.com',2,3),
('8º Ano A', '8A', 'lucia.santos@gmail.com',2,3);

-- Lucimara Vicente 
insert into turma values
('6º Ano A', '6A', 'lucimara.vicente@gmail.com',2,3),
('6º Ano B', '6B', 'lucimara.vicente@gmail.com',2,3),
('6º Ano C', '6C', 'lucimara.vicente@gmail.com',2,3),
('6º Ano D', '6D', 'lucimara.vicente@gmail.com',2,3),
('7º Ano A', '7A', 'lucimara.vicente@gmail.com',2,3),
('7º Ano B', '7B', 'lucimara.vicente@gmail.com',2,3),
('7º Ano C', '7C', 'lucimara.vicente@gmail.com',2,3),
('7º Ano D', '7D', 'lucimara.vicente@gmail.com',2,3),
('8º Ano A', '8A', 'lucimara.vicente@gmail.com',2,3),
('8º Ano B', '8B', 'lucimara.vicente@gmail.com',2,3),
('8º Ano C', '8C', 'lucimara.vicente@gmail.com',2,3),
('8º Ano D', '8D', 'lucimara.vicente@gmail.com',2,3);

-- Magdalena Lourenco 
insert into turma values
('1º Ano A', '1A', 'magdalena.lourenco@gmail.com',1,1),
('1º Ano B', '1B', 'magdalena.lourenco@gmail.com',1,1),
('1º Ano C', '1C', 'magdalena.lourenco@gmail.com',1,1),
('1º Ano D', '1D', 'magdalena.lourenco@gmail.com',1,1),
('2º Ano A', '2A', 'magdalena.lourenco@gmail.com',1,1),
('2º Ano B', '2B', 'magdalena.lourenco@gmail.com',1,1),
('2º Ano C', '2C', 'magdalena.lourenco@gmail.com',1,1),
('2º Ano D', '2D', 'magdalena.lourenco@gmail.com',1,1);

-- Maria Araujo 
insert into turma values
('6º Ano A', '6A', 'maria.araujo@gmail.com',2,3),
('6º Ano B', '6B', 'maria.araujo@gmail.com',2,3),
('6º Ano C', '6C', 'maria.araujo@gmail.com',2,3),
('6º Ano D', '6D', 'maria.araujo@gmail.com',2,3),
('7º Ano A', '7A', 'maria.araujo@gmail.com',2,3),
('7º Ano B', '7B', 'maria.araujo@gmail.com',2,3),
('7º Ano C', '7C', 'maria.araujo@gmail.com',2,3),
('7º Ano D', '7D', 'maria.araujo@gmail.com',2,3);

-- Maria Camargo
insert into turma values
('6º Ano A', '6A', 'maria.camargo@gmail.com',2,3),
('6º Ano B', '6B', 'maria.camargo@gmail.com',2,3),
('6º Ano C', '6C', 'maria.camargo@gmail.com',2,3),
('6º Ano D', '6D', 'maria.camargo@gmail.com',2,3),
('7º Ano A', '7A', 'maria.camargo@gmail.com',2,3),
('7º Ano B', '7B', 'maria.camargo@gmail.com',2,3),
('7º Ano C', '7C', 'maria.camargo@gmail.com',2,3),
('7º Ano D', '7D', 'maria.camargo@gmail.com',2,3),
('8º Ano A', '8A', 'maria.camargo@gmail.com',2,3),
('8º Ano B', '8B', 'maria.camargo@gmail.com',2,3),
('8º Ano C', '8C', 'maria.camargo@gmail.com',2,3),
('8º Ano D', '8D', 'maria.camargo@gmail.com',2,3);

-- MARIA EUNICE 
insert into turma values
('1º Ano A', '1A', 'maria.eunice@gmail.com',1,1),
('1º Ano B', '1B', 'maria.eunice@gmail.com',1,1),
('1º Ano C', '1C', 'maria.eunice@gmail.com',1,1),
('1º Ano D', '1D', 'maria.eunice@gmail.com',1,1),
('2º Ano A', '2A', 'maria.eunice@gmail.com',1,1),
('2º Ano B', '2B', 'maria.eunice@gmail.com',1,1),
('2º Ano C', '2C', 'maria.eunice@gmail.com',1,1),
('2º Ano D', '2D', 'maria.eunice@gmail.com',1,1);

-- Maria Lourdes 
insert into turma values
('1º Ano A', '1A', 'maria.lourdes@gmail.com',1,1),
('1º Ano B', '1B', 'maria.lourdes@gmail.com',1,1),
('1º Ano C', '1C', 'maria.lourdes@gmail.com',1,1),
('2º Ano A', '2A', 'maria.lourdes@gmail.com',1,1),
('2º Ano B', '2B', 'maria.lourdes@gmail.com',1,1),
('2º Ano C', '2C', 'maria.lourdes@gmail.com',1,1);

-- Maria Teixeira
insert into turma values
('1º Ano A', '1A', 'maria.teixeira@gmail.com',1,1),
('1º Ano B', '1B', 'maria.teixeira@gmail.com',1,1),
('2º Ano A', '2A', 'maria.teixeira@gmail.com',1,1),
('2º Ano B', '2B', 'maria.teixeira@gmail.com',1,1);

-- MARINA DAIGE
insert into turma values
('1º Ano A', '1A', 'marina.daige@gmail.com',1,1),
('2º Ano A', '2A', 'marina.daige@gmail.com',1,1);

-- Mario Leite
insert into turma values
('1º Ano A', '1A', 'mario.leite@gmail.com',1,1),
('2º Ano A', '2A', 'mario.leite@gmail.com',1,1);

-- Myrian Millborn
insert into turma values
('1º Ano A', '1A', 'myrian.millborn@gmail.com',1,1),
('1º Ano B', '1B', 'myrian.millborn@gmail.com',1,1),
('1º Ano C', '1C', 'myrian.millborn@gmail.com',1,1),
('1º Ano D', '1D', 'myrian.millborn@gmail.com',1,1),
('1º Ano E', '1E', 'myrian.millborn@gmail.com',1,1);

-- NAPOLEÃO 
insert into turma values
('1º Ano A', '1A', 'napoleao.rodrigues@gmail.com',1,1),
('1º Ano B', '1B', 'napoleao.rodrigues@gmail.com',1,1),
('1º Ano C', '1C', 'napoleao.rodrigues@gmail.com',1,1),
('1º Ano D', '1D', 'napoleao.rodrigues@gmail.com',1,1),
('1º Ano E', '1E', 'napoleao.rodrigues@gmail.com',1,1),
('6º Ano A', '6A', 'napoleao.rodrigues@gmail.com',2,3),
('6º Ano B', '6B', 'napoleao.rodrigues@gmail.com',2,3),
('6º Ano C', '6C', 'napoleao.rodrigues@gmail.com',2,3),
('6º Ano D', '6D', 'napoleao.rodrigues@gmail.com',2,3),
('6º Ano E', '6E', 'napoleao.rodrigues@gmail.com',2,3);

-- Oswaldo Cruz
insert into turma values
('1º Ano A', '1A', 'oswaldo.cruz@gmail.com',1,1),
('1º Ano B', '1B', 'oswaldo.cruz@gmail.com',1,1),
('1º Ano C', '1C', 'oswaldo.cruz@gmail.com',1,1),
('1º Ano D', '1D', 'oswaldo.cruz@gmail.com',1,1),
('1º Ano E', '1E', 'oswaldo.cruz@gmail.com',1,1),
('1º Ano F', '1F', 'oswaldo.cruz@gmail.com',1,1);

-- PAULO FREIRE
insert into turma values
('1º Ano A', '1A', 'paulo.freire@gmail.com',1,1),
('1º Ano B', '1B', 'paulo.freire@gmail.com',1,1),
('1º Ano C', '1C', 'paulo.freire@gmail.com',1,1),
('1º Ano D', '1D', 'paulo.freire@gmail.com',1,1),
('1º Ano E', '1E', 'paulo.freire@gmail.com',1,1);

-- PHILOMENA 
insert into turma values
('1º Ano A', '1A', 'philomena.cardoso@gmail.com',1,1),
('1º Ano B', '1B', 'philomena.cardoso@gmail.com',1,1),
('1º Ano C', '1C', 'philomena.cardoso@gmail.com',1,1),
('1º Ano D', '1D', 'philomena.cardoso@gmail.com',1,1);

-- Primeiro Maio 
insert into turma values
('6º Ano A', '6A', 'primeiro.maio@gmail.com',2,3),
('6º Ano B', '6B', 'primeiro.maio@gmail.com',2,3),
('6º Ano C', '6C', 'primeiro.maio@gmail.com',2,3),
('6º Ano D', '6D', 'primeiro.maio@gmail.com',2,3),
('6º Ano E', '6E', 'primeiro.maio@gmail.com',2,3),
('7º Ano A', '7A', 'primeiro.maio@gmail.com',2,3),
('7º Ano B', '7B', 'primeiro.maio@gmail.com',2,3),
('7º Ano C', '7C', 'primeiro.maio@gmail.com',2,3),
('7º Ano D', '7D', 'primeiro.maio@gmail.com',2,3),
('7º Ano E', '7E', 'primeiro.maio@gmail.com',2,3),
('8º Ano A', '8A', 'primeiro.maio@gmail.com',2,3),
('8º Ano B', '8B', 'primeiro.maio@gmail.com',2,3),
('8º Ano C', '8C', 'primeiro.maio@gmail.com',2,3),
('8º Ano D', '8D', 'primeiro.maio@gmail.com',2,3),
('8º Ano E', '8E', 'primeiro.maio@gmail.com',2,3),
('9º Ano A', '9A', 'primeiro.maio@gmail.com',2,3),
('9º Ano B', '9B', 'primeiro.maio@gmail.com',2,3),
('9º Ano C', '9C', 'primeiro.maio@gmail.com',2,3),
('9º Ano D', '9D', 'primeiro.maio@gmail.com',2,3),
('9º Ano E', '9E', 'primeiro.maio@gmail.com',2,3);

-- SAMUEL FRANCO 
insert into turma values
('1º Ano A', '1A', 'samuel.franco@gmail.com',1,1),
('1º Ano B', '1B', 'samuel.franco@gmail.com',1,1);

-- Sergio Rodrigues 
insert into turma values
('1º Ano A', '1A', 'sergio.rodrigues@gmail.com',1,1);

-- Valeria Vieira 
insert into turma values
('1º Ano A', '1A', 'valeria.vieira@gmail.com',1,1),
('1º Ano B', '1B', 'valeria.vieira@gmail.com',1,1),
('1º Ano C', '1C', 'valeria.vieira@gmail.com',1,1),
('2º Ano A', '2A', 'valeria.vieira@gmail.com',1,1),
('2º Ano B', '2B', 'valeria.vieira@gmail.com',1,1),
('2º Ano C', '2C', 'valeria.vieira@gmail.com',1,1),
('3º Ano A', '3A', 'valeria.vieira@gmail.com',1,1),
('3º Ano B', '3B', 'valeria.vieira@gmail.com',1,1),
('3º Ano C', '3C', 'valeria.vieira@gmail.com',1,1),
('4º Ano A', '4A', 'valeria.vieira@gmail.com',1,1),
('4º Ano B', '4B', 'valeria.vieira@gmail.com',1,1),
('4º Ano C', '4C', 'valeria.vieira@gmail.com',1,1),
('5º Ano A', '5A', 'valeria.vieira@gmail.com',1,1),
('5º Ano B', '5B', 'valeria.vieira@gmail.com',1,1),
('5º Ano C', '5C', 'valeria.vieira@gmail.com',1,1);

-- Vereador Ernesto 
insert into turma values
('1º Ano A', '1A', 'vereador.ernesto@gmail.com',1,1),
('1º Ano B', '1B', 'vereador.ernesto@gmail.com',1,1),
('1º Ano C', '1C', 'vereador.ernesto@gmail.com',1,1),
('1º Ano D', '1D', 'vereador.ernesto@gmail.com',1,1),
('2º Ano A', '2A', 'vereador.ernesto@gmail.com',1,1),
('2º Ano B', '2B', 'vereador.ernesto@gmail.com',1,1),
('2º Ano C', '2C', 'vereador.ernesto@gmail.com',1,1),
('2º Ano D', '2D', 'vereador.ernesto@gmail.com',1,1),
('3º Ano A', '3A', 'vereador.ernesto@gmail.com',1,1),
('3º Ano B', '3B', 'vereador.ernesto@gmail.com',1,1),
('3º Ano C', '3C', 'vereador.ernesto@gmail.com',1,1),
('3º Ano D', '3D', 'vereador.ernesto@gmail.com',1,1),
('4º Ano A', '4A', 'vereador.ernesto@gmail.com',1,1),
('4º Ano B', '4B', 'vereador.ernesto@gmail.com',1,1),
('4º Ano C', '4C', 'vereador.ernesto@gmail.com',1,1),
('4º Ano D', '4D', 'vereador.ernesto@gmail.com',1,1);

-- Vicentina Valle
insert into turma values
('1º Ano A', '1A', 'vicentina.valle@gmail.com',1,1),
('1º Ano B', '1B', 'vicentina.valle@gmail.com',1,1),
('1º Ano C', '1C', 'vicentina.valle@gmail.com',1,1),
('1º Ano D', '1D', 'vicentina.valle@gmail.com',1,1),
('1º Ano E', '1E', 'vicentina.valle@gmail.com',1,1),
('2º Ano A', '2A', 'vicentina.valle@gmail.com',1,1),
('2º Ano B', '2B', 'vicentina.valle@gmail.com',1,1),
('2º Ano C', '2C', 'vicentina.valle@gmail.com',1,1),
('2º Ano D', '2D', 'vicentina.valle@gmail.com',1,1),
('2º Ano E', '2E', 'vicentina.valle@gmail.com',1,1),
('3º Ano A', '3A', 'vicentina.valle@gmail.com',1,1),
('3º Ano B', '3B', 'vicentina.valle@gmail.com',1,1),
('3º Ano C', '3C', 'vicentina.valle@gmail.com',1,1),
('3º Ano D', '3D', 'vicentina.valle@gmail.com',1,1),
('3º Ano E', '3E', 'vicentina.valle@gmail.com',1,1);

insert into aula values
(33, 'NC', 1, '1A', 'adelaide.fernandes@gmail.com'),
(33, 'NC', 1, '1B', 'adelaide.fernandes@gmail.com'),
(33, 'NC', 1, '1C', 'adelaide.fernandes@gmail.com'),
(33, 'NC', 1, '2A', 'adelaide.fernandes@gmail.com'),
(33, 'NC', 1, '2B', 'adelaide.fernandes@gmail.com'),
(33, 'NC', 1, '2C', 'adelaide.fernandes@gmail.com'),
(33, 'NC', 1, '3A', 'adelaide.fernandes@gmail.com'),
(33, 'NC', 1, '3B', 'adelaide.fernandes@gmail.com'),
(33, 'NC', 1, '3C', 'adelaide.fernandes@gmail.com'),
(33, 'NC', 1, '4A', 'adelaide.fernandes@gmail.com'),
(33, 'NC', 1, '4B', 'adelaide.fernandes@gmail.com'),
(33, 'NC', 1, '4C', 'adelaide.fernandes@gmail.com'),
(33, 'NC', 1, '5A', 'adelaide.fernandes@gmail.com'),
(33, 'NC', 1, '5B', 'adelaide.fernandes@gmail.com'),
(33, 'NC', 1, '5C', 'adelaide.fernandes@gmail.com'),
(2, 'ART', 2, '1A', 'adelaide.fernandes@gmail.com'),
(2, 'ART', 2, '1B', 'adelaide.fernandes@gmail.com'),
(2, 'ART', 2, '1C', 'adelaide.fernandes@gmail.com'),
(2, 'ART', 2, '2A', 'adelaide.fernandes@gmail.com'),
(2, 'ART', 2, '2B', 'adelaide.fernandes@gmail.com'),
(2, 'ART', 2, '2C', 'adelaide.fernandes@gmail.com'),
(2, 'ART', 2, '3A', 'adelaide.fernandes@gmail.com'),
(2, 'ART', 2, '3B', 'adelaide.fernandes@gmail.com'),
(2, 'ART', 2, '3C', 'adelaide.fernandes@gmail.com'),
(2, 'ART', 2, '4A', 'adelaide.fernandes@gmail.com'),
(2, 'ART', 2, '4B', 'adelaide.fernandes@gmail.com'),
(2, 'ART', 2, '4C', 'adelaide.fernandes@gmail.com'),
(2, 'ART', 2, '5A', 'adelaide.fernandes@gmail.com'),
(2, 'ART', 2, '5B', 'adelaide.fernandes@gmail.com'),
(2, 'ART', 2, '5C', 'adelaide.fernandes@gmail.com'),
(2, 'EDF', 2, '1A', 'adelaide.fernandes@gmail.com'),
(2, 'EDF', 2, '1B', 'adelaide.fernandes@gmail.com'),
(2, 'EDF', 2, '1C', 'adelaide.fernandes@gmail.com'),
(2, 'EDF', 2, '2A', 'adelaide.fernandes@gmail.com'),
(2, 'EDF', 2, '2B', 'adelaide.fernandes@gmail.com'),
(2, 'EDF', 2, '2C', 'adelaide.fernandes@gmail.com'),
(2, 'EDF', 2, '3A', 'adelaide.fernandes@gmail.com'),
(2, 'EDF', 2, '3B', 'adelaide.fernandes@gmail.com'),
(2, 'EDF', 2, '3C', 'adelaide.fernandes@gmail.com'),
(2, 'EDF', 2, '4A', 'adelaide.fernandes@gmail.com'),
(2, 'EDF', 2, '4B', 'adelaide.fernandes@gmail.com'),
(2, 'EDF', 2, '4C', 'adelaide.fernandes@gmail.com'),
(2, 'EDF', 2, '5A', 'adelaide.fernandes@gmail.com'),
(2, 'EDF', 2, '5B', 'adelaide.fernandes@gmail.com'),
(2, 'EDF', 2, '5C', 'adelaide.fernandes@gmail.com');

INSERT INTO aula VALUES
(33, 'NC', 1, '1A', 'afonso.nunes@gmail.com'),
(33, 'NC', 1, '1B', 'afonso.nunes@gmail.com'),
(33, 'NC', 1, '1C', 'afonso.nunes@gmail.com'),
(33, 'NC', 1, '2A', 'afonso.nunes@gmail.com'),
(33, 'NC', 1, '2B', 'afonso.nunes@gmail.com'),
(33, 'NC', 1, '2C', 'afonso.nunes@gmail.com'),
(33, 'NC', 1, '3A', 'afonso.nunes@gmail.com'),
(33, 'NC', 1, '3B', 'afonso.nunes@gmail.com'),
(33, 'NC', 1, '3C', 'afonso.nunes@gmail.com'),
(2, 'ART', 2, '1A', 'afonso.nunes@gmail.com'),
(2, 'ART', 2, '1B', 'afonso.nunes@gmail.com'),
(2, 'ART', 2, '1C', 'afonso.nunes@gmail.com'),
(2, 'ART', 2, '2A', 'afonso.nunes@gmail.com'),
(2, 'ART', 2, '2B', 'afonso.nunes@gmail.com'),
(2, 'ART', 2, '2C', 'afonso.nunes@gmail.com'),
(2, 'ART', 2, '3A', 'afonso.nunes@gmail.com'),
(2, 'ART', 2, '3B', 'afonso.nunes@gmail.com'),
(2, 'ART', 2, '3C', 'afonso.nunes@gmail.com'),
(2, 'EDF', 2, '1A', 'afonso.nunes@gmail.com'),
(2, 'EDF', 2, '1B', 'afonso.nunes@gmail.com'),
(2, 'EDF', 2, '1C', 'afonso.nunes@gmail.com'),
(2, 'EDF', 2, '2A', 'afonso.nunes@gmail.com'),
(2, 'EDF', 2, '2B', 'afonso.nunes@gmail.com'),
(2, 'EDF', 2, '2C', 'afonso.nunes@gmail.com'),
(2, 'EDF', 2, '3A', 'afonso.nunes@gmail.com'),
(2, 'EDF', 2, '3B', 'afonso.nunes@gmail.com'),
(2, 'EDF', 2, '3C', 'afonso.nunes@gmail.com');

INSERT INTO aula VALUES
(33, 'NC', 1, '4A', 'angelina.daige@gmail.com'),
(33, 'NC', 1, '4B', 'angelina.daige@gmail.com'),
(33, 'NC', 1, '4C', 'angelina.daige@gmail.com'),
(33, 'NC', 1, '4D', 'angelina.daige@gmail.com'),
(33, 'NC', 1, '4E', 'angelina.daige@gmail.com'),
(33, 'NC', 1, '5A', 'angelina.daige@gmail.com'),
(33, 'NC', 1, '5B', 'angelina.daige@gmail.com'),
(33, 'NC', 1, '5C', 'angelina.daige@gmail.com'),
(33, 'NC', 1, '5D', 'angelina.daige@gmail.com'),
(33, 'NC', 1, '5E', 'angelina.daige@gmail.com'),
(2, 'ART', 2, '4A', 'angelina.daige@gmail.com'),
(2, 'ART', 2, '4B', 'angelina.daige@gmail.com'),
(2, 'ART', 2, '4C', 'angelina.daige@gmail.com'),
(2, 'ART', 2, '4D', 'angelina.daige@gmail.com'),
(2, 'ART', 2, '4E', 'angelina.daige@gmail.com'),
(2, 'ART', 2, '5A', 'angelina.daige@gmail.com'),
(2, 'ART', 2, '5B', 'angelina.daige@gmail.com'),
(2, 'ART', 2, '5C', 'angelina.daige@gmail.com'),
(2, 'ART', 2, '5D', 'angelina.daige@gmail.com'),
(2, 'ART', 2, '5E', 'angelina.daige@gmail.com'),
(2, 'EDF', 2, '4A', 'angelina.daige@gmail.com'),
(2, 'EDF', 2, '4B', 'angelina.daige@gmail.com'),
(2, 'EDF', 2, '4C', 'angelina.daige@gmail.com'),
(2, 'EDF', 2, '4D', 'angelina.daige@gmail.com'),
(2, 'EDF', 2, '4E', 'angelina.daige@gmail.com'),
(2, 'EDF', 2, '5A', 'angelina.daige@gmail.com'),
(2, 'EDF', 2, '5B', 'angelina.daige@gmail.com'),
(2, 'EDF', 2, '5C', 'angelina.daige@gmail.com'),
(2, 'EDF', 2, '5D', 'angelina.daige@gmail.com'),
(2, 'EDF', 2, '5E', 'angelina.daige@gmail.com');

INSERT INTO aula VALUES
(33, 'NC', 1, '1A', 'antonio.almeida@gmail.com'),
(33, 'NC', 1, '1B', 'antonio.almeida@gmail.com'),
(33, 'NC', 1, '1C', 'antonio.almeida@gmail.com'),
(33, 'NC', 1, '1D', 'antonio.almeida@gmail.com'),
(33, 'NC', 1, '1E', 'antonio.almeida@gmail.com'),
(33, 'NC', 1, '2A', 'antonio.almeida@gmail.com'),
(33, 'NC', 1, '2B', 'antonio.almeida@gmail.com'),
(33, 'NC', 1, '2C', 'antonio.almeida@gmail.com'),
(33, 'NC', 1, '2D', 'antonio.almeida@gmail.com'),
(33, 'NC', 1, '2E', 'antonio.almeida@gmail.com'),
(33, 'NC', 1, '3A', 'antonio.almeida@gmail.com'),
(33, 'NC', 1, '3B', 'antonio.almeida@gmail.com'),
(33, 'NC', 1, '3C', 'antonio.almeida@gmail.com'),
(33, 'NC', 1, '3D', 'antonio.almeida@gmail.com'),
(33, 'NC', 1, '3E', 'antonio.almeida@gmail.com'),
(33, 'NC', 1, '4A', 'antonio.almeida@gmail.com'),
(33, 'NC', 1, '4B', 'antonio.almeida@gmail.com'),
(33, 'NC', 1, '4C', 'antonio.almeida@gmail.com'),
(33, 'NC', 1, '4D', 'antonio.almeida@gmail.com'),
(33, 'NC', 1, '4E', 'antonio.almeida@gmail.com'),
(33, 'NC', 1, '5A', 'antonio.almeida@gmail.com'),
(33, 'NC', 1, '5B', 'antonio.almeida@gmail.com'),
(33, 'NC', 1, '5C', 'antonio.almeida@gmail.com'),
(33, 'NC', 1, '5D', 'antonio.almeida@gmail.com'),
(33, 'NC', 1, '5E', 'antonio.almeida@gmail.com'),
(2, 'ART', 2, '1A', 'antonio.almeida@gmail.com'),
(2, 'ART', 2, '1B', 'antonio.almeida@gmail.com'),
(2, 'ART', 2, '1C', 'antonio.almeida@gmail.com'),
(2, 'ART', 2, '1D', 'antonio.almeida@gmail.com'),
(2, 'ART', 2, '1E', 'antonio.almeida@gmail.com'),
(2, 'ART', 2, '2A', 'antonio.almeida@gmail.com'),
(2, 'ART', 2, '2B', 'antonio.almeida@gmail.com'),
(2, 'ART', 2, '2C', 'antonio.almeida@gmail.com'),
(2, 'ART', 2, '2D', 'antonio.almeida@gmail.com'),
(2, 'ART', 2, '2E', 'antonio.almeida@gmail.com'),
(2, 'ART', 2, '3A', 'antonio.almeida@gmail.com'),
(2, 'ART', 2, '3B', 'antonio.almeida@gmail.com'),
(2, 'ART', 2, '3C', 'antonio.almeida@gmail.com'),
(2, 'ART', 2, '3D', 'antonio.almeida@gmail.com'),
(2, 'ART', 2, '3E', 'antonio.almeida@gmail.com'),
(2, 'ART', 2, '4A', 'antonio.almeida@gmail.com'),
(2, 'ART', 2, '4B', 'antonio.almeida@gmail.com'),
(2, 'ART', 2, '4C', 'antonio.almeida@gmail.com'),
(2, 'ART', 2, '4D', 'antonio.almeida@gmail.com'),
(2, 'ART', 2, '4E', 'antonio.almeida@gmail.com'),
(2, 'ART', 2, '5A', 'antonio.almeida@gmail.com'),
(2, 'ART', 2, '5B', 'antonio.almeida@gmail.com'),
(2, 'ART', 2, '5C', 'antonio.almeida@gmail.com'),
(2, 'ART', 2, '5D', 'antonio.almeida@gmail.com'),
(2, 'ART', 2, '5E', 'antonio.almeida@gmail.com'),
(2, 'EDF', 2, '1A', 'antonio.almeida@gmail.com'),
(2, 'EDF', 2, '1B', 'antonio.almeida@gmail.com'),
(2, 'EDF', 2, '1C', 'antonio.almeida@gmail.com'),
(2, 'EDF', 2, '1D', 'antonio.almeida@gmail.com'),
(2, 'EDF', 2, '1E', 'antonio.almeida@gmail.com'),
(2, 'EDF', 2, '2A', 'antonio.almeida@gmail.com'),
(2, 'EDF', 2, '2B', 'antonio.almeida@gmail.com'),
(2, 'EDF', 2, '2C', 'antonio.almeida@gmail.com'),
(2, 'EDF', 2, '2D', 'antonio.almeida@gmail.com'),
(2, 'EDF', 2, '2E', 'antonio.almeida@gmail.com'),
(2, 'EDF', 2, '3A', 'antonio.almeida@gmail.com'),
(2, 'EDF', 2, '3B', 'antonio.almeida@gmail.com'),
(2, 'EDF', 2, '3C', 'antonio.almeida@gmail.com'),
(2, 'EDF', 2, '3D', 'antonio.almeida@gmail.com'),
(2, 'EDF', 2, '3E', 'antonio.almeida@gmail.com'),
(2, 'EDF', 2, '4A', 'antonio.almeida@gmail.com'),
(2, 'EDF', 2, '4B', 'antonio.almeida@gmail.com'),
(2, 'EDF', 2, '4C', 'antonio.almeida@gmail.com'),
(2, 'EDF', 2, '4D', 'antonio.almeida@gmail.com'),
(2, 'EDF', 2, '4E', 'antonio.almeida@gmail.com'),
(2, 'EDF', 2, '5A', 'antonio.almeida@gmail.com'),
(2, 'EDF', 2, '5B', 'antonio.almeida@gmail.com'),
(2, 'EDF', 2, '5C', 'antonio.almeida@gmail.com'),
(2, 'EDF', 2, '5D', 'antonio.almeida@gmail.com'),
(2, 'EDF', 2, '5E', 'antonio.almeida@gmail.com');

INSERT INTO aula VALUES
(33, 'NC', 1, '1A', 'aparecida.sinopoli@gmail.com'),
(33, 'NC', 1, '1B', 'aparecida.sinopoli@gmail.com'),
(33, 'NC', 1, '1C', 'aparecida.sinopoli@gmail.com'),
(33, 'NC', 1, '1D', 'aparecida.sinopoli@gmail.com'),
(33, 'NC', 1, '1E', 'aparecida.sinopoli@gmail.com'),
(33, 'NC', 1, '2A', 'aparecida.sinopoli@gmail.com'),
(33, 'NC', 1, '2B', 'aparecida.sinopoli@gmail.com'),
(33, 'NC', 1, '2C', 'aparecida.sinopoli@gmail.com'),
(33, 'NC', 1, '2D', 'aparecida.sinopoli@gmail.com'),
(33, 'NC', 1, '2E', 'aparecida.sinopoli@gmail.com'),
(33, 'NC', 1, '3A', 'aparecida.sinopoli@gmail.com'),
(33, 'NC', 1, '3B', 'aparecida.sinopoli@gmail.com'),
(33, 'NC', 1, '3C', 'aparecida.sinopoli@gmail.com'),
(33, 'NC', 1, '3D', 'aparecida.sinopoli@gmail.com'),
(33, 'NC', 1, '3E', 'aparecida.sinopoli@gmail.com'),
(33, 'NC', 1, '4A', 'aparecida.sinopoli@gmail.com'),
(33, 'NC', 1, '4B', 'aparecida.sinopoli@gmail.com'),
(33, 'NC', 1, '4C', 'aparecida.sinopoli@gmail.com'),
(33, 'NC', 1, '4D', 'aparecida.sinopoli@gmail.com'),
(33, 'NC', 1, '4E', 'aparecida.sinopoli@gmail.com'),
(33, 'NC', 1, '5A', 'aparecida.sinopoli@gmail.com'),
(33, 'NC', 1, '5B', 'aparecida.sinopoli@gmail.com'),
(33, 'NC', 1, '5C', 'aparecida.sinopoli@gmail.com'),
(33, 'NC', 1, '5D', 'aparecida.sinopoli@gmail.com'),
(33, 'NC', 1, '5E', 'aparecida.sinopoli@gmail.com'),
(2, 'ART', 2, '1A', 'aparecida.sinopoli@gmail.com'),
(2, 'ART', 2, '1B', 'aparecida.sinopoli@gmail.com'),
(2, 'ART', 2, '1C', 'aparecida.sinopoli@gmail.com'),
(2, 'ART', 2, '1D', 'aparecida.sinopoli@gmail.com'),
(2, 'ART', 2, '1E', 'aparecida.sinopoli@gmail.com'),
(2, 'ART', 2, '2A', 'aparecida.sinopoli@gmail.com'),
(2, 'ART', 2, '2B', 'aparecida.sinopoli@gmail.com'),
(2, 'ART', 2, '2C', 'aparecida.sinopoli@gmail.com'),
(2, 'ART', 2, '2D', 'aparecida.sinopoli@gmail.com'),
(2, 'ART', 2, '2E', 'aparecida.sinopoli@gmail.com'),
(2, 'ART', 2, '3A', 'aparecida.sinopoli@gmail.com'),
(2, 'ART', 2, '3B', 'aparecida.sinopoli@gmail.com'),
(2, 'ART', 2, '3C', 'aparecida.sinopoli@gmail.com'),
(2, 'ART', 2, '3D', 'aparecida.sinopoli@gmail.com'),
(2, 'ART', 2, '3E', 'aparecida.sinopoli@gmail.com'),
(2, 'ART', 2, '4A', 'aparecida.sinopoli@gmail.com'),
(2, 'ART', 2, '4B', 'aparecida.sinopoli@gmail.com'),
(2, 'ART', 2, '4C', 'aparecida.sinopoli@gmail.com'),
(2, 'ART', 2, '4D', 'aparecida.sinopoli@gmail.com'),
(2, 'ART', 2, '4E', 'aparecida.sinopoli@gmail.com'),
(2, 'ART', 2, '5A', 'aparecida.sinopoli@gmail.com'),
(2, 'ART', 2, '5B', 'aparecida.sinopoli@gmail.com'),
(2, 'ART', 2, '5C', 'aparecida.sinopoli@gmail.com'),
(2, 'ART', 2, '5D', 'aparecida.sinopoli@gmail.com'),
(2, 'ART', 2, '5E', 'aparecida.sinopoli@gmail.com'),
(2, 'EDF', 2, '1A', 'aparecida.sinopoli@gmail.com'),
(2, 'EDF', 2, '1B', 'aparecida.sinopoli@gmail.com'),
(2, 'EDF', 2, '1C', 'aparecida.sinopoli@gmail.com'),
(2, 'EDF', 2, '1D', 'aparecida.sinopoli@gmail.com'),
(2, 'EDF', 2, '1E', 'aparecida.sinopoli@gmail.com'),
(2, 'EDF', 2, '2A', 'aparecida.sinopoli@gmail.com'),
(2, 'EDF', 2, '2B', 'aparecida.sinopoli@gmail.com'),
(2, 'EDF', 2, '2C', 'aparecida.sinopoli@gmail.com'),
(2, 'EDF', 2, '2D', 'aparecida.sinopoli@gmail.com'),
(2, 'EDF', 2, '2E', 'aparecida.sinopoli@gmail.com'),
(2, 'EDF', 2, '3A', 'aparecida.sinopoli@gmail.com'),
(2, 'EDF', 2, '3B', 'aparecida.sinopoli@gmail.com'),
(2, 'EDF', 2, '3C', 'aparecida.sinopoli@gmail.com'),
(2, 'EDF', 2, '3D', 'aparecida.sinopoli@gmail.com'),
(2, 'EDF', 2, '3E', 'aparecida.sinopoli@gmail.com'),
(2, 'EDF', 2, '4A', 'aparecida.sinopoli@gmail.com'),
(2, 'EDF', 2, '4B', 'aparecida.sinopoli@gmail.com'),
(2, 'EDF', 2, '4C', 'aparecida.sinopoli@gmail.com'),
(2, 'EDF', 2, '4D', 'aparecida.sinopoli@gmail.com'),
(2, 'EDF', 2, '4E', 'aparecida.sinopoli@gmail.com'),
(2, 'EDF', 2, '5A', 'aparecida.sinopoli@gmail.com'),
(2, 'EDF', 2, '5B', 'aparecida.sinopoli@gmail.com'),
(2, 'EDF', 2, '5C', 'aparecida.sinopoli@gmail.com'),
(2, 'EDF', 2, '5D', 'aparecida.sinopoli@gmail.com'),
(2, 'EDF', 2, '5E', 'aparecida.sinopoli@gmail.com');

INSERT INTO aula VALUES
(33, 'NC', 1, '1A', 'ary.souza@gmail.com'),
(33, 'NC', 1, '1B', 'ary.souza@gmail.com'),
(33, 'NC', 1, '1C', 'ary.souza@gmail.com'),
(33, 'NC', 1, '1D', 'ary.souza@gmail.com'),
(33, 'NC', 1, '1E', 'ary.souza@gmail.com'),
(33, 'NC', 1, '2A', 'ary.souza@gmail.com'),
(33, 'NC', 1, '2B', 'ary.souza@gmail.com'),
(33, 'NC', 1, '2C', 'ary.souza@gmail.com'),
(33, 'NC', 1, '2D', 'ary.souza@gmail.com'),
(33, 'NC', 1, '2E', 'ary.souza@gmail.com'),
(33, 'NC', 1, '3A', 'ary.souza@gmail.com'),
(33, 'NC', 1, '3B', 'ary.souza@gmail.com'),
(33, 'NC', 1, '3C', 'ary.souza@gmail.com'),
(33, 'NC', 1, '3D', 'ary.souza@gmail.com'),
(33, 'NC', 1, '3E', 'ary.souza@gmail.com'),
(33, 'NC', 1, '4A', 'ary.souza@gmail.com'),
(33, 'NC', 1, '4B', 'ary.souza@gmail.com'),
(33, 'NC', 1, '4C', 'ary.souza@gmail.com'),
(33, 'NC', 1, '4D', 'ary.souza@gmail.com'),
(33, 'NC', 1, '4E', 'ary.souza@gmail.com'),
(33, 'NC', 1, '5A', 'ary.souza@gmail.com'),
(33, 'NC', 1, '5B', 'ary.souza@gmail.com'),
(33, 'NC', 1, '5C', 'ary.souza@gmail.com'),
(33, 'NC', 1, '5D', 'ary.souza@gmail.com'),
(33, 'NC', 1, '5E', 'ary.souza@gmail.com'),
(2, 'ART', 2, '1A', 'ary.souza@gmail.com'),
(2, 'ART', 2, '1B', 'ary.souza@gmail.com'),
(2, 'ART', 2, '1C', 'ary.souza@gmail.com'),
(2, 'ART', 2, '1D', 'ary.souza@gmail.com'),
(2, 'ART', 2, '1E', 'ary.souza@gmail.com'),
(2, 'ART', 2, '2A', 'ary.souza@gmail.com'),
(2, 'ART', 2, '2B', 'ary.souza@gmail.com'),
(2, 'ART', 2, '2C', 'ary.souza@gmail.com'),
(2, 'ART', 2, '2D', 'ary.souza@gmail.com'),
(2, 'ART', 2, '2E', 'ary.souza@gmail.com'),
(2, 'ART', 2, '3A', 'ary.souza@gmail.com'),
(2, 'ART', 2, '3B', 'ary.souza@gmail.com'),
(2, 'ART', 2, '3C', 'ary.souza@gmail.com'),
(2, 'ART', 2, '3D', 'ary.souza@gmail.com'),
(2, 'ART', 2, '3E', 'ary.souza@gmail.com'),
(2, 'ART', 2, '4A', 'ary.souza@gmail.com'),
(2, 'ART', 2, '4B', 'ary.souza@gmail.com'),
(2, 'ART', 2, '4C', 'ary.souza@gmail.com'),
(2, 'ART', 2, '4D', 'ary.souza@gmail.com'),
(2, 'ART', 2, '4E', 'ary.souza@gmail.com'),
(2, 'ART', 2, '5A', 'ary.souza@gmail.com'),
(2, 'ART', 2, '5B', 'ary.souza@gmail.com'),
(2, 'ART', 2, '5C', 'ary.souza@gmail.com'),
(2, 'ART', 2, '5D', 'ary.souza@gmail.com'),
(2, 'ART', 2, '5E', 'ary.souza@gmail.com'),
(2, 'EDF', 2, '1A', 'ary.souza@gmail.com'),
(2, 'EDF', 2, '1B', 'ary.souza@gmail.com'),
(2, 'EDF', 2, '1C', 'ary.souza@gmail.com'),
(2, 'EDF', 2, '1D', 'ary.souza@gmail.com'),
(2, 'EDF', 2, '1E', 'ary.souza@gmail.com'),
(2, 'EDF', 2, '2A', 'ary.souza@gmail.com'),
(2, 'EDF', 2, '2B', 'ary.souza@gmail.com'),
(2, 'EDF', 2, '2C', 'ary.souza@gmail.com'),
(2, 'EDF', 2, '2D', 'ary.souza@gmail.com'),
(2, 'EDF', 2, '2E', 'ary.souza@gmail.com'),
(2, 'EDF', 2, '3A', 'ary.souza@gmail.com'),
(2, 'EDF', 2, '3B', 'ary.souza@gmail.com'),
(2, 'EDF', 2, '3C', 'ary.souza@gmail.com'),
(2, 'EDF', 2, '3D', 'ary.souza@gmail.com'),
(2, 'EDF', 2, '3E', 'ary.souza@gmail.com'),
(2, 'EDF', 2, '4A', 'ary.souza@gmail.com'),
(2, 'EDF', 2, '4B', 'ary.souza@gmail.com'),
(2, 'EDF', 2, '4C', 'ary.souza@gmail.com'),
(2, 'EDF', 2, '4D', 'ary.souza@gmail.com'),
(2, 'EDF', 2, '4E', 'ary.souza@gmail.com'),
(2, 'EDF', 2, '5A', 'ary.souza@gmail.com'),
(2, 'EDF', 2, '5B', 'ary.souza@gmail.com'),
(2, 'EDF', 2, '5C', 'ary.souza@gmail.com'),
(2, 'EDF', 2, '5D', 'ary.souza@gmail.com'),
(2, 'EDF', 2, '5E', 'ary.souza@gmail.com');

INSERT INTO aula VALUES
(33, 'NC', 1, '1A', 'augusto.antunes@gmail.com'),
(33, 'NC', 1, '1B', 'augusto.antunes@gmail.com'),
(33, 'NC', 1, '1C', 'augusto.antunes@gmail.com'),
(33, 'NC', 1, '1D', 'augusto.antunes@gmail.com'),
(33, 'NC', 1, '2A', 'augusto.antunes@gmail.com'),
(33, 'NC', 1, '2B', 'augusto.antunes@gmail.com'),
(33, 'NC', 1, '2C', 'augusto.antunes@gmail.com'),
(33, 'NC', 1, '2D', 'augusto.antunes@gmail.com'),
(33, 'NC', 1, '3A', 'augusto.antunes@gmail.com'),
(33, 'NC', 1, '3B', 'augusto.antunes@gmail.com'),
(33, 'NC', 1, '3C', 'augusto.antunes@gmail.com'),
(33, 'NC', 1, '3D', 'augusto.antunes@gmail.com'),
(33, 'NC', 1, '4A', 'augusto.antunes@gmail.com'),
(33, 'NC', 1, '4B', 'augusto.antunes@gmail.com'),
(33, 'NC', 1, '4C', 'augusto.antunes@gmail.com'),
(33, 'NC', 1, '4D', 'augusto.antunes@gmail.com'),
(33, 'NC', 1, '5A', 'augusto.antunes@gmail.com'),
(33, 'NC', 1, '5B', 'augusto.antunes@gmail.com'),
(33, 'NC', 1, '5C', 'augusto.antunes@gmail.com'),
(33, 'NC', 1, '5D', 'augusto.antunes@gmail.com'),
(2, 'ART', 2, '1A', 'augusto.antunes@gmail.com'),
(2, 'ART', 2, '1B', 'augusto.antunes@gmail.com'),
(2, 'ART', 2, '1C', 'augusto.antunes@gmail.com'),
(2, 'ART', 2, '1D', 'augusto.antunes@gmail.com'),
(2, 'ART', 2, '2A', 'augusto.antunes@gmail.com'),
(2, 'ART', 2, '2B', 'augusto.antunes@gmail.com'),
(2, 'ART', 2, '2C', 'augusto.antunes@gmail.com'),
(2, 'ART', 2, '2D', 'augusto.antunes@gmail.com'),
(2, 'ART', 2, '3A', 'augusto.antunes@gmail.com'),
(2, 'ART', 2, '3B', 'augusto.antunes@gmail.com'),
(2, 'ART', 2, '3C', 'augusto.antunes@gmail.com'),
(2, 'ART', 2, '3D', 'augusto.antunes@gmail.com'),
(2, 'ART', 2, '4A', 'augusto.antunes@gmail.com'),
(2, 'ART', 2, '4B', 'augusto.antunes@gmail.com'),
(2, 'ART', 2, '4C', 'augusto.antunes@gmail.com'),
(2, 'ART', 2, '4D', 'augusto.antunes@gmail.com'),
(2, 'ART', 2, '5A', 'augusto.antunes@gmail.com'),
(2, 'ART', 2, '5B', 'augusto.antunes@gmail.com'),
(2, 'ART', 2, '5C', 'augusto.antunes@gmail.com'),
(2, 'ART', 2, '5D', 'augusto.antunes@gmail.com'),
(2, 'EDF', 2, '1A', 'augusto.antunes@gmail.com'),
(2, 'EDF', 2, '1B', 'augusto.antunes@gmail.com'),
(2, 'EDF', 2, '1C', 'augusto.antunes@gmail.com'),
(2, 'EDF', 2, '1D', 'augusto.antunes@gmail.com'),
(2, 'EDF', 2, '2A', 'augusto.antunes@gmail.com'),
(2, 'EDF', 2, '2B', 'augusto.antunes@gmail.com'),
(2, 'EDF', 2, '2C', 'augusto.antunes@gmail.com'),
(2, 'EDF', 2, '2D', 'augusto.antunes@gmail.com'),
(2, 'EDF', 2, '3A', 'augusto.antunes@gmail.com'),
(2, 'EDF', 2, '3B', 'augusto.antunes@gmail.com'),
(2, 'EDF', 2, '3C', 'augusto.antunes@gmail.com'),
(2, 'EDF', 2, '3D', 'augusto.antunes@gmail.com'),
(2, 'EDF', 2, '4A', 'augusto.antunes@gmail.com'),
(2, 'EDF', 2, '4B', 'augusto.antunes@gmail.com'),
(2, 'EDF', 2, '4C', 'augusto.antunes@gmail.com'),
(2, 'EDF', 2, '4D', 'augusto.antunes@gmail.com'),
(2, 'EDF', 2, '5A', 'augusto.antunes@gmail.com'),
(2, 'EDF', 2, '5B', 'augusto.antunes@gmail.com'),
(2, 'EDF', 2, '5C', 'augusto.antunes@gmail.com'),
(2, 'EDF', 2, '5D', 'augusto.antunes@gmail.com');

INSERT INTO aula VALUES
(33, 'NC', 1, '1A', 'benedita.gonzalez@gmail.com'),
(33, 'NC', 1, '1B', 'benedita.gonzalez@gmail.com'),
(33, 'NC', 1, '1C', 'benedita.gonzalez@gmail.com'),
(33, 'NC', 1, '2A', 'benedita.gonzalez@gmail.com'),
(33, 'NC', 1, '2B', 'benedita.gonzalez@gmail.com'),
(33, 'NC', 1, '2C', 'benedita.gonzalez@gmail.com'),
(33, 'NC', 1, '3A', 'benedita.gonzalez@gmail.com'),
(33, 'NC', 1, '3B', 'benedita.gonzalez@gmail.com'),
(33, 'NC', 1, '3C', 'benedita.gonzalez@gmail.com'),
(33, 'NC', 1, '4A', 'benedita.gonzalez@gmail.com'),
(33, 'NC', 1, '4B', 'benedita.gonzalez@gmail.com'),
(33, 'NC', 1, '4C', 'benedita.gonzalez@gmail.com'),
(33, 'NC', 1, '5A', 'benedita.gonzalez@gmail.com'),
(33, 'NC', 1, '5B', 'benedita.gonzalez@gmail.com'),
(33, 'NC', 1, '5C', 'benedita.gonzalez@gmail.com'),
(2, 'ART', 2, '1A', 'benedita.gonzalez@gmail.com'),
(2, 'ART', 2, '1B', 'benedita.gonzalez@gmail.com'),
(2, 'ART', 2, '1C', 'benedita.gonzalez@gmail.com'),
(2, 'ART', 2, '2A', 'benedita.gonzalez@gmail.com'),
(2, 'ART', 2, '2B', 'benedita.gonzalez@gmail.com'),
(2, 'ART', 2, '2C', 'benedita.gonzalez@gmail.com'),
(2, 'ART', 2, '3A', 'benedita.gonzalez@gmail.com'),
(2, 'ART', 2, '3B', 'benedita.gonzalez@gmail.com'),
(2, 'ART', 2, '3C', 'benedita.gonzalez@gmail.com'),
(2, 'ART', 2, '4A', 'benedita.gonzalez@gmail.com'),
(2, 'ART', 2, '4B', 'benedita.gonzalez@gmail.com'),
(2, 'ART', 2, '4C', 'benedita.gonzalez@gmail.com'),
(2, 'ART', 2, '5A', 'benedita.gonzalez@gmail.com'),
(2, 'ART', 2, '5B', 'benedita.gonzalez@gmail.com'),
(2, 'ART', 2, '5C', 'benedita.gonzalez@gmail.com'),
(2, 'EDF', 2, '1A', 'benedita.gonzalez@gmail.com'),
(2, 'EDF', 2, '1B', 'benedita.gonzalez@gmail.com'),
(2, 'EDF', 2, '1C', 'benedita.gonzalez@gmail.com'),
(2, 'EDF', 2, '2A', 'benedita.gonzalez@gmail.com'),
(2, 'EDF', 2, '2B', 'benedita.gonzalez@gmail.com'),
(2, 'EDF', 2, '2C', 'benedita.gonzalez@gmail.com'),
(2, 'EDF', 2, '3A', 'benedita.gonzalez@gmail.com'),
(2, 'EDF', 2, '3B', 'benedita.gonzalez@gmail.com'),
(2, 'EDF', 2, '3C', 'benedita.gonzalez@gmail.com'),
(2, 'EDF', 2, '4A', 'benedita.gonzalez@gmail.com'),
(2, 'EDF', 2, '4B', 'benedita.gonzalez@gmail.com'),
(2, 'EDF', 2, '4C', 'benedita.gonzalez@gmail.com'),
(2, 'EDF', 2, '5A', 'benedita.gonzalez@gmail.com'),
(2, 'EDF', 2, '5B', 'benedita.gonzalez@gmail.com'),
(2, 'EDF', 2, '5C', 'benedita.gonzalez@gmail.com');

INSERT INTO aula VALUES
(33, 'NC', 1, '1A', 'catarina.salgado@gmail.com'),
(33, 'NC', 1, '1B', 'catarina.salgado@gmail.com'),
(33, 'NC', 1, '1C', 'catarina.salgado@gmail.com'),
(33, 'NC', 1, '1D', 'catarina.salgado@gmail.com'),
(33, 'NC', 1, '2A', 'catarina.salgado@gmail.com'),
(33, 'NC', 1, '2B', 'catarina.salgado@gmail.com'),
(33, 'NC', 1, '2C', 'catarina.salgado@gmail.com'),
(33, 'NC', 1, '2D', 'catarina.salgado@gmail.com'),
(33, 'NC', 1, '3A', 'catarina.salgado@gmail.com'),
(33, 'NC', 1, '3B', 'catarina.salgado@gmail.com'),
(33, 'NC', 1, '3C', 'catarina.salgado@gmail.com'),
(33, 'NC', 1, '3D', 'catarina.salgado@gmail.com'),
(33, 'NC', 1, '4A', 'catarina.salgado@gmail.com'),
(33, 'NC', 1, '4B', 'catarina.salgado@gmail.com'),
(33, 'NC', 1, '4C', 'catarina.salgado@gmail.com'),
(33, 'NC', 1, '4D', 'catarina.salgado@gmail.com'),
(2, 'ART', 2, '1A', 'catarina.salgado@gmail.com'),
(2, 'ART', 2, '1B', 'catarina.salgado@gmail.com'),
(2, 'ART', 2, '1C', 'catarina.salgado@gmail.com'),
(2, 'ART', 2, '1D', 'catarina.salgado@gmail.com'),
(2, 'ART', 2, '2A', 'catarina.salgado@gmail.com'),
(2, 'ART', 2, '2B', 'catarina.salgado@gmail.com'),
(2, 'ART', 2, '2C', 'catarina.salgado@gmail.com'),
(2, 'ART', 2, '2D', 'catarina.salgado@gmail.com'),
(2, 'ART', 2, '3A', 'catarina.salgado@gmail.com'),
(2, 'ART', 2, '3B', 'catarina.salgado@gmail.com'),
(2, 'ART', 2, '3C', 'catarina.salgado@gmail.com'),
(2, 'ART', 2, '3D', 'catarina.salgado@gmail.com'),
(2, 'ART', 2, '4A', 'catarina.salgado@gmail.com'),
(2, 'ART', 2, '4B', 'catarina.salgado@gmail.com'),
(2, 'ART', 2, '4C', 'catarina.salgado@gmail.com'),
(2, 'ART', 2, '4D', 'catarina.salgado@gmail.com'),
(2, 'EDF', 2, '1A', 'catarina.salgado@gmail.com'),
(2, 'EDF', 2, '1B', 'catarina.salgado@gmail.com'),
(2, 'EDF', 2, '1C', 'catarina.salgado@gmail.com'),
(2, 'EDF', 2, '1D', 'catarina.salgado@gmail.com'),
(2, 'EDF', 2, '2A', 'catarina.salgado@gmail.com'),
(2, 'EDF', 2, '2B', 'catarina.salgado@gmail.com'),
(2, 'EDF', 2, '2C', 'catarina.salgado@gmail.com'),
(2, 'EDF', 2, '2D', 'catarina.salgado@gmail.com'),
(2, 'EDF', 2, '3A', 'catarina.salgado@gmail.com'),
(2, 'EDF', 2, '3B', 'catarina.salgado@gmail.com'),
(2, 'EDF', 2, '3C', 'catarina.salgado@gmail.com'),
(2, 'EDF', 2, '3D', 'catarina.salgado@gmail.com'),
(2, 'EDF', 2, '4A', 'catarina.salgado@gmail.com'),
(2, 'EDF', 2, '4B', 'catarina.salgado@gmail.com'),
(2, 'EDF', 2, '4C', 'catarina.salgado@gmail.com'),
(2, 'EDF', 2, '4D', 'catarina.salgado@gmail.com');

INSERT INTO aula VALUES
(33, 'NC', 1, '1A', 'constantino.michaello@gmail.com'),
(33, 'NC', 1, '1B', 'constantino.michaello@gmail.com'),
(33, 'NC', 1, '1C', 'constantino.michaello@gmail.com'),
(33, 'NC', 1, '1D', 'constantino.michaello@gmail.com'),
(33, 'NC', 1, '1E', 'constantino.michaello@gmail.com'),
(33, 'NC', 1, '2A', 'constantino.michaello@gmail.com'),
(33, 'NC', 1, '2B', 'constantino.michaello@gmail.com'),
(33, 'NC', 1, '2C', 'constantino.michaello@gmail.com'),
(33, 'NC', 1, '2D', 'constantino.michaello@gmail.com'),
(33, 'NC', 1, '3A', 'constantino.michaello@gmail.com'),
(33, 'NC', 1, '3B', 'constantino.michaello@gmail.com'),
(33, 'NC', 1, '3C', 'constantino.michaello@gmail.com'),
(33, 'NC', 1, '3D', 'constantino.michaello@gmail.com'),
(33, 'NC', 1, '4A', 'constantino.michaello@gmail.com'),
(33, 'NC', 1, '4B', 'constantino.michaello@gmail.com'),
(33, 'NC', 1, '4C', 'constantino.michaello@gmail.com'),
(33, 'NC', 1, '4D', 'constantino.michaello@gmail.com'),
(2, 'ART', 2, '1A', 'constantino.michaello@gmail.com'),
(2, 'ART', 2, '1B', 'constantino.michaello@gmail.com'),
(2, 'ART', 2, '1C', 'constantino.michaello@gmail.com'),
(2, 'ART', 2, '1D', 'constantino.michaello@gmail.com'),
(2, 'ART', 2, '2A', 'constantino.michaello@gmail.com'),
(2, 'ART', 2, '2B', 'constantino.michaello@gmail.com'),
(2, 'ART', 2, '2C', 'constantino.michaello@gmail.com'),
(2, 'ART', 2, '2D', 'constantino.michaello@gmail.com'),
(2, 'ART', 2, '3A', 'constantino.michaello@gmail.com'),
(2, 'ART', 2, '3B', 'constantino.michaello@gmail.com'),
(2, 'ART', 2, '3C', 'constantino.michaello@gmail.com'),
(2, 'ART', 2, '3D', 'constantino.michaello@gmail.com'),
(2, 'ART', 2, '4A', 'constantino.michaello@gmail.com'),
(2, 'ART', 2, '4B', 'constantino.michaello@gmail.com'),
(2, 'ART', 2, '4C', 'constantino.michaello@gmail.com'),
(2, 'ART', 2, '4D', 'constantino.michaello@gmail.com'),
(2, 'EDF', 2, '1A', 'constantino.michaello@gmail.com'),
(2, 'EDF', 2, '1B', 'constantino.michaello@gmail.com'),
(2, 'EDF', 2, '1C', 'constantino.michaello@gmail.com'),
(2, 'EDF', 2, '1D', 'constantino.michaello@gmail.com'),
(2, 'EDF', 2, '2A', 'constantino.michaello@gmail.com'),
(2, 'EDF', 2, '2B', 'constantino.michaello@gmail.com'),
(2, 'EDF', 2, '2C', 'constantino.michaello@gmail.com'),
(2, 'EDF', 2, '2D', 'constantino.michaello@gmail.com'),
(2, 'EDF', 2, '3A', 'constantino.michaello@gmail.com'),
(2, 'EDF', 2, '3B', 'constantino.michaello@gmail.com'),
(2, 'EDF', 2, '3C', 'constantino.michaello@gmail.com'),
(2, 'EDF', 2, '3D', 'constantino.michaello@gmail.com'),
(2, 'EDF', 2, '4A', 'constantino.michaello@gmail.com'),
(2, 'EDF', 2, '4B', 'constantino.michaello@gmail.com'),
(2, 'EDF', 2, '4C', 'constantino.michaello@gmail.com'),
(2, 'EDF', 2, '4D', 'constantino.michaello@gmail.com');

INSERT INTO aula VALUES
(33, 'NC', 1, '1A', 'domenico.rangoni@gmail.com'),
(33, 'NC', 1, '1B', 'domenico.rangoni@gmail.com'),
(33, 'NC', 1, '1C', 'domenico.rangoni@gmail.com'),
(33, 'NC', 1, '1D', 'domenico.rangoni@gmail.com'),
(33, 'NC', 1, '2A', 'domenico.rangoni@gmail.com'),
(33, 'NC', 1, '2B', 'domenico.rangoni@gmail.com'),
(33, 'NC', 1, '2C', 'domenico.rangoni@gmail.com'),
(33, 'NC', 1, '2D', 'domenico.rangoni@gmail.com'),
(33, 'NC', 1, '3A', 'domenico.rangoni@gmail.com'),
(33, 'NC', 1, '3B', 'domenico.rangoni@gmail.com'),
(33, 'NC', 1, '3C', 'domenico.rangoni@gmail.com'),
(33, 'NC', 1, '3D', 'domenico.rangoni@gmail.com'),
(33, 'NC', 1, '4A', 'domenico.rangoni@gmail.com'),
(33, 'NC', 1, '4B', 'domenico.rangoni@gmail.com'),
(33, 'NC', 1, '4C', 'domenico.rangoni@gmail.com'),
(33, 'NC', 1, '4D', 'domenico.rangoni@gmail.com'),
(2, 'ART', 2, '1A', 'domenico.rangoni@gmail.com'),
(2, 'ART', 2, '1B', 'domenico.rangoni@gmail.com'),
(2, 'ART', 2, '1C', 'domenico.rangoni@gmail.com'),
(2, 'ART', 2, '1D', 'domenico.rangoni@gmail.com'),
(2, 'ART', 2, '2A', 'domenico.rangoni@gmail.com'),
(2, 'ART', 2, '2B', 'domenico.rangoni@gmail.com'),
(2, 'ART', 2, '2C', 'domenico.rangoni@gmail.com'),
(2, 'ART', 2, '2D', 'domenico.rangoni@gmail.com'),
(2, 'ART', 2, '3A', 'domenico.rangoni@gmail.com'),
(2, 'ART', 2, '3B', 'domenico.rangoni@gmail.com'),
(2, 'ART', 2, '3C', 'domenico.rangoni@gmail.com'),
(2, 'ART', 2, '3D', 'domenico.rangoni@gmail.com'),
(2, 'ART', 2, '4A', 'domenico.rangoni@gmail.com'),
(2, 'ART', 2, '4B', 'domenico.rangoni@gmail.com'),
(2, 'ART', 2, '4C', 'domenico.rangoni@gmail.com'),
(2, 'ART', 2, '4D', 'domenico.rangoni@gmail.com'),
(2, 'EDF', 2, '1A', 'domenico.rangoni@gmail.com'),
(2, 'EDF', 2, '1B', 'domenico.rangoni@gmail.com'),
(2, 'EDF', 2, '1C', 'domenico.rangoni@gmail.com'),
(2, 'EDF', 2, '1D', 'domenico.rangoni@gmail.com'),
(2, 'EDF', 2, '2A', 'domenico.rangoni@gmail.com'),
(2, 'EDF', 2, '2B', 'domenico.rangoni@gmail.com'),
(2, 'EDF', 2, '2C', 'domenico.rangoni@gmail.com'),
(2, 'EDF', 2, '2D', 'domenico.rangoni@gmail.com'),
(2, 'EDF', 2, '3A', 'domenico.rangoni@gmail.com'),
(2, 'EDF', 2, '3B', 'domenico.rangoni@gmail.com'),
(2, 'EDF', 2, '3C', 'domenico.rangoni@gmail.com'),
(2, 'EDF', 2, '3D', 'domenico.rangoni@gmail.com'),
(2, 'EDF', 2, '4A', 'domenico.rangoni@gmail.com'),
(2, 'EDF', 2, '4B', 'domenico.rangoni@gmail.com'),
(2, 'EDF', 2, '4C', 'domenico.rangoni@gmail.com'),
(2, 'EDF', 2, '4D', 'domenico.rangoni@gmail.com');

INSERT INTO aula VALUES
(33, 'NC', 1, '1A', 'ernesto.sobrinho@gmail.com'),
(33, 'NC', 1, '1B', 'ernesto.sobrinho@gmail.com'),
(33, 'NC', 1, '1C', 'ernesto.sobrinho@gmail.com'),
(33, 'NC', 1, '2A', 'ernesto.sobrinho@gmail.com'),
(33, 'NC', 1, '2B', 'ernesto.sobrinho@gmail.com'),
(33, 'NC', 1, '2C', 'ernesto.sobrinho@gmail.com'),
(33, 'NC', 1, '3A', 'ernesto.sobrinho@gmail.com'),
(33, 'NC', 1, '3B', 'ernesto.sobrinho@gmail.com'),
(33, 'NC', 1, '3C', 'ernesto.sobrinho@gmail.com'),
(33, 'NC', 1, '4A', 'ernesto.sobrinho@gmail.com'),
(33, 'NC', 1, '4B', 'ernesto.sobrinho@gmail.com'),
(33, 'NC', 1, '4C', 'ernesto.sobrinho@gmail.com'),
(2, 'ART', 2, '1A', 'ernesto.sobrinho@gmail.com'),
(2, 'ART', 2, '1B', 'ernesto.sobrinho@gmail.com'),
(2, 'ART', 2, '1C', 'ernesto.sobrinho@gmail.com'),
(2, 'ART', 2, '2A', 'ernesto.sobrinho@gmail.com'),
(2, 'ART', 2, '2B', 'ernesto.sobrinho@gmail.com'),
(2, 'ART', 2, '2C', 'ernesto.sobrinho@gmail.com'),
(2, 'ART', 2, '3A', 'ernesto.sobrinho@gmail.com'),
(2, 'ART', 2, '3B', 'ernesto.sobrinho@gmail.com'),
(2, 'ART', 2, '3C', 'ernesto.sobrinho@gmail.com'),
(2, 'ART', 2, '4A', 'ernesto.sobrinho@gmail.com'),
(2, 'ART', 2, '4B', 'ernesto.sobrinho@gmail.com'),
(2, 'ART', 2, '4C', 'ernesto.sobrinho@gmail.com'),
(2, 'EDF', 2, '1A', 'ernesto.sobrinho@gmail.com'),
(2, 'EDF', 2, '1B', 'ernesto.sobrinho@gmail.com'),
(2, 'EDF', 2, '1C', 'ernesto.sobrinho@gmail.com'),
(2, 'EDF', 2, '2A', 'ernesto.sobrinho@gmail.com'),
(2, 'EDF', 2, '2B', 'ernesto.sobrinho@gmail.com'),
(2, 'EDF', 2, '2C', 'ernesto.sobrinho@gmail.com'),
(2, 'EDF', 2, '3A', 'ernesto.sobrinho@gmail.com'),
(2, 'EDF', 2, '3B', 'ernesto.sobrinho@gmail.com'),
(2, 'EDF', 2, '3C', 'ernesto.sobrinho@gmail.com'),
(2, 'EDF', 2, '4A', 'ernesto.sobrinho@gmail.com'),
(2, 'EDF', 2, '4B', 'ernesto.sobrinho@gmail.com'),
(2, 'EDF', 2, '4C', 'ernesto.sobrinho@gmail.com');

INSERT INTO aula VALUES
(33, 'NC', 1, '1A', 'franklin.roosevelt@gmail.com'),
(33, 'NC', 1, '2A', 'franklin.roosevelt@gmail.com'),
(33, 'NC', 1, '3A', 'franklin.roosevelt@gmail.com'),
(33, 'NC', 1, '4A', 'franklin.roosevelt@gmail.com'),
(2, 'ART', 2, '1A', 'franklin.roosevelt@gmail.com'),
(2, 'ART', 2, '2A', 'franklin.roosevelt@gmail.com'),
(2, 'ART', 2, '3A', 'franklin.roosevelt@gmail.com'),
(2, 'ART', 2, '4A', 'franklin.roosevelt@gmail.com'),
(2, 'EDF', 2, '1A', 'franklin.roosevelt@gmail.com'),
(2, 'EDF', 2, '2A', 'franklin.roosevelt@gmail.com'),
(2, 'EDF', 2, '3A', 'franklin.roosevelt@gmail.com'),
(2, 'EDF', 2, '4A', 'franklin.roosevelt@gmail.com');

INSERT INTO aula VALUES
(33, 'NC', 1, '1A', 'giusfredo.santini@gmail.com'),
(33, 'NC', 1, '1B', 'giusfredo.santini@gmail.com'),
(33, 'NC', 1, '1C', 'giusfredo.santini@gmail.com'),
(33, 'NC', 1, '1D', 'giusfredo.santini@gmail.com'),
(33, 'NC', 1, '2A', 'giusfredo.santini@gmail.com'),
(33, 'NC', 1, '2B', 'giusfredo.santini@gmail.com'),
(33, 'NC', 1, '2C', 'giusfredo.santini@gmail.com'),
(33, 'NC', 1, '2D', 'giusfredo.santini@gmail.com'),
(33, 'NC', 1, '3A', 'giusfredo.santini@gmail.com'),
(33, 'NC', 1, '3B', 'giusfredo.santini@gmail.com'),
(33, 'NC', 1, '3C', 'giusfredo.santini@gmail.com'),
(33, 'NC', 1, '3D', 'giusfredo.santini@gmail.com'),
(2, 'ART', 2, '1A', 'giusfredo.santini@gmail.com'),
(2, 'ART', 2, '1B', 'giusfredo.santini@gmail.com'),
(2, 'ART', 2, '1C', 'giusfredo.santini@gmail.com'),
(2, 'ART', 2, '1D', 'giusfredo.santini@gmail.com'),
(2, 'ART', 2, '2A', 'giusfredo.santini@gmail.com'),
(2, 'ART', 2, '2B', 'giusfredo.santini@gmail.com'),
(2, 'ART', 2, '2C', 'giusfredo.santini@gmail.com'),
(2, 'ART', 2, '2D', 'giusfredo.santini@gmail.com'),
(2, 'ART', 2, '3A', 'giusfredo.santini@gmail.com'),
(2, 'ART', 2, '3B', 'giusfredo.santini@gmail.com'),
(2, 'ART', 2, '3C', 'giusfredo.santini@gmail.com'),
(2, 'ART', 2, '3D', 'giusfredo.santini@gmail.com'),
(2, 'EDF', 2, '1A', 'giusfredo.santini@gmail.com'),
(2, 'EDF', 2, '1B', 'giusfredo.santini@gmail.com'),
(2, 'EDF', 2, '1C', 'giusfredo.santini@gmail.com'),
(2, 'EDF', 2, '1D', 'giusfredo.santini@gmail.com'),
(2, 'EDF', 2, '2A', 'giusfredo.santini@gmail.com'),
(2, 'EDF', 2, '2B', 'giusfredo.santini@gmail.com'),
(2, 'EDF', 2, '2C', 'giusfredo.santini@gmail.com'),
(2, 'EDF', 2, '2D', 'giusfredo.santini@gmail.com'),
(2, 'EDF', 2, '3A', 'giusfredo.santini@gmail.com'),
(2, 'EDF', 2, '3B', 'giusfredo.santini@gmail.com'),
(2, 'EDF', 2, '3C', 'giusfredo.santini@gmail.com'),
(2, 'EDF', 2, '3D', 'giusfredo.santini@gmail.com');

INSERT INTO aula VALUES
(33, 'NC', 1, '1A', 'gladston.jafet@gmail.com'),
(33, 'NC', 1, '1B', 'gladston.jafet@gmail.com'),
(33, 'NC', 1, '1C', 'gladston.jafet@gmail.com'),
(33, 'NC', 1, '2A', 'gladston.jafet@gmail.com'),
(33, 'NC', 1, '2B', 'gladston.jafet@gmail.com'),
(33, 'NC', 1, '2C', 'gladston.jafet@gmail.com'),
(33, 'NC', 1, '3A', 'gladston.jafet@gmail.com'),
(33, 'NC', 1, '3B', 'gladston.jafet@gmail.com'),
(33, 'NC', 1, '3C', 'gladston.jafet@gmail.com'),
(33, 'NC', 1, '4A', 'gladston.jafet@gmail.com'),
(33, 'NC', 1, '4B', 'gladston.jafet@gmail.com'),
(33, 'NC', 1, '4C', 'gladston.jafet@gmail.com'),
(2, 'ART', 2, '1A', 'gladston.jafet@gmail.com'),
(2, 'ART', 2, '1B', 'gladston.jafet@gmail.com'),
(2, 'ART', 2, '1C', 'gladston.jafet@gmail.com'),
(2, 'ART', 2, '2A', 'gladston.jafet@gmail.com'),
(2, 'ART', 2, '2B', 'gladston.jafet@gmail.com'),
(2, 'ART', 2, '2C', 'gladston.jafet@gmail.com'),
(2, 'ART', 2, '3A', 'gladston.jafet@gmail.com'),
(2, 'ART', 2, '3B', 'gladston.jafet@gmail.com'),
(2, 'ART', 2, '3C', 'gladston.jafet@gmail.com'),
(2, 'ART', 2, '4A', 'gladston.jafet@gmail.com'),
(2, 'ART', 2, '4B', 'gladston.jafet@gmail.com'),
(2, 'ART', 2, '4C', 'gladston.jafet@gmail.com'),
(2, 'EDF', 2, '1A', 'gladston.jafet@gmail.com'),
(2, 'EDF', 2, '1B', 'gladston.jafet@gmail.com'),
(2, 'EDF', 2, '1C', 'gladston.jafet@gmail.com'),
(2, 'EDF', 2, '2A', 'gladston.jafet@gmail.com'),
(2, 'EDF', 2, '2B', 'gladston.jafet@gmail.com'),
(2, 'EDF', 2, '2C', 'gladston.jafet@gmail.com'),
(2, 'EDF', 2, '3A', 'gladston.jafet@gmail.com'),
(2, 'EDF', 2, '3B', 'gladston.jafet@gmail.com'),
(2, 'EDF', 2, '3C', 'gladston.jafet@gmail.com'),
(2, 'EDF', 2, '4A', 'gladston.jafet@gmail.com'),
(2, 'EDF', 2, '4B', 'gladston.jafet@gmail.com'),
(2, 'EDF', 2, '4C', 'gladston.jafet@gmail.com');

INSERT INTO aula VALUES
(33, 'NC', 1, '1A', 'guilherme.furlani@gmail.com'),
(33, 'NC', 1, '1B', 'guilherme.furlani@gmail.com'),
(33, 'NC', 1, '1C', 'guilherme.furlani@gmail.com'),
(33, 'NC', 1, '1D', 'guilherme.furlani@gmail.com'),
(33, 'NC', 1, '2A', 'guilherme.furlani@gmail.com'),
(33, 'NC', 1, '2B', 'guilherme.furlani@gmail.com'),
(33, 'NC', 1, '2C', 'guilherme.furlani@gmail.com'),
(33, 'NC', 1, '2D', 'guilherme.furlani@gmail.com'),
(33, 'NC', 1, '3A', 'guilherme.furlani@gmail.com'),
(33, 'NC', 1, '3B', 'guilherme.furlani@gmail.com'),
(33, 'NC', 1, '3C', 'guilherme.furlani@gmail.com'),
(33, 'NC', 1, '3D', 'guilherme.furlani@gmail.com'),
(2, 'ART', 2, '1A', 'guilherme.furlani@gmail.com'),
(2, 'ART', 2, '1B', 'guilherme.furlani@gmail.com'),
(2, 'ART', 2, '1C', 'guilherme.furlani@gmail.com'),
(2, 'ART', 2, '1D', 'guilherme.furlani@gmail.com'),
(2, 'ART', 2, '2A', 'guilherme.furlani@gmail.com'),
(2, 'ART', 2, '2B', 'guilherme.furlani@gmail.com'),
(2, 'ART', 2, '2C', 'guilherme.furlani@gmail.com'),
(2, 'ART', 2, '2D', 'guilherme.furlani@gmail.com'),
(2, 'ART', 2, '3A', 'guilherme.furlani@gmail.com'),
(2, 'ART', 2, '3B', 'guilherme.furlani@gmail.com'),
(2, 'ART', 2, '3C', 'guilherme.furlani@gmail.com'),
(2, 'ART', 2, '3D', 'guilherme.furlani@gmail.com'),
(2, 'EDF', 2, '1A', 'guilherme.furlani@gmail.com'),
(2, 'EDF', 2, '1B', 'guilherme.furlani@gmail.com'),
(2, 'EDF', 2, '1C', 'guilherme.furlani@gmail.com'),
(2, 'EDF', 2, '1D', 'guilherme.furlani@gmail.com'),
(2, 'EDF', 2, '2A', 'guilherme.furlani@gmail.com'),
(2, 'EDF', 2, '2B', 'guilherme.furlani@gmail.com'),
(2, 'EDF', 2, '2C', 'guilherme.furlani@gmail.com'),
(2, 'EDF', 2, '2D', 'guilherme.furlani@gmail.com'),
(2, 'EDF', 2, '3A', 'guilherme.furlani@gmail.com'),
(2, 'EDF', 2, '3B', 'guilherme.furlani@gmail.com'),
(2, 'EDF', 2, '3C', 'guilherme.furlani@gmail.com'),
(2, 'EDF', 2, '3D', 'guilherme.furlani@gmail.com');

INSERT INTO aula VALUES
(33, 'NC', 1, '1A', 'herbert.dow@gmail.com'),
(33, 'NC', 1, '1B', 'herbert.dow@gmail.com'),
(33, 'NC', 1, '1C', 'herbert.dow@gmail.com'),
(33, 'NC', 1, '1D', 'herbert.dow@gmail.com'),
(33, 'NC', 1, '1E', 'herbert.dow@gmail.com'),
(33, 'NC', 1, '2A', 'herbert.dow@gmail.com'),
(33, 'NC', 1, '2B', 'herbert.dow@gmail.com'),
(33, 'NC', 1, '2C', 'herbert.dow@gmail.com'),
(33, 'NC', 1, '2D', 'herbert.dow@gmail.com'),
(33, 'NC', 1, '2E', 'herbert.dow@gmail.com'),
(33, 'NC', 1, '3A', 'herbert.dow@gmail.com'),
(33, 'NC', 1, '3B', 'herbert.dow@gmail.com'),
(33, 'NC', 1, '3C', 'herbert.dow@gmail.com'),
(33, 'NC', 1, '3D', 'herbert.dow@gmail.com'),
(33, 'NC', 1, '3E', 'herbert.dow@gmail.com'),
(2, 'ART', 2, '1A', 'herbert.dow@gmail.com'),
(2, 'ART', 2, '1B', 'herbert.dow@gmail.com'),
(2, 'ART', 2, '1C', 'herbert.dow@gmail.com'),
(2, 'ART', 2, '1D', 'herbert.dow@gmail.com'),
(2, 'ART', 2, '1E', 'herbert.dow@gmail.com'),
(2, 'ART', 2, '2A', 'herbert.dow@gmail.com'),
(2, 'ART', 2, '2B', 'herbert.dow@gmail.com'),
(2, 'ART', 2, '2C', 'herbert.dow@gmail.com'),
(2, 'ART', 2, '2D', 'herbert.dow@gmail.com'),
(2, 'ART', 2, '2E', 'herbert.dow@gmail.com'),
(2, 'ART', 2, '3A', 'herbert.dow@gmail.com'),
(2, 'ART', 2, '3B', 'herbert.dow@gmail.com'),
(2, 'ART', 2, '3C', 'herbert.dow@gmail.com'),
(2, 'ART', 2, '3D', 'herbert.dow@gmail.com'),
(2, 'ART', 2, '3E', 'herbert.dow@gmail.com'),
(2, 'EDF', 2, '1A', 'herbert.dow@gmail.com'),
(2, 'EDF', 2, '1B', 'herbert.dow@gmail.com'),
(2, 'EDF', 2, '1C', 'herbert.dow@gmail.com'),
(2, 'EDF', 2, '1D', 'herbert.dow@gmail.com'),
(2, 'EDF', 2, '1E', 'herbert.dow@gmail.com'),
(2, 'EDF', 2, '2A', 'herbert.dow@gmail.com'),
(2, 'EDF', 2, '2B', 'herbert.dow@gmail.com'),
(2, 'EDF', 2, '2C', 'herbert.dow@gmail.com'),
(2, 'EDF', 2, '2D', 'herbert.dow@gmail.com'),
(2, 'EDF', 2, '2E', 'herbert.dow@gmail.com'),
(2, 'EDF', 2, '3A', 'herbert.dow@gmail.com'),
(2, 'EDF', 2, '3B', 'herbert.dow@gmail.com'),
(2, 'EDF', 2, '3C', 'herbert.dow@gmail.com'),
(2, 'EDF', 2, '3D', 'herbert.dow@gmail.com'),
(2, 'EDF', 2, '3E', 'herbert.dow@gmail.com');

INSERT INTO aula VALUES
(33, 'NC', 1, '1A', 'herminia.vitiello@gmail.com'), 
(33, 'NC', 1, '1B', 'herminia.vitiello@gmail.com'), 
(33, 'NC', 1, '1C', 'herminia.vitiello@gmail.com'), 
(33, 'NC', 1, '2A', 'herminia.vitiello@gmail.com'), 
(33, 'NC', 1, '2B', 'herminia.vitiello@gmail.com'), 
(33, 'NC', 1, '2C', 'herminia.vitiello@gmail.com'), 
(33, 'NC', 1, '3A', 'herminia.vitiello@gmail.com'), 
(33, 'NC', 1, '3B', 'herminia.vitiello@gmail.com'), 
(33, 'NC', 1, '3C', 'herminia.vitiello@gmail.com'), 
(2, 'ART', 2, '1A', 'herminia.vitiello@gmail.com'), 
(2, 'ART', 2, '1B', 'herminia.vitiello@gmail.com'), 
(2, 'ART', 2, '1C', 'herminia.vitiello@gmail.com'), 
(2, 'ART', 2, '2A', 'herminia.vitiello@gmail.com'), 
(2, 'ART', 2, '2B', 'herminia.vitiello@gmail.com'), 
(2, 'ART', 2, '2C', 'herminia.vitiello@gmail.com'), 
(2, 'ART', 2, '3A', 'herminia.vitiello@gmail.com'), 
(2, 'ART', 2, '3B', 'herminia.vitiello@gmail.com'), 
(2, 'ART', 2, '3C', 'herminia.vitiello@gmail.com'), 
(2, 'EDF', 2, '1A', 'herminia.vitiello@gmail.com'), 
(2, 'EDF', 2, '1B', 'herminia.vitiello@gmail.com'), 
(2, 'EDF', 2, '1C', 'herminia.vitiello@gmail.com'), 
(2, 'EDF', 2, '2A', 'herminia.vitiello@gmail.com'), 
(2, 'EDF', 2, '2B', 'herminia.vitiello@gmail.com'), 
(2, 'EDF', 2, '2C', 'herminia.vitiello@gmail.com');

INSERT INTO aula VALUES
(33, 'NC', 1, '1A', 'ivonete.camara@gmail.com'), 
(33, 'NC', 1, '1B', 'ivonete.camara@gmail.com'), 
(33, 'NC', 1, '1C', 'ivonete.camara@gmail.com'), 
(33, 'NC', 1, '2A', 'ivonete.camara@gmail.com'), 
(33, 'NC', 1, '2B', 'ivonete.camara@gmail.com'), 
(33, 'NC', 1, '2C', 'ivonete.camara@gmail.com'), 
(33, 'NC', 1, '3A', 'ivonete.camara@gmail.com'), 
(33, 'NC', 1, '3B', 'ivonete.camara@gmail.com'), 
(33, 'NC', 1, '3C', 'ivonete.camara@gmail.com'), 
(33, 'NC', 1, '3D', 'ivonete.camara@gmail.com'), 
(2, 'ART', 2, '1A', 'ivonete.camara@gmail.com'), 
(2, 'ART', 2, '1B', 'ivonete.camara@gmail.com'), 
(2, 'ART', 2, '1C', 'ivonete.camara@gmail.com'), 
(2, 'ART', 2, '1D', 'ivonete.camara@gmail.com'), 
(2, 'ART', 2, '2A', 'ivonete.camara@gmail.com'), 
(2, 'ART', 2, '2B', 'ivonete.camara@gmail.com'), 
(2, 'ART', 2, '2C', 'ivonete.camara@gmail.com'), 
(2, 'ART', 2, '2D', 'ivonete.camara@gmail.com'), 
(2, 'ART', 2, '3A', 'ivonete.camara@gmail.com'), 
(2, 'ART', 2, '3B', 'ivonete.camara@gmail.com'), 
(2, 'ART', 2, '3C', 'ivonete.camara@gmail.com'), 
(2, 'ART', 2, '3D', 'ivonete.camara@gmail.com'), 
(2, 'EDF', 2, '1A', 'ivonete.camara@gmail.com'), 
(2, 'EDF', 2, '1B', 'ivonete.camara@gmail.com'), 
(2, 'EDF', 2, '1C', 'ivonete.camara@gmail.com'), 
(2, 'EDF', 2, '1D', 'ivonete.camara@gmail.com'), 
(2, 'EDF', 2, '2A', 'ivonete.camara@gmail.com'), 
(2, 'EDF', 2, '2B', 'ivonete.camara@gmail.com'), 
(2, 'EDF', 2, '2C', 'ivonete.camara@gmail.com'), 
(2, 'EDF', 2, '2D', 'ivonete.camara@gmail.com'), 
(2, 'EDF', 2, '3A', 'ivonete.camara@gmail.com'), 
(2, 'EDF', 2, '3B', 'ivonete.camara@gmail.com'), 
(2, 'EDF', 2, '3C', 'ivonete.camara@gmail.com'), 
(2, 'EDF', 2, '3D', 'ivonete.camara@gmail.com');

INSERT INTO aula VALUES
(33, 'NC', 1, '1A', 'jacirema.fontes@gmail.com'), 
(33, 'NC', 1, '1B', 'jacirema.fontes@gmail.com'), 
(33, 'NC', 1, '1C', 'jacirema.fontes@gmail.com'), 
(33, 'NC', 1, '1D', 'jacirema.fontes@gmail.com'), 
(33, 'NC', 1, '2A', 'jacirema.fontes@gmail.com'), 
(33, 'NC', 1, '2B', 'jacirema.fontes@gmail.com'), 
(33, 'NC', 1, '2C', 'jacirema.fontes@gmail.com'), 
(33, 'NC', 1, '2D', 'jacirema.fontes@gmail.com'), 
(33, 'NC', 1, '3A', 'jacirema.fontes@gmail.com'), 
(33, 'NC', 1, '3B', 'jacirema.fontes@gmail.com'), 
(33, 'NC', 1, '3C', 'jacirema.fontes@gmail.com'), 
(33, 'NC', 1, '3D', 'jacirema.fontes@gmail.com'), 
(2, 'ART', 2, '1A', 'jacirema.fontes@gmail.com'), 
(2, 'ART', 2, '1B', 'jacirema.fontes@gmail.com'), 
(2, 'ART', 2, '1C', 'jacirema.fontes@gmail.com'), 
(2, 'ART', 2, '1D', 'jacirema.fontes@gmail.com'), 
(2, 'ART', 2, '2A', 'jacirema.fontes@gmail.com'), 
(2, 'ART', 2, '2B', 'jacirema.fontes@gmail.com'), 
(2, 'ART', 2, '2C', 'jacirema.fontes@gmail.com'), 
(2, 'ART', 2, '2D', 'jacirema.fontes@gmail.com'), 
(2, 'ART', 2, '3A', 'jacirema.fontes@gmail.com'), 
(2, 'ART', 2, '3B', 'jacirema.fontes@gmail.com'), 
(2, 'ART', 2, '3C', 'jacirema.fontes@gmail.com'), 
(2, 'ART', 2, '3D', 'jacirema.fontes@gmail.com'), 
(2, 'EDF', 2, '1A', 'jacirema.fontes@gmail.com'), 
(2, 'EDF', 2, '1B', 'jacirema.fontes@gmail.com'), 
(2, 'EDF', 2, '1C', 'jacirema.fontes@gmail.com'), 
(2, 'EDF', 2, '1D', 'jacirema.fontes@gmail.com'), 
(2, 'EDF', 2, '2A', 'jacirema.fontes@gmail.com'), 
(2, 'EDF', 2, '2B', 'jacirema.fontes@gmail.com'), 
(2, 'EDF', 2, '2C', 'jacirema.fontes@gmail.com'), 
(2, 'EDF', 2, '2D', 'jacirema.fontes@gmail.com'), 
(2, 'EDF', 2, '3A', 'jacirema.fontes@gmail.com'), 
(2, 'EDF', 2, '3B', 'jacirema.fontes@gmail.com'), 
(2, 'EDF', 2, '3C', 'jacirema.fontes@gmail.com'), 
(2, 'EDF', 2, '3D', 'jacirema.fontes@gmail.com');

-- Joao Oliveira
INSERT INTO aula VALUES
(33, 'NC', 1, '1A', 'joao.oliveira@gmail.com'), 
(33, 'NC', 1, '1B', 'joao.oliveira@gmail.com'), 
(33, 'NC', 1, '1C', 'joao.oliveira@gmail.com'), 
(33, 'NC', 1, '2A', 'joao.oliveira@gmail.com'), 
(33, 'NC', 1, '2B', 'joao.oliveira@gmail.com'), 
(33, 'NC', 1, '2C', 'joao.oliveira@gmail.com'), 
(33, 'NC', 1, '3A', 'joao.oliveira@gmail.com'), 
(33, 'NC', 1, '3B', 'joao.oliveira@gmail.com'), 
(33, 'NC', 1, '3C', 'joao.oliveira@gmail.com'), 
(2, 'ART', 2, '1A', 'joao.oliveira@gmail.com'), 
(2, 'ART', 2, '1B', 'joao.oliveira@gmail.com'), 
(2, 'ART', 2, '1C', 'joao.oliveira@gmail.com'), 
(2, 'ART', 2, '2A', 'joao.oliveira@gmail.com'), 
(2, 'ART', 2, '2B', 'joao.oliveira@gmail.com'), 
(2, 'ART', 2, '2C', 'joao.oliveira@gmail.com'), 
(2, 'ART', 2, '3A', 'joao.oliveira@gmail.com'), 
(2, 'ART', 2, '3B', 'joao.oliveira@gmail.com'), 
(2, 'ART', 2, '3C', 'joao.oliveira@gmail.com'), 
(2, 'EDF', 2, '1A', 'joao.oliveira@gmail.com'), 
(2, 'EDF', 2, '1B', 'joao.oliveira@gmail.com'), 
(2, 'EDF', 2, '1C', 'joao.oliveira@gmail.com'), 
(2, 'EDF', 2, '2A', 'joao.oliveira@gmail.com'), 
(2, 'EDF', 2, '2B', 'joao.oliveira@gmail.com'), 
(2, 'EDF', 2, '2C', 'joao.oliveira@gmail.com'), 
(2, 'EDF', 2, '3A', 'joao.oliveira@gmail.com'), 
(2, 'EDF', 2, '3B', 'joao.oliveira@gmail.com'), 
(2, 'EDF', 2, '3C', 'joao.oliveira@gmail.com');

-- Jose Souza
INSERT INTO aula VALUES
(33, 'NC', 1, '1A', 'jose.souza@gmail.com'), 
(33, 'NC', 1, '1B', 'jose.souza@gmail.com'), 
(33, 'NC', 1, '2A', 'jose.souza@gmail.com'), 
(33, 'NC', 1, '2B', 'jose.souza@gmail.com'), 
(33, 'NC', 1, '3A', 'jose.souza@gmail.com'), 
(33, 'NC', 1, '3B', 'jose.souza@gmail.com'), 
(2, 'ART', 2, '1A', 'jose.souza@gmail.com'), 
(2, 'ART', 2, '1B', 'jose.souza@gmail.com'), 
(2, 'ART', 2, '2A', 'jose.souza@gmail.com'), 
(2, 'ART', 2, '2B', 'jose.souza@gmail.com'), 
(2, 'ART', 2, '3A', 'jose.souza@gmail.com'), 
(2, 'ART', 2, '3B', 'jose.souza@gmail.com'), 
(2, 'EDF', 2, '1A', 'jose.souza@gmail.com'), 
(2, 'EDF', 2, '1B', 'jose.souza@gmail.com'), 
(2, 'EDF', 2, '2A', 'jose.souza@gmail.com'), 
(2, 'EDF', 2, '2B', 'jose.souza@gmail.com'), 
(2, 'EDF', 2, '3A', 'jose.souza@gmail.com'), 
(2, 'EDF', 2, '3B', 'jose.souza@gmail.com');

-- Magdalena Lourenco
INSERT INTO aula VALUES
(33, 'NC', 1, '1A', 'magdalena.lourenco@gmail.com'), 
(33, 'NC', 1, '1B', 'magdalena.lourenco@gmail.com'), 
(33, 'NC', 1, '1C', 'magdalena.lourenco@gmail.com'), 
(33, 'NC', 1, '1D', 'magdalena.lourenco@gmail.com'), 
(33, 'NC', 1, '2A', 'magdalena.lourenco@gmail.com'), 
(33, 'NC', 1, '2B', 'magdalena.lourenco@gmail.com'), 
(33, 'NC', 1, '2C', 'magdalena.lourenco@gmail.com'), 
(33, 'NC', 1, '2D', 'magdalena.lourenco@gmail.com'), 
(2, 'ART', 2, '1A', 'magdalena.lourenco@gmail.com'), 
(2, 'ART', 2, '1B', 'magdalena.lourenco@gmail.com'), 
(2, 'ART', 2, '1C', 'magdalena.lourenco@gmail.com'), 
(2, 'ART', 2, '1D', 'magdalena.lourenco@gmail.com'), 
(2, 'ART', 2, '2A', 'magdalena.lourenco@gmail.com'), 
(2, 'ART', 2, '2B', 'magdalena.lourenco@gmail.com'), 
(2, 'ART', 2, '2C', 'magdalena.lourenco@gmail.com'), 
(2, 'ART', 2, '2D', 'magdalena.lourenco@gmail.com'), 
(2, 'EDF', 2, '1A', 'magdalena.lourenco@gmail.com'), 
(2, 'EDF', 2, '1B', 'magdalena.lourenco@gmail.com'), 
(2, 'EDF', 2, '1C', 'magdalena.lourenco@gmail.com'), 
(2, 'EDF', 2, '1D', 'magdalena.lourenco@gmail.com'),
(2, 'EDF', 2, '2A', 'magdalena.lourenco@gmail.com'), 
(2, 'EDF', 2, '2B', 'magdalena.lourenco@gmail.com'), 
(2, 'EDF', 2, '2C', 'magdalena.lourenco@gmail.com'), 
(2, 'EDF', 2, '2D', 'magdalena.lourenco@gmail.com');

-- MARIA EUNICE
INSERT INTO aula VALUES
(33, 'NC', 1, '1A', 'maria.eunice@gmail.com'), 
(33, 'NC', 1, '1B', 'maria.eunice@gmail.com'), 
(33, 'NC', 1, '1C', 'maria.eunice@gmail.com'), 
(33, 'NC', 1, '1D', 'maria.eunice@gmail.com'), 
(33, 'NC', 1, '2A', 'maria.eunice@gmail.com'), 
(33, 'NC', 1, '2B', 'maria.eunice@gmail.com'), 
(33, 'NC', 1, '2C', 'maria.eunice@gmail.com'), 
(33, 'NC', 1, '2D', 'maria.eunice@gmail.com'), 
(2, 'ART', 2, '1A', 'maria.eunice@gmail.com'), 
(2, 'ART', 2, '1B', 'maria.eunice@gmail.com'), 
(2, 'ART', 2, '1C', 'maria.eunice@gmail.com'), 
(2, 'ART', 2, '1D', 'maria.eunice@gmail.com'), 
(2, 'ART', 2, '2A', 'maria.eunice@gmail.com'), 
(2, 'ART', 2, '2B', 'maria.eunice@gmail.com'), 
(2, 'ART', 2, '2C', 'maria.eunice@gmail.com'), 
(2, 'ART', 2, '2D', 'maria.eunice@gmail.com'), 
(2, 'EDF', 2, '1A', 'maria.eunice@gmail.com'), 
(2, 'EDF', 2, '1B', 'maria.eunice@gmail.com'), 
(2, 'EDF', 2, '1C', 'maria.eunice@gmail.com'), 
(2, 'EDF', 2, '1D', 'maria.eunice@gmail.com'), 
(2, 'EDF', 2, '2A', 'maria.eunice@gmail.com'), 
(2, 'EDF', 2, '2B', 'maria.eunice@gmail.com'), 
(2, 'EDF', 2, '2C', 'maria.eunice@gmail.com'), 
(2, 'EDF', 2, '2D', 'maria.eunice@gmail.com');

-- Maria Lourdes
INSERT INTO aula VALUES
(33, 'NC', 1, '1A', 'maria.lourdes@gmail.com'), 
(33, 'NC', 1, '1B', 'maria.lourdes@gmail.com'), 
(33, 'NC', 1, '1C', 'maria.lourdes@gmail.com'), 
(33, 'NC', 1, '2A', 'maria.lourdes@gmail.com'), 
(33, 'NC', 1, '2B', 'maria.lourdes@gmail.com'), 
(33, 'NC', 1, '2C', 'maria.lourdes@gmail.com'), 
(2, 'ART', 2, '1A', 'maria.lourdes@gmail.com'), 
(2, 'ART', 2, '1B', 'maria.lourdes@gmail.com'), 
(2, 'ART', 2, '1C', 'maria.lourdes@gmail.com'), 
(2, 'ART', 2, '2A', 'maria.lourdes@gmail.com'), 
(2, 'ART', 2, '2B', 'maria.lourdes@gmail.com'), 
(2, 'ART', 2, '2C', 'maria.lourdes@gmail.com'), 
(2, 'EDF', 2, '1A', 'maria.lourdes@gmail.com'), 
(2, 'EDF', 2, '1B', 'maria.lourdes@gmail.com'), 
(2, 'EDF', 2, '1C', 'maria.lourdes@gmail.com'), 
(2, 'EDF', 2, '2A', 'maria.lourdes@gmail.com'), 
(2, 'EDF', 2, '2B', 'maria.lourdes@gmail.com'), 
(2, 'EDF', 2, '2C', 'maria.lourdes@gmail.com');

-- Maria Teixeira
INSERT INTO aula VALUES
(33, 'NC', 1, '1A', 'maria.teixeira@gmail.com'), 
(33, 'NC', 1, '1B', 'maria.teixeira@gmail.com'), 
(33, 'NC', 1, '2A', 'maria.teixeira@gmail.com'), 
(33, 'NC', 1, '2B', 'maria.teixeira@gmail.com'), 
(2, 'ART', 2, '1A', 'maria.teixeira@gmail.com'), 
(2, 'ART', 2, '1B', 'maria.teixeira@gmail.com'), 
(2, 'ART', 2, '2A', 'maria.teixeira@gmail.com'), 
(2, 'ART', 2, '2B', 'maria.teixeira@gmail.com'), 
(2, 'EDF', 2, '1A', 'maria.teixeira@gmail.com'), 
(2, 'EDF', 2, '1B', 'maria.teixeira@gmail.com'), 
(2, 'EDF', 2, '2A', 'maria.teixeira@gmail.com'), 
(2, 'EDF', 2, '2B', 'maria.teixeira@gmail.com');

-- MARINA DAIGE
INSERT INTO aula VALUES
(33, 'NC', 1, '1A', 'marina.daige@gmail.com'), 
(33, 'NC', 1, '2A', 'marina.daige@gmail.com'), 
(2, 'ART', 2, '1A', 'marina.daige@gmail.com'), 
(2, 'ART', 2, '2A', 'marina.daige@gmail.com'), 
(2, 'EDF', 2, '1A', 'marina.daige@gmail.com'), 
(2, 'EDF', 2, '2A', 'marina.daige@gmail.com');


-- Mario Leite
INSERT INTO aula VALUES
(33, 'NC', 1, '1A', 'mario.leite@gmail.com'), 
(33, 'NC', 1, '2A', 'mario.leite@gmail.com'), 
(2, 'ART', 2, '1A', 'mario.leite@gmail.com'), 
(2, 'ART', 2, '2A', 'mario.leite@gmail.com'), 
(2, 'EDF', 2, '1A', 'mario.leite@gmail.com'), 
(2, 'EDF', 2, '2A', 'mario.leite@gmail.com');

-- Myrian Millborn
INSERT INTO aula VALUES
(33, 'NC', 1, '1A', 'myrian.millborn@gmail.com'), 
(33, 'NC', 1, '1B', 'myrian.millborn@gmail.com'), 
(33, 'NC', 1, '1C', 'myrian.millborn@gmail.com'), 
(33, 'NC', 1, '1D', 'myrian.millborn@gmail.com'), 
(33, 'NC', 1, '1E', 'myrian.millborn@gmail.com'), 
(2, 'ART', 2, '1A', 'myrian.millborn@gmail.com'), 
(2, 'ART', 2, '1B', 'myrian.millborn@gmail.com'), 
(2, 'ART', 2, '1C', 'myrian.millborn@gmail.com'), 
(2, 'ART', 2, '1D', 'myrian.millborn@gmail.com'), 
(2, 'ART', 2, '1E', 'myrian.millborn@gmail.com'), 
(2, 'EDF', 2, '1A', 'myrian.millborn@gmail.com'), 
(2, 'EDF', 2, '1B', 'myrian.millborn@gmail.com'), 
(2, 'EDF', 2, '1C', 'myrian.millborn@gmail.com'), 
(2, 'EDF', 2, '1D', 'myrian.millborn@gmail.com'), 
(2, 'EDF', 2, '1E', 'myrian.millborn@gmail.com');

-- Napoleao Rodrigues
INSERT INTO aula VALUES
(33, 'NC', 1, '1A', 'napoleao.rodrigues@gmail.com'), 
(33, 'NC', 1, '1B', 'napoleao.rodrigues@gmail.com'), 
(33, 'NC', 1, '1C', 'napoleao.rodrigues@gmail.com'), 
(33, 'NC', 1, '1D', 'napoleao.rodrigues@gmail.com'), 
(33, 'NC', 1, '1E', 'napoleao.rodrigues@gmail.com'), 
(2, 'ART', 2, '1A', 'napoleao.rodrigues@gmail.com'), 
(2, 'ART', 2, '1B', 'napoleao.rodrigues@gmail.com'), 
(2, 'ART', 2, '1C', 'napoleao.rodrigues@gmail.com'), 
(2, 'ART', 2, '1D', 'napoleao.rodrigues@gmail.com'), 
(2, 'ART', 2, '1E', 'napoleao.rodrigues@gmail.com'), 
(2, 'EDF', 2, '1A', 'napoleao.rodrigues@gmail.com'), 
(2, 'EDF', 2, '1B', 'napoleao.rodrigues@gmail.com'),
(2, 'EDF', 2, '1C', 'napoleao.rodrigues@gmail.com'), 
(2, 'EDF', 2, '1D', 'napoleao.rodrigues@gmail.com'), 
(2, 'EDF', 2, '1E', 'napoleao.rodrigues@gmail.com');

-- Oswaldo Cruz
INSERT INTO aula VALUES
(33, 'NC', 1, '1A', 'oswaldo.cruz@gmail.com'), 
(33, 'NC', 1, '1B', 'oswaldo.cruz@gmail.com'), 
(33, 'NC', 1, '1C', 'oswaldo.cruz@gmail.com'), 
(33, 'NC', 1, '1D', 'oswaldo.cruz@gmail.com'), 
(33, 'NC', 1, '1E', 'oswaldo.cruz@gmail.com'), 
(2, 'ART', 2, '1A', 'oswaldo.cruz@gmail.com'), 
(2, 'ART', 2, '1B', 'oswaldo.cruz@gmail.com'), 
(2, 'ART', 2, '1C', 'oswaldo.cruz@gmail.com'), 
(2, 'ART', 2, '1D', 'oswaldo.cruz@gmail.com'), 
(2, 'ART', 2, '1E', 'oswaldo.cruz@gmail.com'), 
(2, 'EDF', 2, '1A', 'oswaldo.cruz@gmail.com'), 
(2, 'EDF', 2, '1B', 'oswaldo.cruz@gmail.com'), 
(2, 'EDF', 2, '1C', 'oswaldo.cruz@gmail.com'), 
(2, 'EDF', 2, '1D', 'oswaldo.cruz@gmail.com'), 
(2, 'EDF', 2, '1E', 'oswaldo.cruz@gmail.com');

-- PAULO FREIRE
INSERT INTO aula VALUES
(33, 'NC', 1, '1A', 'paulo.freire@gmail.com'), 
(33, 'NC', 1, '1B', 'paulo.freire@gmail.com'), 
(33, 'NC', 1, '1C', 'paulo.freire@gmail.com'), 
(33, 'NC', 1, '1D', 'paulo.freire@gmail.com'), 
(33, 'NC', 1, '1E', 'paulo.freire@gmail.com'), 
(2, 'ART', 2, '1A', 'paulo.freire@gmail.com'), 
(2, 'ART', 2, '1B', 'paulo.freire@gmail.com'), 
(2, 'ART', 2, '1C', 'paulo.freire@gmail.com'), 
(2, 'ART', 2, '1D', 'paulo.freire@gmail.com'), 
(2, 'ART', 2, '1E', 'paulo.freire@gmail.com'), 
(2, 'EDF', 2, '1A', 'paulo.freire@gmail.com'), 
(2, 'EDF', 2, '1B', 'paulo.freire@gmail.com'), 
(2, 'EDF', 2, '1C', 'paulo.freire@gmail.com'), 
(2, 'EDF', 2, '1D', 'paulo.freire@gmail.com'), 
(2, 'EDF', 2, '1E', 'paulo.freire@gmail.com');

-- PHILOMENA
INSERT INTO aula VALUES
(33, 'NC', 1, '1A', 'philomena.cardoso@gmail.com'), 
(33, 'NC', 1, '1B', 'philomena.cardoso@gmail.com'), 
(33, 'NC', 1, '1C', 'philomena.cardoso@gmail.com'), 
(33, 'NC', 1, '1D', 'philomena.cardoso@gmail.com'), 
(2, 'ART', 2, '1A', 'philomena.cardoso@gmail.com'), 
(2, 'ART', 2, '1B', 'philomena.cardoso@gmail.com'), 
(2, 'ART', 2, '1C', 'philomena.cardoso@gmail.com'), 
(2, 'ART', 2, '1D', 'philomena.cardoso@gmail.com'), 
(2, 'EDF', 2, '1A', 'philomena.cardoso@gmail.com'), 
(2, 'EDF', 2, '1B', 'philomena.cardoso@gmail.com'), 
(2, 'EDF', 2, '1C', 'philomena.cardoso@gmail.com'), 
(2, 'EDF', 2, '1D', 'philomena.cardoso@gmail.com');

-- SAMUEL FRANCO
INSERT INTO aula VALUES
(33, 'NC', 1, '1A', 'samuel.franco@gmail.com'), 
(33, 'NC', 1, '1B', 'samuel.franco@gmail.com'), 
(2, 'ART', 2, '1A', 'samuel.franco@gmail.com'), 
(2, 'ART', 2, '1B', 'samuel.franco@gmail.com'), 
(2, 'EDF', 2, '1A', 'samuel.franco@gmail.com'), 
(2, 'EDF', 2, '1B', 'samuel.franco@gmail.com');

-- Sergio Rodrigues
INSERT INTO aula VALUES
(33, 'NC', 1, '1A', 'sergio.rodrigues@gmail.com'), 
(2, 'ART', 2, '1A', 'sergio.rodrigues@gmail.com'), 
(2, 'EDF', 2, '1A', 'sergio.rodrigues@gmail.com');

-- Valeria Vieira
INSERT INTO aula VALUES
(33, 'NC', 1, '1A', 'valeria.vieira@gmail.com'), 
(2, 'ART', 2, '1A', 'valeria.vieira@gmail.com'), 
(2, 'EDF', 2, '1A', 'valeria.vieira@gmail.com');

-- Vereador Ernesto
INSERT INTO aula VALUES
(33, 'NC', 1, '1A', 'vereador.ernesto@gmail.com'), 
(33, 'NC', 1, '1B', 'vereador.ernesto@gmail.com'), 
(33, 'NC', 1, '1C', 'vereador.ernesto@gmail.com'), 
(33, 'NC', 1, '1D', 'vereador.ernesto@gmail.com'), 
(33, 'NC', 1, '2A', 'vereador.ernesto@gmail.com'), 
(33, 'NC', 1, '2B', 'vereador.ernesto@gmail.com'), 
(33, 'NC', 1, '2C', 'vereador.ernesto@gmail.com'), 
(33, 'NC', 1, '2D', 'vereador.ernesto@gmail.com'), 
(33, 'NC', 1, '3A', 'vereador.ernesto@gmail.com'), 
(33, 'NC', 1, '3B', 'vereador.ernesto@gmail.com'), 
(33, 'NC', 1, '3C', 'vereador.ernesto@gmail.com'), 
(33, 'NC', 1, '3D', 'vereador.ernesto@gmail.com'), 
(33, 'NC', 1, '4A', 'vereador.ernesto@gmail.com'), 
(33, 'NC', 1, '4B', 'vereador.ernesto@gmail.com'), 
(33, 'NC', 1, '4C', 'vereador.ernesto@gmail.com'), 
(33, 'NC', 1, '4D', 'vereador.ernesto@gmail.com'), 
(2, 'ART', 2, '1A', 'vereador.ernesto@gmail.com'), 
(2, 'ART', 2, '1B', 'vereador.ernesto@gmail.com'), 
(2, 'ART', 2, '1C', 'vereador.ernesto@gmail.com'), 
(2, 'ART', 2, '1D', 'vereador.ernesto@gmail.com'), 
(2, 'ART', 2, '2A', 'vereador.ernesto@gmail.com'), 
(2, 'ART', 2, '2B', 'vereador.ernesto@gmail.com'), 
(2, 'ART', 2, '2C', 'vereador.ernesto@gmail.com'), 
(2, 'ART', 2, '2D', 'vereador.ernesto@gmail.com'), 
(2, 'ART', 2, '3A', 'vereador.ernesto@gmail.com'), 
(2, 'ART', 2, '3B', 'vereador.ernesto@gmail.com'), 
(2, 'ART', 2, '3C', 'vereador.ernesto@gmail.com'), 
(2, 'ART', 2, '3D', 'vereador.ernesto@gmail.com'), 
(2, 'ART', 2, '4A', 'vereador.ernesto@gmail.com'), 
(2, 'ART', 2, '4B', 'vereador.ernesto@gmail.com'), 
(2, 'ART', 2, '4C', 'vereador.ernesto@gmail.com'), 
(2, 'ART', 2, '4D', 'vereador.ernesto@gmail.com'), 
(2, 'EDF', 2, '1A', 'vereador.ernesto@gmail.com'), 
(2, 'EDF', 2, '1B', 'vereador.ernesto@gmail.com'), 
(2, 'EDF', 2, '1C', 'vereador.ernesto@gmail.com'), 
(2, 'EDF', 2, '1D', 'vereador.ernesto@gmail.com'), 
(2, 'EDF', 2, '2A', 'vereador.ernesto@gmail.com'), 
(2, 'EDF', 2, '2B', 'vereador.ernesto@gmail.com'), 
(2, 'EDF', 2, '2C', 'vereador.ernesto@gmail.com'), 
(2, 'EDF', 2, '2D', 'vereador.ernesto@gmail.com'), 
(2, 'EDF', 2, '3A', 'vereador.ernesto@gmail.com'), 
(2, 'EDF', 2, '3B', 'vereador.ernesto@gmail.com'), 
(2, 'EDF', 2, '3C', 'vereador.ernesto@gmail.com'), 
(2, 'EDF', 2, '3D', 'vereador.ernesto@gmail.com'), 
(2, 'EDF', 2, '4A', 'vereador.ernesto@gmail.com'), 
(2, 'EDF', 2, '4B', 'vereador.ernesto@gmail.com'), 
(2, 'EDF', 2, '4C', 'vereador.ernesto@gmail.com'), 
(2, 'EDF', 2, '4D', 'vereador.ernesto@gmail.com');

-- Vicentina Valle
INSERT INTO aula VALUES
(33, 'NC', 1, '1A', 'vicentina.valle@gmail.com'), 
(33, 'NC', 1, '1B', 'vicentina.valle@gmail.com'), 
(33, 'NC', 1, '1C', 'vicentina.valle@gmail.com'), 
(33, 'NC', 1, '1D', 'vicentina.valle@gmail.com'), 
(33, 'NC', 1, '1E', 'vicentina.valle@gmail.com'), 
(33, 'NC', 1, '2A', 'vicentina.valle@gmail.com'), 
(33, 'NC', 1, '2B', 'vicentina.valle@gmail.com'), 
(33, 'NC', 1, '2C', 'vicentina.valle@gmail.com'), 
(33, 'NC', 1, '2D', 'vicentina.valle@gmail.com'), 
(33, 'NC', 1, '2E', 'vicentina.valle@gmail.com'), 
(33, 'NC', 1, '3A', 'vicentina.valle@gmail.com'), 
(33, 'NC', 1, '3B', 'vicentina.valle@gmail.com'), 
(33, 'NC', 1, '3C', 'vicentina.valle@gmail.com'), 
(33, 'NC', 1, '3D', 'vicentina.valle@gmail.com'),
(33, 'NC', 1, '3E', 'vicentina.valle@gmail.com'), 
(2, 'ART', 2, '1A', 'vicentina.valle@gmail.com'), 
(2, 'ART', 2, '1B', 'vicentina.valle@gmail.com'), 
(2, 'ART', 2, '1C', 'vicentina.valle@gmail.com'), 
(2, 'ART', 2, '1D', 'vicentina.valle@gmail.com'), 
(2, 'ART', 2, '1E', 'vicentina.valle@gmail.com'), 
(2, 'ART', 2, '2A', 'vicentina.valle@gmail.com'), 
(2, 'ART', 2, '2B', 'vicentina.valle@gmail.com'), 
(2, 'ART', 2, '2C', 'vicentina.valle@gmail.com'), 
(2, 'ART', 2, '2D', 'vicentina.valle@gmail.com'), 
(2, 'ART', 2, '2E', 'vicentina.valle@gmail.com'), 
(2, 'ART', 2, '3A', 'vicentina.valle@gmail.com'), 
(2, 'ART', 2, '3B', 'vicentina.valle@gmail.com'), 
(2, 'ART', 2, '3C', 'vicentina.valle@gmail.com'), 
(2, 'ART', 2, '3D', 'vicentina.valle@gmail.com'), 
(2, 'ART', 2, '3E', 'vicentina.valle@gmail.com'), 
(2, 'EDF', 2, '1A', 'vicentina.valle@gmail.com'), 
(2, 'EDF', 2, '1B', 'vicentina.valle@gmail.com'), 
(2, 'EDF', 2, '1C', 'vicentina.valle@gmail.com'), 
(2, 'EDF', 2, '1D', 'vicentina.valle@gmail.com'), 
(2, 'EDF', 2, '1E', 'vicentina.valle@gmail.com'), 
(2, 'EDF', 2, '2A', 'vicentina.valle@gmail.com'), 
(2, 'EDF', 2, '2B', 'vicentina.valle@gmail.com'), 
(2, 'EDF', 2, '2C', 'vicentina.valle@gmail.com'), 
(2, 'EDF', 2, '2D', 'vicentina.valle@gmail.com'), 
(2, 'EDF', 2, '2E', 'vicentina.valle@gmail.com'), 
(2, 'EDF', 2, '3A', 'vicentina.valle@gmail.com'), 
(2, 'EDF', 2, '3B', 'vicentina.valle@gmail.com'), 
(2, 'EDF', 2, '3C', 'vicentina.valle@gmail.com'),
(2, 'EDF', 2, '3D', 'vicentina.valle@gmail.com'),
(2, 'EDF', 2, '3E', 'vicentina.valle@gmail.com'); 

INSERT INTO aula VALUES
-- Ary Souza
(2, 'ART', 2, '6A', 'ary.souza@gmail.com'),
(4, 'CIEN', 2, '6A', 'ary.souza@gmail.com'),
(2, 'EDF', 2, '6A', 'ary.souza@gmail.com'),
(3, 'GEO', 2, '6A', 'ary.souza@gmail.com'),
(3, 'HIST', 2, '6A', 'ary.souza@gmail.com'),
(2, 'ING', 2, '6A', 'ary.souza@gmail.com'),
(5, 'MAT', 2, '6A', 'ary.souza@gmail.com'),
(6, 'PORT', 2, '6A', 'ary.souza@gmail.com'),
(2, 'ART', 2, '6B', 'ary.souza@gmail.com'),
(4, 'CIEN', 2, '6B', 'ary.souza@gmail.com'),
(2, 'EDF', 2, '6B', 'ary.souza@gmail.com'),
(3, 'GEO', 2, '6B', 'ary.souza@gmail.com'),
(3, 'HIST', 2, '6B', 'ary.souza@gmail.com'),
(2, 'ING', 2, '6B', 'ary.souza@gmail.com'),
(5, 'MAT', 2, '6B', 'ary.souza@gmail.com'),
(6, 'PORT', 2, '6B', 'ary.souza@gmail.com'),
(2, 'ART', 2, '6C', 'ary.souza@gmail.com'),
(4, 'CIEN', 2, '6C', 'ary.souza@gmail.com'),
(2, 'EDF', 2, '6C', 'ary.souza@gmail.com'),
(3, 'GEO', 2, '6C', 'ary.souza@gmail.com'),
(3, 'HIST', 2, '6C', 'ary.souza@gmail.com'),
(2, 'ING', 2, '6C', 'ary.souza@gmail.com'),
(5, 'MAT', 2, '6C', 'ary.souza@gmail.com'),
(6, 'PORT', 2, '6C', 'ary.souza@gmail.com'),
(2, 'ART', 2, '6D', 'ary.souza@gmail.com'),
(4, 'CIEN', 2, '6D', 'ary.souza@gmail.com'),
(2, 'EDF', 2, '6D', 'ary.souza@gmail.com'),
(3, 'GEO', 2, '6D', 'ary.souza@gmail.com'),
(3, 'HIST', 2, '6D', 'ary.souza@gmail.com'),
(2, 'ING', 2, '6D', 'ary.souza@gmail.com'),
(5, 'MAT', 2, '6D', 'ary.souza@gmail.com'),
(6, 'PORT', 2, '6D', 'ary.souza@gmail.com'),
(2, 'ART', 2, '6E', 'ary.souza@gmail.com'),
(4, 'CIEN', 2, '6E', 'ary.souza@gmail.com'),
(2, 'EDF', 2, '6E', 'ary.souza@gmail.com'),
(3, 'GEO', 2, '6E', 'ary.souza@gmail.com'),
(3, 'HIST', 2, '6E', 'ary.souza@gmail.com'),
(2, 'ING', 2, '6E', 'ary.souza@gmail.com'),
(5, 'MAT', 2, '6E', 'ary.souza@gmail.com'),
(6, 'PORT', 2, '6E', 'ary.souza@gmail.com'),

(2, 'ART', 2, '7A', 'ary.souza@gmail.com'),
(4, 'CIEN', 2, '7A', 'ary.souza@gmail.com'),
(2, 'EDF', 2, '7A', 'ary.souza@gmail.com'),
(3, 'GEO', 2, '7A', 'ary.souza@gmail.com'),
(3, 'HIST', 2, '7A', 'ary.souza@gmail.com'),
(2, 'ING', 2, '7A', 'ary.souza@gmail.com'),
(5, 'MAT', 2, '7A', 'ary.souza@gmail.com'),
(6, 'PORT', 2, '7A', 'ary.souza@gmail.com'),
(2, 'ART', 2, '7B', 'ary.souza@gmail.com'),
(4, 'CIEN', 2, '7B', 'ary.souza@gmail.com'),
(2, 'EDF', 2, '7B', 'ary.souza@gmail.com'),
(3, 'GEO', 2, '7B', 'ary.souza@gmail.com'),
(3, 'HIST', 2, '7B', 'ary.souza@gmail.com'),
(2, 'ING', 2, '7B', 'ary.souza@gmail.com'),
(5, 'MAT', 2, '7B', 'ary.souza@gmail.com'),
(6, 'PORT', 2, '7B', 'ary.souza@gmail.com'),
(2, 'ART', 2, '7C', 'ary.souza@gmail.com'),
(4, 'CIEN', 2, '7C', 'ary.souza@gmail.com'),
(2, 'EDF', 2, '7C', 'ary.souza@gmail.com'),
(3, 'GEO', 2, '7C', 'ary.souza@gmail.com'),
(3, 'HIST', 2, '7C', 'ary.souza@gmail.com'),
(2, 'ING', 2, '7C', 'ary.souza@gmail.com'),
(5, 'MAT', 2, '7C', 'ary.souza@gmail.com'),
(6, 'PORT', 2, '7C', 'ary.souza@gmail.com'),
(2, 'ART', 2, '7D', 'ary.souza@gmail.com'),
(4, 'CIEN', 2, '7D', 'ary.souza@gmail.com'),
(2, 'EDF', 2, '7D', 'ary.souza@gmail.com'),
(3, 'GEO', 2, '7D', 'ary.souza@gmail.com'),
(3, 'HIST', 2, '7D', 'ary.souza@gmail.com'),
(2, 'ING', 2, '7D', 'ary.souza@gmail.com'),
(5, 'MAT', 2, '7D', 'ary.souza@gmail.com'),
(6, 'PORT', 2, '7D', 'ary.souza@gmail.com'),
(2, 'ART', 2, '7E', 'ary.souza@gmail.com'),
(4, 'CIEN', 2, '7E', 'ary.souza@gmail.com'),
(2, 'EDF', 2, '7E', 'ary.souza@gmail.com'),
(3, 'GEO', 2, '7E', 'ary.souza@gmail.com'),
(3, 'HIST', 2, '7E', 'ary.souza@gmail.com'),
(2, 'ING', 2, '7E', 'ary.souza@gmail.com'),
(5, 'MAT', 2, '7E', 'ary.souza@gmail.com'),
(6, 'PORT', 2, '7E', 'ary.souza@gmail.com'),

(2, 'ART', 2, '8A', 'ary.souza@gmail.com'),
(4, 'CIEN', 2, '8A', 'ary.souza@gmail.com'),
(2, 'EDF', 2, '8A', 'ary.souza@gmail.com'),
(3, 'GEO', 2, '8A', 'ary.souza@gmail.com'),
(3, 'HIST', 2, '8A', 'ary.souza@gmail.com'),
(2, 'ING', 2, '8A', 'ary.souza@gmail.com'),
(5, 'MAT', 2, '8A', 'ary.souza@gmail.com'),
(6, 'PORT', 2, '8A', 'ary.souza@gmail.com'),
(2, 'ART', 2, '8B', 'ary.souza@gmail.com'),
(4, 'CIEN', 2, '8B', 'ary.souza@gmail.com'),
(2, 'EDF', 2, '8B', 'ary.souza@gmail.com'),
(3, 'GEO', 2, '8B', 'ary.souza@gmail.com'),
(3, 'HIST', 2, '8B', 'ary.souza@gmail.com'),
(2, 'ING', 2, '8B', 'ary.souza@gmail.com'),
(5, 'MAT', 2, '8B', 'ary.souza@gmail.com'),
(6, 'PORT', 2, '8B', 'ary.souza@gmail.com'),
(2, 'ART', 2, '8C', 'ary.souza@gmail.com'),
(4, 'CIEN', 2, '8C', 'ary.souza@gmail.com'),
(2, 'EDF', 2, '8C', 'ary.souza@gmail.com'),
(3, 'GEO', 2, '8C', 'ary.souza@gmail.com'),
(3, 'HIST', 2, '8C', 'ary.souza@gmail.com'),
(2, 'ING', 2, '8C', 'ary.souza@gmail.com'),
(5, 'MAT', 2, '8C', 'ary.souza@gmail.com'),
(6, 'PORT', 2, '8C', 'ary.souza@gmail.com'),
(2, 'ART', 2, '8D', 'ary.souza@gmail.com'),
(4, 'CIEN', 2, '8D', 'ary.souza@gmail.com'),
(2, 'EDF', 2, '8D', 'ary.souza@gmail.com'),
(3, 'GEO', 2, '8D', 'ary.souza@gmail.com'),
(3, 'HIST', 2, '8D', 'ary.souza@gmail.com'),
(2, 'ING', 2, '8D', 'ary.souza@gmail.com'),
(5, 'MAT', 2, '8D', 'ary.souza@gmail.com'),
(6, 'PORT', 2, '8D', 'ary.souza@gmail.com'),
(2, 'ART', 2, '8E', 'ary.souza@gmail.com'),
(4, 'CIEN', 2, '8E', 'ary.souza@gmail.com'),
(2, 'EDF', 2, '8E', 'ary.souza@gmail.com'),
(3, 'GEO', 2, '8E', 'ary.souza@gmail.com'),
(3, 'HIST', 2, '8E', 'ary.souza@gmail.com'),
(2, 'ING', 2, '8E', 'ary.souza@gmail.com'),
(5, 'MAT', 2, '8E', 'ary.souza@gmail.com'),
(6, 'PORT', 2, '8E', 'ary.souza@gmail.com'),

(2, 'ART', 2, '9A', 'ary.souza@gmail.com'),
(4, 'CIEN', 2, '9A', 'ary.souza@gmail.com'),
(2, 'EDF', 2, '9A', 'ary.souza@gmail.com'),
(3, 'GEO', 2, '9A', 'ary.souza@gmail.com'),
(3, 'HIST', 2, '9A', 'ary.souza@gmail.com'),
(2, 'ING', 2, '9A', 'ary.souza@gmail.com'),
(5, 'MAT', 2, '9A', 'ary.souza@gmail.com'),
(6, 'PORT', 2, '9A', 'ary.souza@gmail.com'),
(2, 'ART', 2, '9B', 'ary.souza@gmail.com'),
(4, 'CIEN', 2, '9B', 'ary.souza@gmail.com'),
(2, 'EDF', 2, '9B', 'ary.souza@gmail.com'),
(3, 'GEO', 2, '9B', 'ary.souza@gmail.com'),
(3, 'HIST', 2, '9B', 'ary.souza@gmail.com'),
(2, 'ING', 2, '9B', 'ary.souza@gmail.com'),
(5, 'MAT', 2, '9B', 'ary.souza@gmail.com'),
(6, 'PORT', 2, '9B', 'ary.souza@gmail.com'),
(2, 'ART', 2, '9C', 'ary.souza@gmail.com'),
(4, 'CIEN', 2, '9C', 'ary.souza@gmail.com'),
(2, 'EDF', 2, '9C', 'ary.souza@gmail.com'),
(3, 'GEO', 2, '9C', 'ary.souza@gmail.com'),
(3, 'HIST', 2, '9C', 'ary.souza@gmail.com'),
(2, 'ING', 2, '9C', 'ary.souza@gmail.com'),
(5, 'MAT', 2, '9C', 'ary.souza@gmail.com'),
(6, 'PORT', 2, '9C', 'ary.souza@gmail.com'),
(2, 'ART', 2, '9D', 'ary.souza@gmail.com'),
(4, 'CIEN', 2, '9D', 'ary.souza@gmail.com'),
(2, 'EDF', 2, '9D', 'ary.souza@gmail.com'),
(3, 'GEO', 2, '9D', 'ary.souza@gmail.com'),
(3, 'HIST', 2, '9D', 'ary.souza@gmail.com'),
(2, 'ING', 2, '9D', 'ary.souza@gmail.com'),
(5, 'MAT', 2, '9D', 'ary.souza@gmail.com'),
(6, 'PORT', 2, '9D', 'ary.souza@gmail.com'),
(2, 'ART', 2, '9E', 'ary.souza@gmail.com'),
(4, 'CIEN', 2, '9E', 'ary.souza@gmail.com'),
(2, 'EDF', 2, '9E', 'ary.souza@gmail.com'),
(3, 'GEO', 2, '9E', 'ary.souza@gmail.com'),
(3, 'HIST', 2, '9E', 'ary.souza@gmail.com'),
(2, 'ING', 2, '9E', 'ary.souza@gmail.com'),
(5, 'MAT', 2, '9E', 'ary.souza@gmail.com'),
(6, 'PORT', 2, '9E', 'ary.souza@gmail.com');

INSERT INTO aula VALUES
-- Gladston
(2, 'ART', 2, '6A', 'gladston.jafet@gmail.com'),
(4, 'CIEN', 2, '6A', 'gladston.jafet@gmail.com'),
(2, 'EDF', 2, '6A', 'gladston.jafet@gmail.com'),
(3, 'GEO', 2, '6A', 'gladston.jafet@gmail.com'),
(3, 'HIST', 2, '6A', 'gladston.jafet@gmail.com'),
(2, 'ING', 2, '6A', 'gladston.jafet@gmail.com'),
(5, 'MAT', 2, '6A', 'gladston.jafet@gmail.com'),
(6, 'PORT', 2, '6A', 'gladston.jafet@gmail.com'),
(2, 'ART', 2, '6B', 'gladston.jafet@gmail.com'),
(4, 'CIEN', 2, '6B', 'gladston.jafet@gmail.com'),
(2, 'EDF', 2, '6B', 'gladston.jafet@gmail.com'),
(3, 'GEO', 2, '6B', 'gladston.jafet@gmail.com'),
(3, 'HIST', 2, '6B', 'gladston.jafet@gmail.com'),
(2, 'ING', 2, '6B', 'gladston.jafet@gmail.com'),
(5, 'MAT', 2, '6B', 'gladston.jafet@gmail.com'),
(6, 'PORT', 2, '6B', 'gladston.jafet@gmail.com'),
(2, 'ART', 2, '6C', 'gladston.jafet@gmail.com'),
(4, 'CIEN', 2, '6C', 'gladston.jafet@gmail.com'),
(2, 'EDF', 2, '6C', 'gladston.jafet@gmail.com'),
(3, 'GEO', 2, '6C', 'gladston.jafet@gmail.com'),
(3, 'HIST', 2, '6C', 'gladston.jafet@gmail.com'),
(2, 'ING', 2, '6C', 'gladston.jafet@gmail.com'),
(5, 'MAT', 2, '6C', 'gladston.jafet@gmail.com'),
(6, 'PORT', 2, '6C', 'gladston.jafet@gmail.com'),

(2, 'ART', 2, '7A', 'gladston.jafet@gmail.com'),
(4, 'CIEN', 2, '7A', 'gladston.jafet@gmail.com'),
(2, 'EDF', 2, '7A', 'gladston.jafet@gmail.com'),
(3, 'GEO', 2, '7A', 'gladston.jafet@gmail.com'),
(3, 'HIST', 2, '7A', 'gladston.jafet@gmail.com'),
(2, 'ING', 2, '7A', 'gladston.jafet@gmail.com'),
(5, 'MAT', 2, '7A', 'gladston.jafet@gmail.com'),
(6, 'PORT', 2, '7A', 'gladston.jafet@gmail.com'),
(2, 'ART', 2, '7B', 'gladston.jafet@gmail.com'),
(4, 'CIEN', 2, '7B', 'gladston.jafet@gmail.com'),
(2, 'EDF', 2, '7B', 'gladston.jafet@gmail.com'),
(3, 'GEO', 2, '7B', 'gladston.jafet@gmail.com'),
(3, 'HIST', 2, '7B', 'gladston.jafet@gmail.com'),
(2, 'ING', 2, '7B', 'gladston.jafet@gmail.com'),
(5, 'MAT', 2, '7B', 'gladston.jafet@gmail.com'),
(6, 'PORT', 2, '7B', 'gladston.jafet@gmail.com'),
(2, 'ART', 2, '7C', 'gladston.jafet@gmail.com'),
(4, 'CIEN', 2, '7C', 'gladston.jafet@gmail.com'),
(2, 'EDF', 2, '7C', 'gladston.jafet@gmail.com'),
(3, 'GEO', 2, '7C', 'gladston.jafet@gmail.com'),
(3, 'HIST', 2, '7C', 'gladston.jafet@gmail.com'),
(2, 'ING', 2, '7C', 'gladston.jafet@gmail.com'),
(5, 'MAT', 2, '7C', 'gladston.jafet@gmail.com'),
(6, 'PORT', 2, '7C', 'gladston.jafet@gmail.com'),

(2, 'ART', 2, '8A', 'gladston.jafet@gmail.com'),
(4, 'CIEN', 2, '8A', 'gladston.jafet@gmail.com'),
(2, 'EDF', 2, '8A', 'gladston.jafet@gmail.com'),
(3, 'GEO', 2, '8A', 'gladston.jafet@gmail.com'),
(3, 'HIST', 2, '8A', 'gladston.jafet@gmail.com'),
(2, 'ING', 2, '8A', 'gladston.jafet@gmail.com'),
(5, 'MAT', 2, '8A', 'gladston.jafet@gmail.com'),
(6, 'PORT', 2, '8A', 'gladston.jafet@gmail.com'),
(2, 'ART', 2, '8B', 'gladston.jafet@gmail.com'),
(4, 'CIEN', 2, '8B', 'gladston.jafet@gmail.com'),
(2, 'EDF', 2, '8B', 'gladston.jafet@gmail.com'),
(3, 'GEO', 2, '8B', 'gladston.jafet@gmail.com'),
(3, 'HIST', 2, '8B', 'gladston.jafet@gmail.com'),
(2, 'ING', 2, '8B', 'gladston.jafet@gmail.com'),
(5, 'MAT', 2, '8B', 'gladston.jafet@gmail.com'),
(6, 'PORT', 2, '8B', 'gladston.jafet@gmail.com'),
(2, 'ART', 2, '8C', 'gladston.jafet@gmail.com'),
(4, 'CIEN', 2, '8C', 'gladston.jafet@gmail.com'),
(2, 'EDF', 2, '8C', 'gladston.jafet@gmail.com'),
(3, 'GEO', 2, '8C', 'gladston.jafet@gmail.com'),
(3, 'HIST', 2, '8C', 'gladston.jafet@gmail.com'),
(2, 'ING', 2, '8C', 'gladston.jafet@gmail.com'),
(5, 'MAT', 2, '8C', 'gladston.jafet@gmail.com'),
(6, 'PORT', 2, '8C', 'gladston.jafet@gmail.com'),

(2, 'ART', 2, '9A', 'gladston.jafet@gmail.com'),
(4, 'CIEN', 2, '9A', 'gladston.jafet@gmail.com'),
(2, 'EDF', 2, '9A', 'gladston.jafet@gmail.com'),
(3, 'GEO', 2, '9A', 'gladston.jafet@gmail.com'),
(3, 'HIST', 2, '9A', 'gladston.jafet@gmail.com'),
(2, 'ING', 2, '9A', 'gladston.jafet@gmail.com'),
(5, 'MAT', 2, '9A', 'gladston.jafet@gmail.com'),
(6, 'PORT', 2, '9A', 'gladston.jafet@gmail.com'),
(2, 'ART', 2, '9B', 'gladston.jafet@gmail.com'),
(4, 'CIEN', 2, '9B', 'gladston.jafet@gmail.com'),
(2, 'EDF', 2, '9B', 'gladston.jafet@gmail.com'),
(3, 'GEO', 2, '9B', 'gladston.jafet@gmail.com'),
(3, 'HIST', 2, '9B', 'gladston.jafet@gmail.com'),
(2, 'ING', 2, '9B', 'gladston.jafet@gmail.com'),
(5, 'MAT', 2, '9B', 'gladston.jafet@gmail.com'),
(6, 'PORT', 2, '9B', 'gladston.jafet@gmail.com'),
(2, 'ART', 2, '9C', 'gladston.jafet@gmail.com'),
(4, 'CIEN', 2, '9C', 'gladston.jafet@gmail.com'),
(2, 'EDF', 2, '9C', 'gladston.jafet@gmail.com'),
(3, 'GEO', 2, '9C', 'gladston.jafet@gmail.com'),
(3, 'HIST', 2, '9C', 'gladston.jafet@gmail.com'),
(2, 'ING', 2, '9C', 'gladston.jafet@gmail.com'),
(5, 'MAT', 2, '9C', 'gladston.jafet@gmail.com'),
(6, 'PORT', 2, '9C', 'gladston.jafet@gmail.com');

INSERT INTO aula VALUES
-- Ivonete
(2, 'ART', 2, '6A', 'ivonete.camara@gmail.com'),
(4, 'CIEN', 2, '6A', 'ivonete.camara@gmail.com'),
(2, 'EDF', 2, '6A', 'ivonete.camara@gmail.com'),
(3, 'GEO', 2, '6A', 'ivonete.camara@gmail.com'),
(3, 'HIST', 2, '6A', 'ivonete.camara@gmail.com'),
(2, 'ING', 2, '6A', 'ivonete.camara@gmail.com'),
(5, 'MAT', 2, '6A', 'ivonete.camara@gmail.com'),
(6, 'PORT', 2, '6A', 'ivonete.camara@gmail.com'),
(2, 'ART', 2, '6B', 'ivonete.camara@gmail.com'),
(4, 'CIEN', 2, '6B', 'ivonete.camara@gmail.com'),
(2, 'EDF', 2, '6B', 'ivonete.camara@gmail.com'),
(3, 'GEO', 2, '6B', 'ivonete.camara@gmail.com'),
(3, 'HIST', 2, '6B', 'ivonete.camara@gmail.com'),
(2, 'ING', 2, '6B', 'ivonete.camara@gmail.com'),
(5, 'MAT', 2, '6B', 'ivonete.camara@gmail.com'),
(6, 'PORT', 2, '6B', 'ivonete.camara@gmail.com'),
(2, 'ART', 2, '6C', 'ivonete.camara@gmail.com'),
(4, 'CIEN', 2, '6C', 'ivonete.camara@gmail.com'),
(2, 'EDF', 2, '6C', 'ivonete.camara@gmail.com'),
(3, 'GEO', 2, '6C', 'ivonete.camara@gmail.com'),
(3, 'HIST', 2, '6C', 'ivonete.camara@gmail.com'),
(2, 'ING', 2, '6C', 'ivonete.camara@gmail.com'),
(5, 'MAT', 2, '6C', 'ivonete.camara@gmail.com'),
(6, 'PORT', 2, '6C', 'ivonete.camara@gmail.com'),
(2, 'ART', 2, '6D', 'ivonete.camara@gmail.com'),
(4, 'CIEN', 2, '6D', 'ivonete.camara@gmail.com'),
(2, 'EDF', 2, '6D', 'ivonete.camara@gmail.com'),
(3, 'GEO', 2, '6D', 'ivonete.camara@gmail.com'),
(3, 'HIST', 2, '6D', 'ivonete.camara@gmail.com'),
(2, 'ING', 2, '6D', 'ivonete.camara@gmail.com'),
(5, 'MAT', 2, '6D', 'ivonete.camara@gmail.com'),
(6, 'PORT', 2, '6D', 'ivonete.camara@gmail.com'),

(2, 'ART', 2, '7A', 'ivonete.camara@gmail.com'),
(4, 'CIEN', 2, '7A', 'ivonete.camara@gmail.com'),
(2, 'EDF', 2, '7A', 'ivonete.camara@gmail.com'),
(3, 'GEO', 2, '7A', 'ivonete.camara@gmail.com'),
(3, 'HIST', 2, '7A', 'ivonete.camara@gmail.com'),
(2, 'ING', 2, '7A', 'ivonete.camara@gmail.com'),
(5, 'MAT', 2, '7A', 'ivonete.camara@gmail.com'),
(6, 'PORT', 2, '7A', 'ivonete.camara@gmail.com'),
(2, 'ART', 2, '7B', 'ivonete.camara@gmail.com'),
(4, 'CIEN', 2, '7B', 'ivonete.camara@gmail.com'),
(2, 'EDF', 2, '7B', 'ivonete.camara@gmail.com'),
(3, 'GEO', 2, '7B', 'ivonete.camara@gmail.com'),
(3, 'HIST', 2, '7B', 'ivonete.camara@gmail.com'),
(2, 'ING', 2, '7B', 'ivonete.camara@gmail.com'),
(5, 'MAT', 2, '7B', 'ivonete.camara@gmail.com'),
(6, 'PORT', 2, '7B', 'ivonete.camara@gmail.com'),
(2, 'ART', 2, '7C', 'ivonete.camara@gmail.com'),
(4, 'CIEN', 2, '7C', 'ivonete.camara@gmail.com'),
(2, 'EDF', 2, '7C', 'ivonete.camara@gmail.com'),
(3, 'GEO', 2, '7C', 'ivonete.camara@gmail.com'),
(3, 'HIST', 2, '7C', 'ivonete.camara@gmail.com'),
(2, 'ING', 2, '7C', 'ivonete.camara@gmail.com'),
(5, 'MAT', 2, '7C', 'ivonete.camara@gmail.com'),
(6, 'PORT', 2, '7C', 'ivonete.camara@gmail.com'),
(2, 'ART', 2, '7D', 'ivonete.camara@gmail.com'),
(4, 'CIEN', 2, '7D', 'ivonete.camara@gmail.com'),
(2, 'EDF', 2, '7D', 'ivonete.camara@gmail.com'),
(3, 'GEO', 2, '7D', 'ivonete.camara@gmail.com'),
(3, 'HIST', 2, '7D', 'ivonete.camara@gmail.com'),
(2, 'ING', 2, '7D', 'ivonete.camara@gmail.com'),
(5, 'MAT', 2, '7D', 'ivonete.camara@gmail.com'),
(6, 'PORT', 2, '7D', 'ivonete.camara@gmail.com'),

(2, 'ART', 2, '8A', 'ivonete.camara@gmail.com'),
(4, 'CIEN', 2, '8A', 'ivonete.camara@gmail.com'),
(2, 'EDF', 2, '8A', 'ivonete.camara@gmail.com'),
(3, 'GEO', 2, '8A', 'ivonete.camara@gmail.com'),
(3, 'HIST', 2, '8A', 'ivonete.camara@gmail.com'),
(2, 'ING', 2, '8A', 'ivonete.camara@gmail.com'),
(5, 'MAT', 2, '8A', 'ivonete.camara@gmail.com'),
(6, 'PORT', 2, '8A', 'ivonete.camara@gmail.com'),
(2, 'ART', 2, '8B', 'ivonete.camara@gmail.com'),
(4, 'CIEN', 2, '8B', 'ivonete.camara@gmail.com'),
(2, 'EDF', 2, '8B', 'ivonete.camara@gmail.com'),
(3, 'GEO', 2, '8B', 'ivonete.camara@gmail.com'),
(3, 'HIST', 2, '8B', 'ivonete.camara@gmail.com'),
(2, 'ING', 2, '8B', 'ivonete.camara@gmail.com'),
(5, 'MAT', 2, '8B', 'ivonete.camara@gmail.com'),
(6, 'PORT', 2, '8B', 'ivonete.camara@gmail.com'),
(2, 'ART', 2, '8C', 'ivonete.camara@gmail.com'),
(4, 'CIEN', 2, '8C', 'ivonete.camara@gmail.com'),
(2, 'EDF', 2, '8C', 'ivonete.camara@gmail.com'),
(3, 'GEO', 2, '8C', 'ivonete.camara@gmail.com'),
(3, 'HIST', 2, '8C', 'ivonete.camara@gmail.com'),
(2, 'ING', 2, '8C', 'ivonete.camara@gmail.com'),
(5, 'MAT', 2, '8C', 'ivonete.camara@gmail.com'),
(6, 'PORT', 2, '8C', 'ivonete.camara@gmail.com'),
(2, 'ART', 2, '8D', 'ivonete.camara@gmail.com'),
(4, 'CIEN', 2, '8D', 'ivonete.camara@gmail.com'),
(2, 'EDF', 2, '8D', 'ivonete.camara@gmail.com'),
(3, 'GEO', 2, '8D', 'ivonete.camara@gmail.com'),
(3, 'HIST', 2, '8D', 'ivonete.camara@gmail.com'),
(2, 'ING', 2, '8D', 'ivonete.camara@gmail.com'),
(5, 'MAT', 2, '8D', 'ivonete.camara@gmail.com'),
(6, 'PORT', 2, '8D', 'ivonete.camara@gmail.com'),

(2, 'ART', 2, '9A', 'ivonete.camara@gmail.com'),
(4, 'CIEN', 2, '9A', 'ivonete.camara@gmail.com'),
(2, 'EDF', 2, '9A', 'ivonete.camara@gmail.com'),
(3, 'GEO', 2, '9A', 'ivonete.camara@gmail.com'),
(3, 'HIST', 2, '9A', 'ivonete.camara@gmail.com'),
(2, 'ING', 2, '9A', 'ivonete.camara@gmail.com'),
(5, 'MAT', 2, '9A', 'ivonete.camara@gmail.com'),
(6, 'PORT', 2, '9A', 'ivonete.camara@gmail.com'),
(2, 'ART', 2, '9B', 'ivonete.camara@gmail.com'),
(4, 'CIEN', 2, '9B', 'ivonete.camara@gmail.com'),
(2, 'EDF', 2, '9B', 'ivonete.camara@gmail.com'),
(3, 'GEO', 2, '9B', 'ivonete.camara@gmail.com'),
(3, 'HIST', 2, '9B', 'ivonete.camara@gmail.com'),
(2, 'ING', 2, '9B', 'ivonete.camara@gmail.com'),
(5, 'MAT', 2, '9B', 'ivonete.camara@gmail.com'),
(6, 'PORT', 2, '9B', 'ivonete.camara@gmail.com'),
(2, 'ART', 2, '9C', 'ivonete.camara@gmail.com'),
(4, 'CIEN', 2, '9C', 'ivonete.camara@gmail.com'),
(2, 'EDF', 2, '9C', 'ivonete.camara@gmail.com'),
(3, 'GEO', 2, '9C', 'ivonete.camara@gmail.com'),
(3, 'HIST', 2, '9C', 'ivonete.camara@gmail.com'),
(2, 'ING', 2, '9C', 'ivonete.camara@gmail.com'),
(5, 'MAT', 2, '9C', 'ivonete.camara@gmail.com'),
(6, 'PORT', 2, '9C', 'ivonete.camara@gmail.com'),
(2, 'ART', 2, '9D', 'ivonete.camara@gmail.com'),
(4, 'CIEN', 2, '9D', 'ivonete.camara@gmail.com'),
(2, 'EDF', 2, '9D', 'ivonete.camara@gmail.com'),
(3, 'GEO', 2, '9D', 'ivonete.camara@gmail.com'),
(3, 'HIST', 2, '9D', 'ivonete.camara@gmail.com'),
(2, 'ING', 2, '9D', 'ivonete.camara@gmail.com'),
(5, 'MAT', 2, '9D', 'ivonete.camara@gmail.com'),
(6, 'PORT', 2, '9D', 'ivonete.camara@gmail.com');

INSERT INTO aula VALUES
-- Lucia Santos
(2, 'ART', 2, '6A', 'lucia.santos@gmail.com'),
(4, 'CIEN', 2, '6A', 'lucia.santos@gmail.com'),
(2, 'EDF', 2, '6A', 'lucia.santos@gmail.com'),
(3, 'GEO', 2, '6A', 'lucia.santos@gmail.com'),
(3, 'HIST', 2, '6A', 'lucia.santos@gmail.com'),
(2, 'ING', 2, '6A', 'lucia.santos@gmail.com'),
(5, 'MAT', 2, '6A', 'lucia.santos@gmail.com'),
(6, 'PORT', 2, '6A', 'lucia.santos@gmail.com'),

(2, 'ART', 2, '7A', 'lucia.santos@gmail.com'),
(4, 'CIEN', 2, '7A', 'lucia.santos@gmail.com'),
(2, 'EDF', 2, '7A', 'lucia.santos@gmail.com'),
(3, 'GEO', 2, '7A', 'lucia.santos@gmail.com'),
(3, 'HIST', 2, '7A', 'lucia.santos@gmail.com'),
(2, 'ING', 2, '7A', 'lucia.santos@gmail.com'),
(5, 'MAT', 2, '7A', 'lucia.santos@gmail.com'),
(6, 'PORT', 2, '7A', 'lucia.santos@gmail.com'),


(2, 'ART', 2, '8A', 'lucia.santos@gmail.com'),
(4, 'CIEN', 2, '8A', 'lucia.santos@gmail.com'),
(2, 'EDF', 2, '8A', 'lucia.santos@gmail.com'),
(3, 'GEO', 2, '8A', 'lucia.santos@gmail.com'),
(3, 'HIST', 2, '8A', 'lucia.santos@gmail.com'),
(2, 'ING', 2, '8A', 'lucia.santos@gmail.com'),
(5, 'MAT', 2, '8A', 'lucia.santos@gmail.com'),
(6, 'PORT', 2, '8A', 'lucia.santos@gmail.com');

INSERT INTO aula VALUES
-- Lucimara Vicente
(2, 'ART', 2, '6A', 'lucimara.vicente@gmail.com'),
(4, 'CIEN', 2, '6A', 'lucimara.vicente@gmail.com'),
(2, 'EDF', 2, '6A', 'lucimara.vicente@gmail.com'),
(3, 'GEO', 2, '6A', 'lucimara.vicente@gmail.com'),
(3, 'HIST', 2, '6A', 'lucimara.vicente@gmail.com'),
(2, 'ING', 2, '6A', 'lucimara.vicente@gmail.com'),
(5, 'MAT', 2, '6A', 'lucimara.vicente@gmail.com'),
(6, 'PORT', 2, '6A', 'lucimara.vicente@gmail.com'),
(2, 'ART', 2, '6B', 'lucimara.vicente@gmail.com'),
(4, 'CIEN', 2, '6B', 'lucimara.vicente@gmail.com'),
(2, 'EDF', 2, '6B', 'lucimara.vicente@gmail.com'),
(3, 'GEO', 2, '6B', 'lucimara.vicente@gmail.com'),
(3, 'HIST', 2, '6B', 'lucimara.vicente@gmail.com'),
(2, 'ING', 2, '6B', 'lucimara.vicente@gmail.com'),
(5, 'MAT', 2, '6B', 'lucimara.vicente@gmail.com'),
(6, 'PORT', 2, '6B', 'lucimara.vicente@gmail.com'),
(2, 'ART', 2, '6C', 'lucimara.vicente@gmail.com'),
(4, 'CIEN', 2, '6C', 'lucimara.vicente@gmail.com'),
(2, 'EDF', 2, '6C', 'lucimara.vicente@gmail.com'),
(3, 'GEO', 2, '6C', 'lucimara.vicente@gmail.com'),
(3, 'HIST', 2, '6C', 'lucimara.vicente@gmail.com'),
(2, 'ING', 2, '6C', 'lucimara.vicente@gmail.com'),
(5, 'MAT', 2, '6C', 'lucimara.vicente@gmail.com'),
(6, 'PORT', 2, '6C', 'lucimara.vicente@gmail.com'),
(2, 'ART', 2, '6D', 'lucimara.vicente@gmail.com'),
(4, 'CIEN', 2, '6D', 'lucimara.vicente@gmail.com'),
(2, 'EDF', 2, '6D', 'lucimara.vicente@gmail.com'),
(3, 'GEO', 2, '6D', 'lucimara.vicente@gmail.com'),
(3, 'HIST', 2, '6D', 'lucimara.vicente@gmail.com'),
(2, 'ING', 2, '6D', 'lucimara.vicente@gmail.com'),
(5, 'MAT', 2, '6D', 'lucimara.vicente@gmail.com'),
(6, 'PORT', 2, '6D', 'lucimara.vicente@gmail.com'),

(2, 'ART', 2, '7A', 'lucimara.vicente@gmail.com'),
(4, 'CIEN', 2, '7A', 'lucimara.vicente@gmail.com'),
(2, 'EDF', 2, '7A', 'lucimara.vicente@gmail.com'),
(3, 'GEO', 2, '7A', 'lucimara.vicente@gmail.com'),
(3, 'HIST', 2, '7A', 'lucimara.vicente@gmail.com'),
(2, 'ING', 2, '7A', 'lucimara.vicente@gmail.com'),
(5, 'MAT', 2, '7A', 'lucimara.vicente@gmail.com'),
(6, 'PORT', 2, '7A', 'lucimara.vicente@gmail.com'),
(2, 'ART', 2, '7B', 'lucimara.vicente@gmail.com'),
(4, 'CIEN', 2, '7B', 'lucimara.vicente@gmail.com'),
(2, 'EDF', 2, '7B', 'lucimara.vicente@gmail.com'),
(3, 'GEO', 2, '7B', 'lucimara.vicente@gmail.com'),
(3, 'HIST', 2, '7B', 'lucimara.vicente@gmail.com'),
(2, 'ING', 2, '7B', 'lucimara.vicente@gmail.com'),
(5, 'MAT', 2, '7B', 'lucimara.vicente@gmail.com'),
(6, 'PORT', 2, '7B', 'lucimara.vicente@gmail.com'),
(2, 'ART', 2, '7C', 'lucimara.vicente@gmail.com'),
(4, 'CIEN', 2, '7C', 'lucimara.vicente@gmail.com'),
(2, 'EDF', 2, '7C', 'lucimara.vicente@gmail.com'),
(3, 'GEO', 2, '7C', 'lucimara.vicente@gmail.com'),
(3, 'HIST', 2, '7C', 'lucimara.vicente@gmail.com'),
(2, 'ING', 2, '7C', 'lucimara.vicente@gmail.com'),
(5, 'MAT', 2, '7C', 'lucimara.vicente@gmail.com'),
(6, 'PORT', 2, '7C', 'lucimara.vicente@gmail.com'),
(2, 'ART', 2, '7D', 'lucimara.vicente@gmail.com'),
(4, 'CIEN', 2, '7D', 'lucimara.vicente@gmail.com'),
(2, 'EDF', 2, '7D', 'lucimara.vicente@gmail.com'),
(3, 'GEO', 2, '7D', 'lucimara.vicente@gmail.com'),
(3, 'HIST', 2, '7D', 'lucimara.vicente@gmail.com'),
(2, 'ING', 2, '7D', 'lucimara.vicente@gmail.com'),
(5, 'MAT', 2, '7D', 'lucimara.vicente@gmail.com'),
(6, 'PORT', 2, '7D', 'lucimara.vicente@gmail.com'),

(2, 'ART', 2, '8A', 'lucimara.vicente@gmail.com'),
(4, 'CIEN', 2, '8A', 'lucimara.vicente@gmail.com'),
(2, 'EDF', 2, '8A', 'lucimara.vicente@gmail.com'),
(3, 'GEO', 2, '8A', 'lucimara.vicente@gmail.com'),
(3, 'HIST', 2, '8A', 'lucimara.vicente@gmail.com'),
(2, 'ING', 2, '8A', 'lucimara.vicente@gmail.com'),
(5, 'MAT', 2, '8A', 'lucimara.vicente@gmail.com'),
(6, 'PORT', 2, '8A', 'lucimara.vicente@gmail.com'),
(2, 'ART', 2, '8B', 'lucimara.vicente@gmail.com'),
(4, 'CIEN', 2, '8B', 'lucimara.vicente@gmail.com'),
(2, 'EDF', 2, '8B', 'lucimara.vicente@gmail.com'),
(3, 'GEO', 2, '8B', 'lucimara.vicente@gmail.com'),
(3, 'HIST', 2, '8B', 'lucimara.vicente@gmail.com'),
(2, 'ING', 2, '8B', 'lucimara.vicente@gmail.com'),
(5, 'MAT', 2, '8B', 'lucimara.vicente@gmail.com'),
(6, 'PORT', 2, '8B', 'lucimara.vicente@gmail.com'),
(2, 'ART', 2, '8C', 'lucimara.vicente@gmail.com'),
(4, 'CIEN', 2, '8C', 'lucimara.vicente@gmail.com'),
(2, 'EDF', 2, '8C', 'lucimara.vicente@gmail.com'),
(3, 'GEO', 2, '8C', 'lucimara.vicente@gmail.com'),
(3, 'HIST', 2, '8C', 'lucimara.vicente@gmail.com'),
(2, 'ING', 2, '8C', 'lucimara.vicente@gmail.com'),
(5, 'MAT', 2, '8C', 'lucimara.vicente@gmail.com'),
(6, 'PORT', 2, '8C', 'lucimara.vicente@gmail.com'),
(2, 'ART', 2, '8D', 'lucimara.vicente@gmail.com'),
(4, 'CIEN', 2, '8D', 'lucimara.vicente@gmail.com'),
(2, 'EDF', 2, '8D', 'lucimara.vicente@gmail.com'),
(3, 'GEO', 2, '8D', 'lucimara.vicente@gmail.com'),
(3, 'HIST', 2, '8D', 'lucimara.vicente@gmail.com'),
(2, 'ING', 2, '8D', 'lucimara.vicente@gmail.com'),
(5, 'MAT', 2, '8D', 'lucimara.vicente@gmail.com'),
(6, 'PORT', 2, '8D', 'lucimara.vicente@gmail.com');

INSERT INTO aula VALUES
-- Primeiro Maio
(2, 'ART', 2, '6A', 'primeiro.maio@gmail.com'),
(4, 'CIEN', 2, '6A', 'primeiro.maio@gmail.com'),
(2, 'EDF', 2, '6A', 'primeiro.maio@gmail.com'),
(3, 'GEO', 2, '6A', 'primeiro.maio@gmail.com'),
(3, 'HIST', 2, '6A', 'primeiro.maio@gmail.com'),
(2, 'ING', 2, '6A', 'primeiro.maio@gmail.com'),
(5, 'MAT', 2, '6A', 'primeiro.maio@gmail.com'),
(6, 'PORT', 2, '6A', 'primeiro.maio@gmail.com'),
(2, 'ART', 2, '6B', 'primeiro.maio@gmail.com'),
(4, 'CIEN', 2, '6B', 'primeiro.maio@gmail.com'),
(2, 'EDF', 2, '6B', 'primeiro.maio@gmail.com'),
(3, 'GEO', 2, '6B', 'primeiro.maio@gmail.com'),
(3, 'HIST', 2, '6B', 'primeiro.maio@gmail.com'),
(2, 'ING', 2, '6B', 'primeiro.maio@gmail.com'),
(5, 'MAT', 2, '6B', 'primeiro.maio@gmail.com'),
(6, 'PORT', 2, '6B', 'primeiro.maio@gmail.com'),
(2, 'ART', 2, '6C', 'primeiro.maio@gmail.com'),
(4, 'CIEN', 2, '6C', 'primeiro.maio@gmail.com'),
(2, 'EDF', 2, '6C', 'primeiro.maio@gmail.com'),
(3, 'GEO', 2, '6C', 'primeiro.maio@gmail.com'),
(3, 'HIST', 2, '6C', 'primeiro.maio@gmail.com'),
(2, 'ING', 2, '6C', 'primeiro.maio@gmail.com'),
(5, 'MAT', 2, '6C', 'primeiro.maio@gmail.com'),
(6, 'PORT', 2, '6C', 'primeiro.maio@gmail.com'),
(2, 'ART', 2, '6D', 'primeiro.maio@gmail.com'),
(4, 'CIEN', 2, '6D', 'primeiro.maio@gmail.com'),
(2, 'EDF', 2, '6D', 'primeiro.maio@gmail.com'),
(3, 'GEO', 2, '6D', 'primeiro.maio@gmail.com'),
(3, 'HIST', 2, '6D', 'primeiro.maio@gmail.com'),
(2, 'ING', 2, '6D', 'primeiro.maio@gmail.com'),
(5, 'MAT', 2, '6D', 'primeiro.maio@gmail.com'),
(6, 'PORT', 2, '6D', 'primeiro.maio@gmail.com'),
(2, 'ART', 2, '6E', 'primeiro.maio@gmail.com'),
(4, 'CIEN', 2, '6E', 'primeiro.maio@gmail.com'),
(2, 'EDF', 2, '6E', 'primeiro.maio@gmail.com'),
(3, 'GEO', 2, '6E', 'primeiro.maio@gmail.com'),
(3, 'HIST', 2, '6E', 'primeiro.maio@gmail.com'),
(2, 'ING', 2, '6E', 'primeiro.maio@gmail.com'),
(5, 'MAT', 2, '6E', 'primeiro.maio@gmail.com'),
(6, 'PORT', 2, '6E', 'primeiro.maio@gmail.com'),

(2, 'ART', 2, '7A', 'primeiro.maio@gmail.com'),
(4, 'CIEN', 2, '7A', 'primeiro.maio@gmail.com'),
(2, 'EDF', 2, '7A', 'primeiro.maio@gmail.com'),
(3, 'GEO', 2, '7A', 'primeiro.maio@gmail.com'),
(3, 'HIST', 2, '7A', 'primeiro.maio@gmail.com'),
(2, 'ING', 2, '7A', 'primeiro.maio@gmail.com'),
(5, 'MAT', 2, '7A', 'primeiro.maio@gmail.com'),
(6, 'PORT', 2, '7A', 'primeiro.maio@gmail.com'),
(2, 'ART', 2, '7B', 'primeiro.maio@gmail.com'),
(4, 'CIEN', 2, '7B', 'primeiro.maio@gmail.com'),
(2, 'EDF', 2, '7B', 'primeiro.maio@gmail.com'),
(3, 'GEO', 2, '7B', 'primeiro.maio@gmail.com'),
(3, 'HIST', 2, '7B', 'primeiro.maio@gmail.com'),
(2, 'ING', 2, '7B', 'primeiro.maio@gmail.com'),
(5, 'MAT', 2, '7B', 'primeiro.maio@gmail.com'),
(6, 'PORT', 2, '7B', 'primeiro.maio@gmail.com'),
(2, 'ART', 2, '7C', 'primeiro.maio@gmail.com'),
(4, 'CIEN', 2, '7C', 'primeiro.maio@gmail.com'),
(2, 'EDF', 2, '7C', 'primeiro.maio@gmail.com'),
(3, 'GEO', 2, '7C', 'primeiro.maio@gmail.com'),
(3, 'HIST', 2, '7C', 'primeiro.maio@gmail.com'),
(2, 'ING', 2, '7C', 'primeiro.maio@gmail.com'),
(5, 'MAT', 2, '7C', 'primeiro.maio@gmail.com'),
(6, 'PORT', 2, '7C', 'primeiro.maio@gmail.com'),
(2, 'ART', 2, '7D', 'primeiro.maio@gmail.com'),
(4, 'CIEN', 2, '7D', 'primeiro.maio@gmail.com'),
(2, 'EDF', 2, '7D', 'primeiro.maio@gmail.com'),
(3, 'GEO', 2, '7D', 'primeiro.maio@gmail.com'),
(3, 'HIST', 2, '7D', 'primeiro.maio@gmail.com'),
(2, 'ING', 2, '7D', 'primeiro.maio@gmail.com'),
(5, 'MAT', 2, '7D', 'primeiro.maio@gmail.com'),
(6, 'PORT', 2, '7D', 'primeiro.maio@gmail.com'),
(2, 'ART', 2, '7E', 'primeiro.maio@gmail.com'),
(4, 'CIEN', 2, '7E', 'primeiro.maio@gmail.com'),
(2, 'EDF', 2, '7E', 'primeiro.maio@gmail.com'),
(3, 'GEO', 2, '7E', 'primeiro.maio@gmail.com'),
(3, 'HIST', 2, '7E', 'primeiro.maio@gmail.com'),
(2, 'ING', 2, '7E', 'primeiro.maio@gmail.com'),
(5, 'MAT', 2, '7E', 'primeiro.maio@gmail.com'),
(6, 'PORT', 2, '7E', 'primeiro.maio@gmail.com'),

(2, 'ART', 2, '8A', 'primeiro.maio@gmail.com'),
(4, 'CIEN', 2, '8A', 'primeiro.maio@gmail.com'),
(2, 'EDF', 2, '8A', 'primeiro.maio@gmail.com'),
(3, 'GEO', 2, '8A', 'primeiro.maio@gmail.com'),
(3, 'HIST', 2, '8A', 'primeiro.maio@gmail.com'),
(2, 'ING', 2, '8A', 'primeiro.maio@gmail.com'),
(5, 'MAT', 2, '8A', 'primeiro.maio@gmail.com'),
(6, 'PORT', 2, '8A', 'primeiro.maio@gmail.com'),
(2, 'ART', 2, '8B', 'primeiro.maio@gmail.com'),
(4, 'CIEN', 2, '8B', 'primeiro.maio@gmail.com'),
(2, 'EDF', 2, '8B', 'primeiro.maio@gmail.com'),
(3, 'GEO', 2, '8B', 'primeiro.maio@gmail.com'),
(3, 'HIST', 2, '8B', 'primeiro.maio@gmail.com'),
(2, 'ING', 2, '8B', 'primeiro.maio@gmail.com'),
(5, 'MAT', 2, '8B', 'primeiro.maio@gmail.com'),
(6, 'PORT', 2, '8B', 'primeiro.maio@gmail.com'),
(2, 'ART', 2, '8C', 'primeiro.maio@gmail.com'),
(4, 'CIEN', 2, '8C', 'primeiro.maio@gmail.com'),
(2, 'EDF', 2, '8C', 'primeiro.maio@gmail.com'),
(3, 'GEO', 2, '8C', 'primeiro.maio@gmail.com'),
(3, 'HIST', 2, '8C', 'primeiro.maio@gmail.com'),
(2, 'ING', 2, '8C', 'primeiro.maio@gmail.com'),
(5, 'MAT', 2, '8C', 'primeiro.maio@gmail.com'),
(6, 'PORT', 2, '8C', 'primeiro.maio@gmail.com'),
(2, 'ART', 2, '8D', 'primeiro.maio@gmail.com'),
(4, 'CIEN', 2, '8D', 'primeiro.maio@gmail.com'),
(2, 'EDF', 2, '8D', 'primeiro.maio@gmail.com'),
(3, 'GEO', 2, '8D', 'primeiro.maio@gmail.com'),
(3, 'HIST', 2, '8D', 'primeiro.maio@gmail.com'),
(2, 'ING', 2, '8D', 'primeiro.maio@gmail.com'),
(5, 'MAT', 2, '8D', 'primeiro.maio@gmail.com'),
(6, 'PORT', 2, '8D', 'primeiro.maio@gmail.com'),
(2, 'ART', 2, '8E', 'primeiro.maio@gmail.com'),
(4, 'CIEN', 2, '8E', 'primeiro.maio@gmail.com'),
(2, 'EDF', 2, '8E', 'primeiro.maio@gmail.com'),
(3, 'GEO', 2, '8E', 'primeiro.maio@gmail.com'),
(3, 'HIST', 2, '8E', 'primeiro.maio@gmail.com'),
(2, 'ING', 2, '8E', 'primeiro.maio@gmail.com'),
(5, 'MAT', 2, '8E', 'primeiro.maio@gmail.com'),
(6, 'PORT', 2, '8E', 'primeiro.maio@gmail.com'),

(2, 'ART', 2, '9A', 'primeiro.maio@gmail.com'),
(4, 'CIEN', 2, '9A', 'primeiro.maio@gmail.com'),
(2, 'EDF', 2, '9A', 'primeiro.maio@gmail.com'),
(3, 'GEO', 2, '9A', 'primeiro.maio@gmail.com'),
(3, 'HIST', 2, '9A', 'primeiro.maio@gmail.com'),
(2, 'ING', 2, '9A', 'primeiro.maio@gmail.com'),
(5, 'MAT', 2, '9A', 'primeiro.maio@gmail.com'),
(6, 'PORT', 2, '9A', 'primeiro.maio@gmail.com'),
(2, 'ART', 2, '9B', 'primeiro.maio@gmail.com'),
(4, 'CIEN', 2, '9B', 'primeiro.maio@gmail.com'),
(2, 'EDF', 2, '9B', 'primeiro.maio@gmail.com'),
(3, 'GEO', 2, '9B', 'primeiro.maio@gmail.com'),
(3, 'HIST', 2, '9B', 'primeiro.maio@gmail.com'),
(2, 'ING', 2, '9B', 'primeiro.maio@gmail.com'),
(5, 'MAT', 2, '9B', 'primeiro.maio@gmail.com'),
(6, 'PORT', 2, '9B', 'primeiro.maio@gmail.com'),
(2, 'ART', 2, '9C', 'primeiro.maio@gmail.com'),
(4, 'CIEN', 2, '9C', 'primeiro.maio@gmail.com'),
(2, 'EDF', 2, '9C', 'primeiro.maio@gmail.com'),
(3, 'GEO', 2, '9C', 'primeiro.maio@gmail.com'),
(3, 'HIST', 2, '9C', 'primeiro.maio@gmail.com'),
(2, 'ING', 2, '9C', 'primeiro.maio@gmail.com'),
(5, 'MAT', 2, '9C', 'primeiro.maio@gmail.com'),
(6, 'PORT', 2, '9C', 'primeiro.maio@gmail.com'),
(2, 'ART', 2, '9D', 'primeiro.maio@gmail.com'),
(4, 'CIEN', 2, '9D', 'primeiro.maio@gmail.com'),
(2, 'EDF', 2, '9D', 'primeiro.maio@gmail.com'),
(3, 'GEO', 2, '9D', 'primeiro.maio@gmail.com'),
(3, 'HIST', 2, '9D', 'primeiro.maio@gmail.com'),
(2, 'ING', 2, '9D', 'primeiro.maio@gmail.com'),
(5, 'MAT', 2, '9D', 'primeiro.maio@gmail.com'),
(6, 'PORT', 2, '9D', 'primeiro.maio@gmail.com'),
(2, 'ART', 2, '9E', 'primeiro.maio@gmail.com'),
(4, 'CIEN', 2, '9E', 'primeiro.maio@gmail.com'),
(2, 'EDF', 2, '9E', 'primeiro.maio@gmail.com'),
(3, 'GEO', 2, '9E', 'primeiro.maio@gmail.com'),
(3, 'HIST', 2, '9E', 'primeiro.maio@gmail.com'),
(2, 'ING', 2, '9E', 'primeiro.maio@gmail.com'),
(5, 'MAT', 2, '9E', 'primeiro.maio@gmail.com'),
(6, 'PORT', 2, '9E', 'primeiro.maio@gmail.com');

INSERT INTO aula VALUES
-- Maria Araujo
(2, 'ART', 2, '6A', 'maria.araujo@gmail.com'),
(4, 'CIEN', 2, '6A', 'maria.araujo@gmail.com'),
(2, 'EDF', 2, '6A', 'maria.araujo@gmail.com'),
(3, 'GEO', 2, '6A', 'maria.araujo@gmail.com'),
(3, 'HIST', 2, '6A', 'maria.araujo@gmail.com'),
(2, 'ING', 2, '6A', 'maria.araujo@gmail.com'),
(5, 'MAT', 2, '6A', 'maria.araujo@gmail.com'),
(6, 'PORT', 2, '6A', 'maria.araujo@gmail.com'),
(2, 'ART', 2, '6B', 'maria.araujo@gmail.com'),
(4, 'CIEN', 2, '6B', 'maria.araujo@gmail.com'),
(2, 'EDF', 2, '6B', 'maria.araujo@gmail.com'),
(3, 'GEO', 2, '6B', 'maria.araujo@gmail.com'),
(3, 'HIST', 2, '6B', 'maria.araujo@gmail.com'),
(2, 'ING', 2, '6B', 'maria.araujo@gmail.com'),
(5, 'MAT', 2, '6B', 'maria.araujo@gmail.com'),
(6, 'PORT', 2, '6B', 'maria.araujo@gmail.com'),
(2, 'ART', 2, '6C', 'maria.araujo@gmail.com'),
(4, 'CIEN', 2, '6C', 'maria.araujo@gmail.com'),
(2, 'EDF', 2, '6C', 'maria.araujo@gmail.com'),
(3, 'GEO', 2, '6C', 'maria.araujo@gmail.com'),
(3, 'HIST', 2, '6C', 'maria.araujo@gmail.com'),
(2, 'ING', 2, '6C', 'maria.araujo@gmail.com'),
(5, 'MAT', 2, '6C', 'maria.araujo@gmail.com'),
(6, 'PORT', 2, '6C', 'maria.araujo@gmail.com'),
(2, 'ART', 2, '6D', 'maria.araujo@gmail.com'),
(4, 'CIEN', 2, '6D', 'maria.araujo@gmail.com'),
(2, 'EDF', 2, '6D', 'maria.araujo@gmail.com'),
(3, 'GEO', 2, '6D', 'maria.araujo@gmail.com'),
(3, 'HIST', 2, '6D', 'maria.araujo@gmail.com'),
(2, 'ING', 2, '6D', 'maria.araujo@gmail.com'),
(5, 'MAT', 2, '6D', 'maria.araujo@gmail.com'),
(6, 'PORT', 2, '6D', 'maria.araujo@gmail.com'),

(2, 'ART', 2, '7A', 'maria.araujo@gmail.com'),
(4, 'CIEN', 2, '7A', 'maria.araujo@gmail.com'),
(2, 'EDF', 2, '7A', 'maria.araujo@gmail.com'),
(3, 'GEO', 2, '7A', 'maria.araujo@gmail.com'),
(3, 'HIST', 2, '7A', 'maria.araujo@gmail.com'),
(2, 'ING', 2, '7A', 'maria.araujo@gmail.com'),
(5, 'MAT', 2, '7A', 'maria.araujo@gmail.com'),
(6, 'PORT', 2, '7A', 'maria.araujo@gmail.com'),
(2, 'ART', 2, '7B', 'maria.araujo@gmail.com'),
(4, 'CIEN', 2, '7B', 'maria.araujo@gmail.com'),
(2, 'EDF', 2, '7B', 'maria.araujo@gmail.com'),
(3, 'GEO', 2, '7B', 'maria.araujo@gmail.com'),
(3, 'HIST', 2, '7B', 'maria.araujo@gmail.com'),
(2, 'ING', 2, '7B', 'maria.araujo@gmail.com'),
(5, 'MAT', 2, '7B', 'maria.araujo@gmail.com'),
(6, 'PORT', 2, '7B', 'maria.araujo@gmail.com'),
(2, 'ART', 2, '7C', 'maria.araujo@gmail.com'),
(4, 'CIEN', 2, '7C', 'maria.araujo@gmail.com'),
(2, 'EDF', 2, '7C', 'maria.araujo@gmail.com'),
(3, 'GEO', 2, '7C', 'maria.araujo@gmail.com'),
(3, 'HIST', 2, '7C', 'maria.araujo@gmail.com'),
(2, 'ING', 2, '7C', 'maria.araujo@gmail.com'),
(5, 'MAT', 2, '7C', 'maria.araujo@gmail.com'),
(6, 'PORT', 2, '7C', 'maria.araujo@gmail.com'),
(2, 'ART', 2, '7D', 'maria.araujo@gmail.com'),
(4, 'CIEN', 2, '7D', 'maria.araujo@gmail.com'),
(2, 'EDF', 2, '7D', 'maria.araujo@gmail.com'),
(3, 'GEO', 2, '7D', 'maria.araujo@gmail.com'),
(3, 'HIST', 2, '7D', 'maria.araujo@gmail.com'),
(2, 'ING', 2, '7D', 'maria.araujo@gmail.com'),
(5, 'MAT', 2, '7D', 'maria.araujo@gmail.com'),
(6, 'PORT', 2, '7D', 'maria.araujo@gmail.com');

INSERT INTO aula VALUES
-- Maria Camargo
(2, 'ART', 2, '6A', 'maria.camargo@gmail.com'),
(4, 'CIEN', 2, '6A', 'maria.camargo@gmail.com'),
(2, 'EDF', 2, '6A', 'maria.camargo@gmail.com'),
(3, 'GEO', 2, '6A', 'maria.camargo@gmail.com'),
(3, 'HIST', 2, '6A', 'maria.camargo@gmail.com'),
(2, 'ING', 2, '6A', 'maria.camargo@gmail.com'),
(5, 'MAT', 2, '6A', 'maria.camargo@gmail.com'),
(6, 'PORT', 2, '6A', 'maria.camargo@gmail.com'),
(2, 'ART', 2, '6B', 'maria.camargo@gmail.com'),
(4, 'CIEN', 2, '6B', 'maria.camargo@gmail.com'),
(2, 'EDF', 2, '6B', 'maria.camargo@gmail.com'),
(3, 'GEO', 2, '6B', 'maria.camargo@gmail.com'),
(3, 'HIST', 2, '6B', 'maria.camargo@gmail.com'),
(2, 'ING', 2, '6B', 'maria.camargo@gmail.com'),
(5, 'MAT', 2, '6B', 'maria.camargo@gmail.com'),
(6, 'PORT', 2, '6B', 'maria.camargo@gmail.com'),
(2, 'ART', 2, '6C', 'maria.camargo@gmail.com'),
(4, 'CIEN', 2, '6C', 'maria.camargo@gmail.com'),
(2, 'EDF', 2, '6C', 'maria.camargo@gmail.com'),
(3, 'GEO', 2, '6C', 'maria.camargo@gmail.com'),
(3, 'HIST', 2, '6C', 'maria.camargo@gmail.com'),
(2, 'ING', 2, '6C', 'maria.camargo@gmail.com'),
(5, 'MAT', 2, '6C', 'maria.camargo@gmail.com'),
(6, 'PORT', 2, '6C', 'maria.camargo@gmail.com'),
(2, 'ART', 2, '6D', 'maria.camargo@gmail.com'),
(4, 'CIEN', 2, '6D', 'maria.camargo@gmail.com'),
(2, 'EDF', 2, '6D', 'maria.camargo@gmail.com'),
(3, 'GEO', 2, '6D', 'maria.camargo@gmail.com'),
(3, 'HIST', 2, '6D', 'maria.camargo@gmail.com'),
(2, 'ING', 2, '6D', 'maria.camargo@gmail.com'),
(5, 'MAT', 2, '6D', 'maria.camargo@gmail.com'),
(6, 'PORT', 2, '6D', 'maria.camargo@gmail.com'),

(2, 'ART', 2, '7A', 'maria.camargo@gmail.com'),
(4, 'CIEN', 2, '7A', 'maria.camargo@gmail.com'),
(2, 'EDF', 2, '7A', 'maria.camargo@gmail.com'),
(3, 'GEO', 2, '7A', 'maria.camargo@gmail.com'),
(3, 'HIST', 2, '7A', 'maria.camargo@gmail.com'),
(2, 'ING', 2, '7A', 'maria.camargo@gmail.com'),
(5, 'MAT', 2, '7A', 'maria.camargo@gmail.com'),
(6, 'PORT', 2, '7A', 'maria.camargo@gmail.com'),
(2, 'ART', 2, '7B', 'maria.camargo@gmail.com'),
(4, 'CIEN', 2, '7B', 'maria.camargo@gmail.com'),
(2, 'EDF', 2, '7B', 'maria.camargo@gmail.com'),
(3, 'GEO', 2, '7B', 'maria.camargo@gmail.com'),
(3, 'HIST', 2, '7B', 'maria.camargo@gmail.com'),
(2, 'ING', 2, '7B', 'maria.camargo@gmail.com'),
(5, 'MAT', 2, '7B', 'maria.camargo@gmail.com'),
(6, 'PORT', 2, '7B', 'maria.camargo@gmail.com'),
(2, 'ART', 2, '7C', 'maria.camargo@gmail.com'),
(4, 'CIEN', 2, '7C', 'maria.camargo@gmail.com'),
(2, 'EDF', 2, '7C', 'maria.camargo@gmail.com'),
(3, 'GEO', 2, '7C', 'maria.camargo@gmail.com'),
(3, 'HIST', 2, '7C', 'maria.camargo@gmail.com'),
(2, 'ING', 2, '7C', 'maria.camargo@gmail.com'),
(5, 'MAT', 2, '7C', 'maria.camargo@gmail.com'),
(6, 'PORT', 2, '7C', 'maria.camargo@gmail.com'),
(2, 'ART', 2, '7D', 'maria.camargo@gmail.com'),
(4, 'CIEN', 2, '7D', 'maria.camargo@gmail.com'),
(2, 'EDF', 2, '7D', 'maria.camargo@gmail.com'),
(3, 'GEO', 2, '7D', 'maria.camargo@gmail.com'),
(3, 'HIST', 2, '7D', 'maria.camargo@gmail.com'),
(2, 'ING', 2, '7D', 'maria.camargo@gmail.com'),
(5, 'MAT', 2, '7D', 'maria.camargo@gmail.com'),
(6, 'PORT', 2, '7D', 'maria.camargo@gmail.com'),

(2, 'ART', 2, '8A', 'maria.camargo@gmail.com'),
(4, 'CIEN', 2, '8A', 'maria.camargo@gmail.com'),
(2, 'EDF', 2, '8A', 'maria.camargo@gmail.com'),
(3, 'GEO', 2, '8A', 'maria.camargo@gmail.com'),
(3, 'HIST', 2, '8A', 'maria.camargo@gmail.com'),
(2, 'ING', 2, '8A', 'maria.camargo@gmail.com'),
(5, 'MAT', 2, '8A', 'maria.camargo@gmail.com'),
(6, 'PORT', 2, '8A', 'maria.camargo@gmail.com'),
(2, 'ART', 2, '8B', 'maria.camargo@gmail.com'),
(4, 'CIEN', 2, '8B', 'maria.camargo@gmail.com'),
(2, 'EDF', 2, '8B', 'maria.camargo@gmail.com'),
(3, 'GEO', 2, '8B', 'maria.camargo@gmail.com'),
(3, 'HIST', 2, '8B', 'maria.camargo@gmail.com'),
(2, 'ING', 2, '8B', 'maria.camargo@gmail.com'),
(5, 'MAT', 2, '8B', 'maria.camargo@gmail.com'),
(6, 'PORT', 2, '8B', 'maria.camargo@gmail.com'),
(2, 'ART', 2, '8C', 'maria.camargo@gmail.com'),
(4, 'CIEN', 2, '8C', 'maria.camargo@gmail.com'),
(2, 'EDF', 2, '8C', 'maria.camargo@gmail.com'),
(3, 'GEO', 2, '8C', 'maria.camargo@gmail.com'),
(3, 'HIST', 2, '8C', 'maria.camargo@gmail.com'),
(2, 'ING', 2, '8C', 'maria.camargo@gmail.com'),
(5, 'MAT', 2, '8C', 'maria.camargo@gmail.com'),
(6, 'PORT', 2, '8C', 'maria.camargo@gmail.com'),
(2, 'ART', 2, '8D', 'maria.camargo@gmail.com'),
(4, 'CIEN', 2, '8D', 'maria.camargo@gmail.com'),
(2, 'EDF', 2, '8D', 'maria.camargo@gmail.com'),
(3, 'GEO', 2, '8D', 'maria.camargo@gmail.com'),
(3, 'HIST', 2, '8D', 'maria.camargo@gmail.com'),
(2, 'ING',2, '8D', 'maria.camargo@gmail.com'),
(5, 'MAT',2,'8D', 'maria.camargo@gmail.com'),
(50, 'PORT',2,'8D','maria.camargo@gmail.com');

INSERT INTO aula VALUES
-- Benedita Gonzalez
(2, 'ART', 2, '6A', 'benedita.gonzalez@gmail.com'),
(4, 'CIEN', 2, '6A', 'benedita.gonzalez@gmail.com'),
(2, 'EDF', 2, '6A', 'benedita.gonzalez@gmail.com'),
(3, 'GEO', 2, '6A', 'benedita.gonzalez@gmail.com'),
(3, 'HIST', 2, '6A', 'benedita.gonzalez@gmail.com'),
(2, 'ING', 2, '6A', 'benedita.gonzalez@gmail.com'),
(5, 'MAT', 2, '6A', 'benedita.gonzalez@gmail.com'),
(6, 'PORT', 2, '6A', 'benedita.gonzalez@gmail.com'),
(2, 'ART', 2, '6B', 'benedita.gonzalez@gmail.com'),
(4, 'CIEN', 2, '6B', 'benedita.gonzalez@gmail.com'),
(2, 'EDF', 2, '6B', 'benedita.gonzalez@gmail.com'),
(3, 'GEO', 2, '6B', 'benedita.gonzalez@gmail.com'),
(3, 'HIST', 2, '6B', 'benedita.gonzalez@gmail.com'),
(2, 'ING', 2, '6B', 'benedita.gonzalez@gmail.com'),
(5, 'MAT', 2, '6B', 'benedita.gonzalez@gmail.com'),
(6, 'PORT', 2, '6B', 'benedita.gonzalez@gmail.com'),
(2, 'ART', 2, '6C', 'benedita.gonzalez@gmail.com'),
(4, 'CIEN', 2, '6C', 'benedita.gonzalez@gmail.com'),
(2, 'EDF', 2, '6C', 'benedita.gonzalez@gmail.com'),
(3, 'GEO', 2, '6C', 'benedita.gonzalez@gmail.com'),
(3, 'HIST', 2, '6C', 'benedita.gonzalez@gmail.com'),
(2, 'ING', 2, '6C', 'benedita.gonzalez@gmail.com'),
(5, 'MAT', 2, '6C', 'benedita.gonzalez@gmail.com'),
(6, 'PORT', 2, '6C', 'benedita.gonzalez@gmail.com'),

(2, 'ART', 2, '7A', 'benedita.gonzalez@gmail.com'),
(4, 'CIEN', 2, '7A', 'benedita.gonzalez@gmail.com'),
(2, 'EDF', 2, '7A', 'benedita.gonzalez@gmail.com'),
(3, 'GEO', 2, '7A', 'benedita.gonzalez@gmail.com'),
(3, 'HIST', 2, '7A', 'benedita.gonzalez@gmail.com'),
(2, 'ING', 2, '7A', 'benedita.gonzalez@gmail.com'),
(5, 'MAT', 2, '7A', 'benedita.gonzalez@gmail.com'),
(6, 'PORT', 2, '7A', 'benedita.gonzalez@gmail.com'),
(2, 'ART', 2, '7B', 'benedita.gonzalez@gmail.com'),
(4, 'CIEN', 2, '7B', 'benedita.gonzalez@gmail.com'),
(2, 'EDF', 2, '7B', 'benedita.gonzalez@gmail.com'),
(3, 'GEO', 2, '7B', 'benedita.gonzalez@gmail.com'),
(3, 'HIST', 2, '7B', 'benedita.gonzalez@gmail.com'),
(2, 'ING', 2, '7B', 'benedita.gonzalez@gmail.com'),
(5, 'MAT', 2, '7B', 'benedita.gonzalez@gmail.com'),
(6, 'PORT', 2, '7B', 'benedita.gonzalez@gmail.com'),
(2, 'ART', 2, '7C', 'benedita.gonzalez@gmail.com'),
(4, 'CIEN', 2, '7C', 'benedita.gonzalez@gmail.com'),
(2, 'EDF', 2, '7C', 'benedita.gonzalez@gmail.com'),
(3, 'GEO', 2, '7C', 'benedita.gonzalez@gmail.com'),
(3, 'HIST', 2, '7C', 'benedita.gonzalez@gmail.com'),
(2, 'ING', 2, '7C', 'benedita.gonzalez@gmail.com'),
(5, 'MAT', 2, '7C', 'benedita.gonzalez@gmail.com'),
(6, 'PORT', 2, '7C', 'benedita.gonzalez@gmail.com'),

(2, 'ART', 2, '8A', 'benedita.gonzalez@gmail.com'),
(4, 'CIEN', 2, '8A', 'benedita.gonzalez@gmail.com'),
(2, 'EDF', 2, '8A', 'benedita.gonzalez@gmail.com'),
(3, 'GEO', 2, '8A', 'benedita.gonzalez@gmail.com'),
(3, 'HIST', 2, '8A', 'benedita.gonzalez@gmail.com'),
(2, 'ING', 2, '8A', 'benedita.gonzalez@gmail.com'),
(5, 'MAT', 2, '8A', 'benedita.gonzalez@gmail.com'),
(6, 'PORT', 2, '8A', 'benedita.gonzalez@gmail.com'),
(2, 'ART', 2, '8B', 'benedita.gonzalez@gmail.com'),
(4, 'CIEN', 2, '8B', 'benedita.gonzalez@gmail.com'),
(2, 'EDF', 2, '8B', 'benedita.gonzalez@gmail.com'),
(3, 'GEO', 2, '8B', 'benedita.gonzalez@gmail.com'),
(3, 'HIST', 2, '8B', 'benedita.gonzalez@gmail.com'),
(2, 'ING', 2, '8B', 'benedita.gonzalez@gmail.com'),
(5, 'MAT', 2, '8B', 'benedita.gonzalez@gmail.com'),
(6, 'PORT', 2, '8B', 'benedita.gonzalez@gmail.com'),
(2, 'ART', 2, '8C', 'benedita.gonzalez@gmail.com'),
(4, 'CIEN', 2, '8C', 'benedita.gonzalez@gmail.com'),
(2, 'EDF', 2, '8C', 'benedita.gonzalez@gmail.com'),
(3, 'GEO', 2, '8C', 'benedita.gonzalez@gmail.com'),
(3, 'HIST', 2, '8C', 'benedita.gonzalez@gmail.com'),
(2, 'ING', 2, '8C', 'benedita.gonzalez@gmail.com'),
(5, 'MAT', 2, '8C', 'benedita.gonzalez@gmail.com'),
(6, 'PORT', 2, '8C', 'benedita.gonzalez@gmail.com'),

(2, 'ART', 2, '9A', 'benedita.gonzalez@gmail.com'),
(4, 'CIEN', 2, '9A', 'benedita.gonzalez@gmail.com'),
(2, 'EDF', 2, '9A', 'benedita.gonzalez@gmail.com'),
(3, 'GEO', 2, '9A', 'benedita.gonzalez@gmail.com'),
(3, 'HIST', 2, '9A', 'benedita.gonzalez@gmail.com'),
(2, 'ING', 2, '9A', 'benedita.gonzalez@gmail.com'),
(5, 'MAT', 2, '9A', 'benedita.gonzalez@gmail.com'),
(6, 'PORT', 2, '9A', 'benedita.gonzalez@gmail.com'),
(2, 'ART', 2, '9B', 'benedita.gonzalez@gmail.com'),
(4, 'CIEN', 2, '9B', 'benedita.gonzalez@gmail.com'),
(2, 'EDF', 2, '9B', 'benedita.gonzalez@gmail.com'),
(3, 'GEO', 2, '9B', 'benedita.gonzalez@gmail.com'),
(3, 'HIST', 2, '9B', 'benedita.gonzalez@gmail.com'),
(2, 'ING', 2, '9B', 'benedita.gonzalez@gmail.com'),
(5, 'MAT', 2, '9B', 'benedita.gonzalez@gmail.com'),
(6, 'PORT', 2, '9B', 'benedita.gonzalez@gmail.com'),
(2, 'ART', 2, '9C', 'benedita.gonzalez@gmail.com'),
(4, 'CIEN', 2, '9C', 'benedita.gonzalez@gmail.com'),
(2, 'EDF', 2, '9C', 'benedita.gonzalez@gmail.com'),
(3, 'GEO', 2, '9C', 'benedita.gonzalez@gmail.com'),
(3, 'HIST', 2, '9C', 'benedita.gonzalez@gmail.com'),
(2, 'ING', 2, '9C', 'benedita.gonzalez@gmail.com'),
(5, 'MAT', 2, '9C', 'benedita.gonzalez@gmail.com'),
(6, 'PORT', 2, '9C', 'benedita.gonzalez@gmail.com');

INSERT INTO aula VALUES
-- DIrce Gracia
(2, 'ART', 2, '6A', 'dirce.gracia@gmail.com'),
(4, 'CIEN', 2, '6A', 'dirce.gracia@gmail.com'),
(2, 'EDF', 2, '6A', 'dirce.gracia@gmail.com'),
(3, 'GEO', 2, '6A', 'dirce.gracia@gmail.com'),
(3, 'HIST', 2, '6A', 'dirce.gracia@gmail.com'),
(2, 'ING', 2, '6A', 'dirce.gracia@gmail.com'),
(5, 'MAT', 2, '6A', 'dirce.gracia@gmail.com'),
(6, 'PORT', 2, '6A', 'dirce.gracia@gmail.com'),
(2, 'ART', 2, '6B', 'dirce.gracia@gmail.com'),
(4, 'CIEN', 2, '6B', 'dirce.gracia@gmail.com'),
(2, 'EDF', 2, '6B', 'dirce.gracia@gmail.com'),
(3, 'GEO', 2, '6B', 'dirce.gracia@gmail.com'),
(3, 'HIST', 2, '6B', 'dirce.gracia@gmail.com'),
(2, 'ING', 2, '6B', 'dirce.gracia@gmail.com'),
(5, 'MAT', 2, '6B', 'dirce.gracia@gmail.com'),
(6, 'PORT', 2, '6B', 'dirce.gracia@gmail.com'),
(2, 'ART', 2, '6C', 'dirce.gracia@gmail.com'),
(4, 'CIEN', 2, '6C', 'dirce.gracia@gmail.com'),
(2, 'EDF', 2, '6C', 'dirce.gracia@gmail.com'),
(3, 'GEO', 2, '6C', 'dirce.gracia@gmail.com'),
(3, 'HIST', 2, '6C', 'dirce.gracia@gmail.com'),
(2, 'ING', 2, '6C', 'dirce.gracia@gmail.com'),
(5, 'MAT', 2, '6C', 'dirce.gracia@gmail.com'),
(6, 'PORT', 2, '6C', 'dirce.gracia@gmail.com'),
(2, 'ART', 2, '6D', 'dirce.gracia@gmail.com'),
(4, 'CIEN', 2, '6D', 'dirce.gracia@gmail.com'),
(2, 'EDF', 2, '6D', 'dirce.gracia@gmail.com'),
(3, 'GEO', 2, '6D', 'dirce.gracia@gmail.com'),
(3, 'HIST', 2, '6D', 'dirce.gracia@gmail.com'),
(2, 'ING', 2, '6D', 'dirce.gracia@gmail.com'),
(5, 'MAT', 2, '6D', 'dirce.gracia@gmail.com'),
(6, 'PORT', 2, '6D', 'dirce.gracia@gmail.com'),
(2, 'ART', 2, '6E', 'dirce.gracia@gmail.com'),
(4, 'CIEN', 2, '6E', 'dirce.gracia@gmail.com'),
(2, 'EDF', 2, '6E', 'dirce.gracia@gmail.com'),
(3, 'GEO', 2, '6E', 'dirce.gracia@gmail.com'),
(3, 'HIST', 2, '6E', 'dirce.gracia@gmail.com'),
(2, 'ING', 2, '6E', 'dirce.gracia@gmail.com'),
(5, 'MAT', 2, '6E', 'dirce.gracia@gmail.com'),
(6, 'PORT', 2, '6E', 'dirce.gracia@gmail.com'),

(2, 'ART', 2, '7A', 'dirce.gracia@gmail.com'),
(4, 'CIEN', 2, '7A', 'dirce.gracia@gmail.com'),
(2, 'EDF', 2, '7A', 'dirce.gracia@gmail.com'),
(3, 'GEO', 2, '7A', 'dirce.gracia@gmail.com'),
(3, 'HIST', 2, '7A', 'dirce.gracia@gmail.com'),
(2, 'ING', 2, '7A', 'dirce.gracia@gmail.com'),
(5, 'MAT', 2, '7A', 'dirce.gracia@gmail.com'),
(6, 'PORT', 2, '7A', 'dirce.gracia@gmail.com'),
(2, 'ART', 2, '7B', 'dirce.gracia@gmail.com'),
(4, 'CIEN', 2, '7B', 'dirce.gracia@gmail.com'),
(2, 'EDF', 2, '7B', 'dirce.gracia@gmail.com'),
(3, 'GEO', 2, '7B', 'dirce.gracia@gmail.com'),
(3, 'HIST', 2, '7B', 'dirce.gracia@gmail.com'),
(2, 'ING', 2, '7B', 'dirce.gracia@gmail.com'),
(5, 'MAT', 2, '7B', 'dirce.gracia@gmail.com'),
(6, 'PORT', 2, '7B', 'dirce.gracia@gmail.com'),
(2, 'ART', 2, '7C', 'dirce.gracia@gmail.com'),
(4, 'CIEN', 2, '7C', 'dirce.gracia@gmail.com'),
(2, 'EDF', 2, '7C', 'dirce.gracia@gmail.com'),
(3, 'GEO', 2, '7C', 'dirce.gracia@gmail.com'),
(3, 'HIST', 2, '7C', 'dirce.gracia@gmail.com'),
(2, 'ING', 2, '7C', 'dirce.gracia@gmail.com'),
(5, 'MAT', 2, '7C', 'dirce.gracia@gmail.com'),
(6, 'PORT', 2, '7C', 'dirce.gracia@gmail.com'),
(2, 'ART', 2, '7D', 'dirce.gracia@gmail.com'),
(4, 'CIEN', 2, '7D', 'dirce.gracia@gmail.com'),
(2, 'EDF', 2, '7D', 'dirce.gracia@gmail.com'),
(3, 'GEO', 2, '7D', 'dirce.gracia@gmail.com'),
(3, 'HIST', 2, '7D', 'dirce.gracia@gmail.com'),
(2, 'ING', 2, '7D', 'dirce.gracia@gmail.com'),
(5, 'MAT', 2, '7D', 'dirce.gracia@gmail.com'),
(6, 'PORT', 2, '7D', 'dirce.gracia@gmail.com'),
(2, 'ART', 2, '7E', 'dirce.gracia@gmail.com'),
(4, 'CIEN', 2, '7E', 'dirce.gracia@gmail.com'),
(2, 'EDF', 2, '7E', 'dirce.gracia@gmail.com'),
(3, 'GEO', 2, '7E', 'dirce.gracia@gmail.com'),
(3, 'HIST', 2, '7E', 'dirce.gracia@gmail.com'),
(2, 'ING', 2, '7E', 'dirce.gracia@gmail.com'),
(5, 'MAT', 2, '7E', 'dirce.gracia@gmail.com'),
(6, 'PORT', 2, '7E', 'dirce.gracia@gmail.com'),

(2, 'ART', 2, '8A', 'dirce.gracia@gmail.com'),
(4, 'CIEN', 2, '8A', 'dirce.gracia@gmail.com'),
(2, 'EDF', 2, '8A', 'dirce.gracia@gmail.com'),
(3, 'GEO', 2, '8A', 'dirce.gracia@gmail.com'),
(3, 'HIST', 2, '8A', 'dirce.gracia@gmail.com'),
(2, 'ING', 2, '8A', 'dirce.gracia@gmail.com'),
(5, 'MAT', 2, '8A', 'dirce.gracia@gmail.com'),
(6, 'PORT', 2, '8A', 'dirce.gracia@gmail.com'),
(2, 'ART', 2, '8B', 'dirce.gracia@gmail.com'),
(4, 'CIEN', 2, '8B', 'dirce.gracia@gmail.com'),
(2, 'EDF', 2, '8B', 'dirce.gracia@gmail.com'),
(3, 'GEO', 2, '8B', 'dirce.gracia@gmail.com'),
(3, 'HIST', 2, '8B', 'dirce.gracia@gmail.com'),
(2, 'ING', 2, '8B', 'dirce.gracia@gmail.com'),
(5, 'MAT', 2, '8B', 'dirce.gracia@gmail.com'),
(6, 'PORT', 2, '8B', 'dirce.gracia@gmail.com'),
(2, 'ART', 2, '8C', 'dirce.gracia@gmail.com'),
(4, 'CIEN', 2, '8C', 'dirce.gracia@gmail.com'),
(2, 'EDF', 2, '8C', 'dirce.gracia@gmail.com'),
(3, 'GEO', 2, '8C', 'dirce.gracia@gmail.com'),
(3, 'HIST', 2, '8C', 'dirce.gracia@gmail.com'),
(2, 'ING', 2, '8C', 'dirce.gracia@gmail.com'),
(5, 'MAT', 2, '8C', 'dirce.gracia@gmail.com'),
(6, 'PORT', 2, '8C', 'dirce.gracia@gmail.com'),
(2, 'ART', 2, '8D', 'dirce.gracia@gmail.com'),
(4, 'CIEN', 2, '8D', 'dirce.gracia@gmail.com'),
(2, 'EDF', 2, '8D', 'dirce.gracia@gmail.com'),
(3, 'GEO', 2, '8D', 'dirce.gracia@gmail.com'),
(3, 'HIST', 2, '8D', 'dirce.gracia@gmail.com'),
(2, 'ING', 2, '8D', 'dirce.gracia@gmail.com'),
(5, 'MAT', 2, '8D', 'dirce.gracia@gmail.com'),
(6, 'PORT', 2, '8D', 'dirce.gracia@gmail.com'),
(2, 'ART', 2, '8E', 'dirce.gracia@gmail.com'),
(4, 'CIEN', 2, '8E', 'dirce.gracia@gmail.com'),
(2, 'EDF', 2, '8E', 'dirce.gracia@gmail.com'),
(3, 'GEO', 2, '8E', 'dirce.gracia@gmail.com'),
(3, 'HIST', 2, '8E', 'dirce.gracia@gmail.com'),
(2, 'ING', 2, '8E', 'dirce.gracia@gmail.com'),
(5, 'MAT', 2, '8E', 'dirce.gracia@gmail.com'),
(6, 'PORT', 2, '8E', 'dirce.gracia@gmail.com'),

(2, 'ART', 2, '9A', 'dirce.gracia@gmail.com'),
(4, 'CIEN', 2, '9A', 'dirce.gracia@gmail.com'),
(2, 'EDF', 2, '9A', 'dirce.gracia@gmail.com'),
(3, 'GEO', 2, '9A', 'dirce.gracia@gmail.com'),
(3, 'HIST', 2, '9A', 'dirce.gracia@gmail.com'),
(2, 'ING', 2, '9A', 'dirce.gracia@gmail.com'),
(5, 'MAT', 2, '9A', 'dirce.gracia@gmail.com'),
(6, 'PORT', 2, '9A', 'dirce.gracia@gmail.com'),
(2, 'ART', 2, '9B', 'dirce.gracia@gmail.com'),
(4, 'CIEN', 2, '9B', 'dirce.gracia@gmail.com'),
(2, 'EDF', 2, '9B', 'dirce.gracia@gmail.com'),
(3, 'GEO', 2, '9B', 'dirce.gracia@gmail.com'),
(3, 'HIST', 2, '9B', 'dirce.gracia@gmail.com'),
(2, 'ING', 2, '9B', 'dirce.gracia@gmail.com'),
(5, 'MAT', 2, '9B', 'dirce.gracia@gmail.com'),
(6, 'PORT', 2, '9B', 'dirce.gracia@gmail.com'),
(2, 'ART', 2, '9C', 'dirce.gracia@gmail.com'),
(4, 'CIEN', 2, '9C', 'dirce.gracia@gmail.com'),
(2, 'EDF', 2, '9C', 'dirce.gracia@gmail.com'),
(3, 'GEO', 2, '9C', 'dirce.gracia@gmail.com'),
(3, 'HIST', 2, '9C', 'dirce.gracia@gmail.com'),
(2, 'ING', 2, '9C', 'dirce.gracia@gmail.com'),
(5, 'MAT', 2, '9C', 'dirce.gracia@gmail.com'),
(6, 'PORT', 2, '9C', 'dirce.gracia@gmail.com'),
(2, 'ART', 2, '9D', 'dirce.gracia@gmail.com'),
(4, 'CIEN', 2, '9D', 'dirce.gracia@gmail.com'),
(2, 'EDF', 2, '9D', 'dirce.gracia@gmail.com'),
(3, 'GEO', 2, '9D', 'dirce.gracia@gmail.com'),
(3, 'HIST', 2, '9D', 'dirce.gracia@gmail.com'),
(2, 'ING', 2, '9D', 'dirce.gracia@gmail.com'),
(5, 'MAT', 2, '9D', 'dirce.gracia@gmail.com'),
(6, 'PORT', 2, '9D', 'dirce.gracia@gmail.com'),
(2, 'ART', 2, '9E', 'dirce.gracia@gmail.com'),
(4, 'CIEN', 2, '9E', 'dirce.gracia@gmail.com'),
(2, 'EDF', 2, '9E', 'dirce.gracia@gmail.com'),
(3, 'GEO', 2, '9E', 'dirce.gracia@gmail.com'),
(3, 'HIST', 2, '9E', 'dirce.gracia@gmail.com'),
(2, 'ING', 2, '9E', 'dirce.gracia@gmail.com'),
(5, 'MAT', 2, '9E', 'dirce.gracia@gmail.com'),
(6, 'PORT', 2, '9E', 'dirce.gracia@gmail.com');

INSERT INTO aula VALUES
-- Francisco Figueiredo
(2, 'ART', 2, '6A', 'francisco.figueiredo@gmail.com'),
(4, 'CIEN', 2, '6A', 'francisco.figueiredo@gmail.com'),
(2, 'EDF', 2, '6A', 'francisco.figueiredo@gmail.com'),
(3, 'GEO', 2, '6A', 'francisco.figueiredo@gmail.com'),
(3, 'HIST', 2, '6A', 'francisco.figueiredo@gmail.com'),
(2, 'ING', 2, '6A', 'francisco.figueiredo@gmail.com'),
(5, 'MAT', 2, '6A', 'francisco.figueiredo@gmail.com'),
(6, 'PORT', 2, '6A', 'francisco.figueiredo@gmail.com'),
(2, 'ART', 2, '6B', 'francisco.figueiredo@gmail.com'),
(4, 'CIEN', 2, '6B', 'francisco.figueiredo@gmail.com'),
(2, 'EDF', 2, '6B', 'francisco.figueiredo@gmail.com'),
(3, 'GEO', 2, '6B', 'francisco.figueiredo@gmail.com'),
(3, 'HIST', 2, '6B', 'francisco.figueiredo@gmail.com'),
(2, 'ING', 2, '6B', 'francisco.figueiredo@gmail.com'),
(5, 'MAT', 2, '6B', 'francisco.figueiredo@gmail.com'),
(6, 'PORT', 2, '6B', 'francisco.figueiredo@gmail.com'),
(2, 'ART', 2, '6C', 'francisco.figueiredo@gmail.com'),
(4, 'CIEN', 2, '6C', 'francisco.figueiredo@gmail.com'),
(2, 'EDF', 2, '6C', 'francisco.figueiredo@gmail.com'),
(3, 'GEO', 2, '6C', 'francisco.figueiredo@gmail.com'),
(3, 'HIST', 2, '6C', 'francisco.figueiredo@gmail.com'),
(2, 'ING', 2, '6C', 'francisco.figueiredo@gmail.com'),
(5, 'MAT', 2, '6C', 'francisco.figueiredo@gmail.com'),
(6, 'PORT', 2, '6C', 'francisco.figueiredo@gmail.com'),
(2, 'ART', 2, '6D', 'francisco.figueiredo@gmail.com'),
(4, 'CIEN', 2, '6D', 'francisco.figueiredo@gmail.com'),
(2, 'EDF', 2, '6D', 'francisco.figueiredo@gmail.com'),
(3, 'GEO', 2, '6D', 'francisco.figueiredo@gmail.com'),
(3, 'HIST', 2, '6D', 'francisco.figueiredo@gmail.com'),
(2, 'ING', 2, '6D', 'francisco.figueiredo@gmail.com'),
(5, 'MAT', 2, '6D', 'francisco.figueiredo@gmail.com'),
(6, 'PORT', 2, '6D', 'francisco.figueiredo@gmail.com'),
(2, 'ART', 2, '6E', 'francisco.figueiredo@gmail.com'),
(4, 'CIEN', 2, '6E', 'francisco.figueiredo@gmail.com'),
(2, 'EDF', 2, '6E', 'francisco.figueiredo@gmail.com'),
(3, 'GEO', 2, '6E', 'francisco.figueiredo@gmail.com'),
(3, 'HIST', 2, '6E', 'francisco.figueiredo@gmail.com'),
(2, 'ING', 2, '6E', 'francisco.figueiredo@gmail.com'),
(5, 'MAT', 2, '6E', 'francisco.figueiredo@gmail.com'),
(6, 'PORT', 2, '6E', 'francisco.figueiredo@gmail.com'),

(2, 'ART', 2, '7A', 'francisco.figueiredo@gmail.com'),
(4, 'CIEN', 2, '7A', 'francisco.figueiredo@gmail.com'),
(2, 'EDF', 2, '7A', 'francisco.figueiredo@gmail.com'),
(3, 'GEO', 2, '7A', 'francisco.figueiredo@gmail.com'),
(3, 'HIST', 2, '7A', 'francisco.figueiredo@gmail.com'),
(2, 'ING', 2, '7A', 'francisco.figueiredo@gmail.com'),
(5, 'MAT', 2, '7A', 'francisco.figueiredo@gmail.com'),
(6, 'PORT', 2, '7A', 'francisco.figueiredo@gmail.com'),
(2, 'ART', 2, '7B', 'francisco.figueiredo@gmail.com'),
(4, 'CIEN', 2, '7B', 'francisco.figueiredo@gmail.com'),
(2, 'EDF', 2, '7B', 'francisco.figueiredo@gmail.com'),
(3, 'GEO', 2, '7B', 'francisco.figueiredo@gmail.com'),
(3, 'HIST', 2, '7B', 'francisco.figueiredo@gmail.com'),
(2, 'ING', 2, '7B', 'francisco.figueiredo@gmail.com'),
(5, 'MAT', 2, '7B', 'francisco.figueiredo@gmail.com'),
(6, 'PORT', 2, '7B', 'francisco.figueiredo@gmail.com'),
(2, 'ART', 2, '7C', 'francisco.figueiredo@gmail.com'),
(4, 'CIEN', 2, '7C', 'francisco.figueiredo@gmail.com'),
(2, 'EDF', 2, '7C', 'francisco.figueiredo@gmail.com'),
(3, 'GEO', 2, '7C', 'francisco.figueiredo@gmail.com'),
(3, 'HIST', 2, '7C', 'francisco.figueiredo@gmail.com'),
(2, 'ING', 2, '7C', 'francisco.figueiredo@gmail.com'),
(5, 'MAT', 2, '7C', 'francisco.figueiredo@gmail.com'),
(6, 'PORT', 2, '7C', 'francisco.figueiredo@gmail.com'),
(2, 'ART', 2, '7D', 'francisco.figueiredo@gmail.com'),
(4, 'CIEN', 2, '7D', 'francisco.figueiredo@gmail.com'),
(2, 'EDF', 2, '7D', 'francisco.figueiredo@gmail.com'),
(3, 'GEO', 2, '7D', 'francisco.figueiredo@gmail.com'),
(3, 'HIST', 2, '7D', 'francisco.figueiredo@gmail.com'),
(2, 'ING', 2, '7D', 'francisco.figueiredo@gmail.com'),
(5, 'MAT', 2, '7D', 'francisco.figueiredo@gmail.com'),
(6, 'PORT', 2, '7D', 'francisco.figueiredo@gmail.com'),
(2, 'ART', 2, '7E', 'francisco.figueiredo@gmail.com'),
(4, 'CIEN', 2, '7E', 'francisco.figueiredo@gmail.com'),
(2, 'EDF', 2, '7E', 'francisco.figueiredo@gmail.com'),
(3, 'GEO', 2, '7E', 'francisco.figueiredo@gmail.com'),
(3, 'HIST', 2, '7E', 'francisco.figueiredo@gmail.com'),
(2, 'ING', 2, '7E', 'francisco.figueiredo@gmail.com'),
(5, 'MAT', 2, '7E', 'francisco.figueiredo@gmail.com'),
(6, 'PORT', 2, '7E', 'francisco.figueiredo@gmail.com'),

(2, 'ART', 2, '8A', 'francisco.figueiredo@gmail.com'),
(4, 'CIEN', 2, '8A', 'francisco.figueiredo@gmail.com'),
(2, 'EDF', 2, '8A', 'francisco.figueiredo@gmail.com'),
(3, 'GEO', 2, '8A', 'francisco.figueiredo@gmail.com'),
(3, 'HIST', 2, '8A', 'francisco.figueiredo@gmail.com'),
(2, 'ING', 2, '8A', 'francisco.figueiredo@gmail.com'),
(5, 'MAT', 2, '8A', 'francisco.figueiredo@gmail.com'),
(6, 'PORT', 2, '8A', 'francisco.figueiredo@gmail.com'),
(2, 'ART', 2, '8B', 'francisco.figueiredo@gmail.com'),
(4, 'CIEN', 2, '8B', 'francisco.figueiredo@gmail.com'),
(2, 'EDF', 2, '8B', 'francisco.figueiredo@gmail.com'),
(3, 'GEO', 2, '8B', 'francisco.figueiredo@gmail.com'),
(3, 'HIST', 2, '8B', 'francisco.figueiredo@gmail.com'),
(2, 'ING', 2, '8B', 'francisco.figueiredo@gmail.com'),
(5, 'MAT', 2, '8B', 'francisco.figueiredo@gmail.com'),
(6, 'PORT', 2, '8B', 'francisco.figueiredo@gmail.com'),
(2, 'ART', 2, '8C', 'francisco.figueiredo@gmail.com'),
(4, 'CIEN', 2, '8C', 'francisco.figueiredo@gmail.com'),
(2, 'EDF', 2, '8C', 'francisco.figueiredo@gmail.com'),
(3, 'GEO', 2, '8C', 'francisco.figueiredo@gmail.com'),
(3, 'HIST', 2, '8C', 'francisco.figueiredo@gmail.com'),
(2, 'ING', 2, '8C', 'francisco.figueiredo@gmail.com'),
(5, 'MAT', 2, '8C', 'francisco.figueiredo@gmail.com'),
(6, 'PORT', 2, '8C', 'francisco.figueiredo@gmail.com'),
(2, 'ART', 2, '8D', 'francisco.figueiredo@gmail.com'),
(4, 'CIEN', 2, '8D', 'francisco.figueiredo@gmail.com'),
(2, 'EDF', 2, '8D', 'francisco.figueiredo@gmail.com'),
(3, 'GEO', 2, '8D', 'francisco.figueiredo@gmail.com'),
(3, 'HIST', 2, '8D', 'francisco.figueiredo@gmail.com'),
(2, 'ING', 2, '8D', 'francisco.figueiredo@gmail.com'),
(5, 'MAT', 2, '8D', 'francisco.figueiredo@gmail.com'),
(6, 'PORT', 2, '8D', 'francisco.figueiredo@gmail.com'),
(2, 'ART', 2, '8E', 'francisco.figueiredo@gmail.com'),
(4, 'CIEN', 2, '8E', 'francisco.figueiredo@gmail.com'),
(2, 'EDF', 2, '8E', 'francisco.figueiredo@gmail.com'),
(3, 'GEO', 2, '8E', 'francisco.figueiredo@gmail.com'),
(3, 'HIST', 2, '8E', 'francisco.figueiredo@gmail.com'),
(2, 'ING', 2, '8E', 'francisco.figueiredo@gmail.com'),
(5, 'MAT', 2, '8E', 'francisco.figueiredo@gmail.com'),
(6, 'PORT', 2, '8E', 'francisco.figueiredo@gmail.com'),

(2, 'ART', 2, '9A', 'francisco.figueiredo@gmail.com'),
(4, 'CIEN', 2, '9A', 'francisco.figueiredo@gmail.com'),
(2, 'EDF', 2, '9A', 'francisco.figueiredo@gmail.com'),
(3, 'GEO', 2, '9A', 'francisco.figueiredo@gmail.com'),
(3, 'HIST', 2, '9A', 'francisco.figueiredo@gmail.com'),
(2, 'ING', 2, '9A', 'francisco.figueiredo@gmail.com'),
(5, 'MAT', 2, '9A', 'francisco.figueiredo@gmail.com'),
(6, 'PORT', 2, '9A', 'francisco.figueiredo@gmail.com'),
(2, 'ART', 2, '9B', 'francisco.figueiredo@gmail.com'),
(4, 'CIEN', 2, '9B', 'francisco.figueiredo@gmail.com'),
(2, 'EDF', 2, '9B', 'francisco.figueiredo@gmail.com'),
(3, 'GEO', 2, '9B', 'francisco.figueiredo@gmail.com'),
(3, 'HIST', 2, '9B', 'francisco.figueiredo@gmail.com'),
(2, 'ING', 2, '9B', 'francisco.figueiredo@gmail.com'),
(5, 'MAT', 2, '9B', 'francisco.figueiredo@gmail.com'),
(6, 'PORT', 2, '9B', 'francisco.figueiredo@gmail.com'),
(2, 'ART', 2, '9C', 'francisco.figueiredo@gmail.com'),
(4, 'CIEN', 2, '9C', 'francisco.figueiredo@gmail.com'),
(2, 'EDF', 2, '9C', 'francisco.figueiredo@gmail.com'),
(3, 'GEO', 2, '9C', 'francisco.figueiredo@gmail.com'),
(3, 'HIST', 2, '9C', 'francisco.figueiredo@gmail.com'),
(2, 'ING', 2, '9C', 'francisco.figueiredo@gmail.com'),
(5, 'MAT', 2, '9C', 'francisco.figueiredo@gmail.com'),
(6, 'PORT', 2, '9C', 'francisco.figueiredo@gmail.com'),
(2, 'ART', 2, '9D', 'francisco.figueiredo@gmail.com'),
(4, 'CIEN', 2, '9D', 'francisco.figueiredo@gmail.com'),
(2, 'EDF', 2, '9D', 'francisco.figueiredo@gmail.com'),
(3, 'GEO', 2, '9D', 'francisco.figueiredo@gmail.com'),
(3, 'HIST', 2, '9D', 'francisco.figueiredo@gmail.com'),
(2, 'ING', 2, '9D', 'francisco.figueiredo@gmail.com'),
(5, 'MAT', 2, '9D', 'francisco.figueiredo@gmail.com'),
(6, 'PORT', 2, '9D', 'francisco.figueiredo@gmail.com');

-- Avisos
insert into aviso values ('Professor afastado por doença', 'erica.campos@gmail.com','adelaide.fernandes@gmail.com', 1, '2025-05-01 08:00:00', 0);
insert into aviso values ('Professor solicitou aposentadoria', 'erica.campos@gmail.com', 'afonso.nunes@gmail.com', 2, '2025-05-02 09:00:00', 0);
insert into aviso values ('Professor solicitou aposentadoria', 'erica.campos@gmail.com', 'afonso.nunes@gmail.com', 2, '2025-05-03 09:00:00', 1);
insert into aviso values ('Necessidade de substituição', 'erica.campos@gmail.com', 'angelina.daige@gmail.com', 3, '2025-05-03 10:00:00', 0);
insert into aviso values ('Afastamento por licença médica', 'erica.campos@gmail.com', 'antonio.almeida@gmail.com', 1, '2025-05-04 11:00:00', 0);
insert into aviso values ('Pedido de aposentadoria', 'erica.campos@gmail.com', 'aparecida.sinopoli@gmail.com', 2, '2025-05-05 12:00:00', 0);
insert into aviso values ('Novo assunto instituicaor', 'erica.campos@gmail.com', 'ary.souza@gmail.com', 3, '2025-05-06 13:00:00', 0);
insert into aviso values ('Professor em licença', 'erica.campos@gmail.com', 'augusto.antunes@gmail.com', 1, '2025-05-07 14:00:00', 0);
insert into aviso values ('Solicitação de aposentadoria', 'erica.campos@gmail.com', 'benedita.gonzalez@gmail.com', 3, '2025-05-08 15:00:00', 0);
insert into aviso values ('Professor afastado por cirurgia', 'erica.campos@gmail.com', 'catarina.salgado@gmail.com',1 , '2025-05-11 08:00:00', 0);
insert into aviso values ('Professor pediu aposentadoria', 'erica.campos@gmail.com', 'constantino.michaello@gmail.com', 2, '2025-05-12 09:00:00', 1);
insert into aviso values ('Licença por motivo de saúde', 'erica.campos@gmail.com', 'dirce.gracia@gmail.com',1, '2025-05-13 10:00:00', 1);
insert into aviso values ('Assunto instituicaorDIverso', 'erica.campos@gmail.com', 'domenico.rangoni@gmail.com',3, '2025-05-14 11:00:00', 1);
insert into aviso values ('Professor solicitou afastamento', 'erica.campos@gmail.com', 'ernesto.sobrinho@gmail.com', 1, '2025-05-15 12:00:00', 1);
insert into aviso values ('Aposentadoria de professor', 'erica.campos@gmail.com', 'francisco.figueiredo@gmail.com', 2, '2025-05-16 13:00:00', 1);
insert into aviso values ('Licença médica', 'erica.campos@gmail.com', 'franklin.roosevelt@gmail.com',1, '2025-05-17 14:00:00', 1);
insert into aviso values ('AssuntoDIverso', 'erica.campos@gmail.com', 'giusfredo.santini@gmail.com', 3, '2025-05-18 15:00:00', 1);
insert into aviso values ('Professor se afastou', 'erica.campos@gmail.com', 'gladston.jafet@gmail.com',1 , '2025-05-19 16:00:00', 0);
insert into aviso values ('Aposentadoria requerida', 'erica.campos@gmail.com', 'guilherme.furlani@gmail.com', 2, '2025-05-20 17:00:00', 0);
insert into aviso values ('Afastamento temporário', 'erica.campos@gmail.com', 'herbert.dow@gmail.com', 1, '2025-05-21 08:00:00', 0);
insert into aviso values ('Assunto instituicaor não especificado', 'erica.campos@gmail.com', 'herminia.vitiello@gmail.com', 3, '2025-05-22 09:00:00', 0);
insert into aviso values ('Professor em recuperação', 'erica.campos@gmail.com', 'ivonete.camara@gmail.com',1, '2025-05-23 10:00:00', 1);
insert into aviso values ('Solicitação de aposentadoria', 'erica.campos@gmail.com', 'jacirema.fontes@gmail.com', 2, '2025-05-24 11:00:00', 0);
insert into aviso values ('Afastamento por motivos médicos', 'erica.campos@gmail.com', 'joao.oliveira@gmail.com',1, '2025-05-25 12:00:00', 1);
insert into aviso values ('Pedido de aposentadoria recebido', 'erica.campos@gmail.com', 'jose.souza@gmail.com', 2, '2025-05-26 13:00:00', 1);
insert into aviso values ('Professor em licença temporária', 'erica.campos@gmail.com', 'lucia.santos@gmail.com',1, '2025-05-27 14:00:00', 0);
insert into aviso values ('Outro assunto relevante', 'erica.campos@gmail.com', 'lucimara.vicente@gmail.com',3, '2025-05-28 15:00:00', 0);
insert into aviso values ('Afastamento por saúde', 'erica.campos@gmail.com', 'magdalena.lourenco@gmail.com',1, '2025-05-29 16:00:00', 1);
insert into aviso values ('Outro assunto relevante', 'erica.campos@gmail.com', 'maria.lourdes@gmail.com',3, '2025-05-28 15:00:00', 0);
insert into aviso values ('Afastamento por saúde', 'erica.campos@gmail.com', 'maria.lourdes@gmail.com',1, '2025-05-29 16:00:00', 1);
insert into aviso values ('Pedido formal de aposentadoria', 'erica.campos@gmail.com', 'maria.araujo@gmail.com', 2, '2025-05-30 17:00:00', 0);


-- Jornada professores
Insert into jornada_escolhida values(33,'NC',1,2025,13231);
Insert into jornada_escolhida values(33,'NC',1,2025,12534);
Insert into jornada_escolhida values(33,'NC',1,2025,12137);
Insert into jornada_escolhida values(33,'NC',1,2025,12109);
Insert into jornada_escolhida values(33,'NC',1,2025,11445);
Insert into jornada_escolhida values(33,'NC',1,2025,11071);
Insert into jornada_escolhida values(33,'NC',1,2025,11069);
Insert into jornada_escolhida values(33,'NC',1,2025,11067);
Insert into jornada_escolhida values(33,'NC',1,2025,11063);
Insert into jornada_escolhida values(33,'NC',1,2025,11062);
Insert into jornada_escolhida values(33,'NC',1,2025,11061);
Insert into jornada_escolhida values(33,'NC',1,2025,11059);
Insert into jornada_escolhida values(33,'NC',1,2025,11058);
Insert into jornada_escolhida values(33,'NC',1,2025,11052);
Insert into jornada_escolhida values(33,'NC',1,2025,11049);
Insert into jornada_escolhida values(33,'NC',1,2025,11046);
Insert into jornada_escolhida values(33,'NC',1,2025,11044);
Insert into jornada_escolhida values(33,'NC',1,2025,11033);
Insert into jornada_escolhida values(33,'NC',1,2025,10609);
Insert into jornada_escolhida values(33,'NC',1,2025,10602);
Insert into jornada_escolhida values(33,'NC',1,2025,10595);
Insert into jornada_escolhida values(33,'NC',1,2025,10593);
Insert into jornada_escolhida values(33,'NC',1,2025,10589);
Insert into jornada_escolhida values(33,'NC',1,2025,10588);
Insert into jornada_escolhida values(33,'NC',1,2025,10584);
Insert into jornada_escolhida values(33,'NC',1,2025,10580);
Insert into jornada_escolhida values(33,'NC',1,2025,10575);
Insert into jornada_escolhida values(33,'NC',1,2025,10573);
Insert into jornada_escolhida values(33,'NC',1,2025,10572);
Insert into jornada_escolhida values(33,'NC',1,2025,10565);
Insert into jornada_escolhida values(33,'NC',1,2025,10561);
Insert into jornada_escolhida values(33,'NC',1,2025,10556);
Insert into jornada_escolhida values(33,'NC',1,2025,10555);
Insert into jornada_escolhida values(33,'NC',1,2025,10552);
Insert into jornada_escolhida values(33,'NC',1,2025,10548);
Insert into jornada_escolhida values(33,'NC',1,2025,10546);
Insert into jornada_escolhida values(33,'NC',1,2025,10544);
Insert into jornada_escolhida values(33,'NC',1,2025,10542);
Insert into jornada_escolhida values(33,'NC',1,2025,10528);
Insert into jornada_escolhida values(33,'NC',1,2025,10525);
Insert into jornada_escolhida values(33,'NC',1,2025,10524);
Insert into jornada_escolhida values(33,'NC',1,2025,10521);
Insert into jornada_escolhida values(33,'NC',1,2025,10519);
Insert into jornada_escolhida values(33,'NC',1,2025,10516);
Insert into jornada_escolhida values(33,'NC',1,2025,10508);
Insert into jornada_escolhida values(33,'NC',1,2025,10502);
Insert into jornada_escolhida values(33,'NC',1,2025,10496);
Insert into jornada_escolhida values(33,'NC',1,2025,10477);
Insert into jornada_escolhida values(33,'NC',1,2025,10469);
Insert into jornada_escolhida values(33,'NC',1,2025,10396);
Insert into jornada_escolhida values(33,'NC',1,2025,10337);
Insert into jornada_escolhida values(33,'NC',1,2025,10316);
Insert into jornada_escolhida values(33,'NC',1,2025,10310);
Insert into jornada_escolhida values(33,'NC',1,2025,10300);
Insert into jornada_escolhida values(33,'NC',1,2025,10299);
Insert into jornada_escolhida values(33,'NC',1,2025,10297);
Insert into jornada_escolhida values(33,'NC',1,2025,10285);
Insert into jornada_escolhida values(33,'NC',1,2025,10283);
Insert into jornada_escolhida values(33,'NC',1,2025,10282);
Insert into jornada_escolhida values(33,'NC',1,2025,10281);
Insert into jornada_escolhida values(33,'NC',1,2025,10270);
Insert into jornada_escolhida values(33,'NC',1,2025,10264);
Insert into jornada_escolhida values(33,'NC',1,2025,10261);
Insert into jornada_escolhida values(33,'NC',1,2025,10260);
Insert into jornada_escolhida values(33,'NC',1,2025,10174);
Insert into jornada_escolhida values(33,'NC',1,2025,9986);
Insert into jornada_escolhida values(33,'NC',1,2025,9953);
Insert into jornada_escolhida values(33,'NC',1,2025,9908);
Insert into jornada_escolhida values(33,'NC',1,2025,9863);
Insert into jornada_escolhida values(33,'NC',1,2025,9816);
Insert into jornada_escolhida values(33,'NC',1,2025,9812);
Insert into jornada_escolhida values(33,'NC',1,2025,9794);
Insert into jornada_escolhida values(33,'NC',1,2025,9791);
Insert into jornada_escolhida values(33,'NC',1,2025,9782);
Insert into jornada_escolhida values(33,'NC',1,2025,9768);
Insert into jornada_escolhida values(33,'NC',1,2025,9707);
Insert into jornada_escolhida values(33,'NC',1,2025,9687);
Insert into jornada_escolhida values(33,'NC',1,2025,9675);
Insert into jornada_escolhida values(33,'NC',1,2025,9658);
Insert into jornada_escolhida values(33,'NC',1,2025,9642);
Insert into jornada_escolhida values(33,'NC',1,2025,9641);
Insert into jornada_escolhida values(33,'NC',1,2025,9639);
Insert into jornada_escolhida values(33,'NC',1,2025,9637);
Insert into jornada_escolhida values(33,'NC',1,2025,9636);
Insert into jornada_escolhida values(33,'NC',1,2025,9612);
Insert into jornada_escolhida values(33,'NC',1,2025,9546);
Insert into jornada_escolhida values(33,'NC',1,2025,9520);
Insert into jornada_escolhida values(33,'NC',1,2025,9503);
Insert into jornada_escolhida values(33,'NC',1,2025,9433);
Insert into jornada_escolhida values(33,'NC',1,2025,9432);
Insert into jornada_escolhida values(33,'NC',1,2025,9423);
Insert into jornada_escolhida values(33,'NC',1,2025,8986);
Insert into jornada_escolhida values(33,'NC',1,2025,8974);
Insert into jornada_escolhida values(33,'NC',1,2025,8740);
Insert into jornada_escolhida values(33,'NC',1,2025,8676);
Insert into jornada_escolhida values(33,'NC',1,2025,8447);
Insert into jornada_escolhida values(33,'NC',1,2025,8437);
Insert into jornada_escolhida values(33,'NC',1,2025,8436);
Insert into jornada_escolhida values(33,'NC',1,2025,8431);
Insert into jornada_escolhida values(33,'NC',1,2025,8424);
Insert into jornada_escolhida values(33,'NC',1,2025,8422);
Insert into jornada_escolhida values(33,'NC',1,2025,8356);
Insert into jornada_escolhida values(33,'NC',1,2025,8354);
Insert into jornada_escolhida values(33,'NC',1,2025,8353);
Insert into jornada_escolhida values(33,'NC',1,2025,8346);
Insert into jornada_escolhida values(33,'NC',1,2025,8340);
Insert into jornada_escolhida values(33,'NC',1,2025,8339);
Insert into jornada_escolhida values(33,'NC',1,2025,8335);
Insert into jornada_escolhida values(33,'NC',1,2025,8332);
Insert into jornada_escolhida values(33,'NC',1,2025,8329);
Insert into jornada_escolhida values(33,'NC',1,2025,8323);
Insert into jornada_escolhida values(33,'NC',1,2025,8317);
Insert into jornada_escolhida values(33,'NC',1,2025,8316);
Insert into jornada_escolhida values(33,'NC',1,2025,8315);
Insert into jornada_escolhida values(33,'NC',1,2025,8300);
Insert into jornada_escolhida values(33,'NC',1,2025,8272);
Insert into jornada_escolhida values(33,'NC',1,2025,8268);
Insert into jornada_escolhida values(33,'NC',1,2025,8267);
Insert into jornada_escolhida values(33,'NC',1,2025,8259);
Insert into jornada_escolhida values(33,'NC',1,2025,8219);
Insert into jornada_escolhida values(33,'NC',1,2025,8217);
Insert into jornada_escolhida values(33,'NC',1,2025,8213);
Insert into jornada_escolhida values(33,'NC',1,2025,8211);
Insert into jornada_escolhida values(33,'NC',1,2025,8208);
Insert into jornada_escolhida values(33,'NC',1,2025,8205);
Insert into jornada_escolhida values(33,'NC',1,2025,8195);
Insert into jornada_escolhida values(33,'NC',1,2025,8193);
Insert into jornada_escolhida values(33,'NC',1,2025,8158);
Insert into jornada_escolhida values(33,'NC',1,2025,8149);
Insert into jornada_escolhida values(33,'NC',1,2025,8130);
Insert into jornada_escolhida values(33,'NC',1,2025,7970);
Insert into jornada_escolhida values(33,'NC',1,2025,7933);
Insert into jornada_escolhida values(33,'NC',1,2025,7927);
Insert into jornada_escolhida values(33,'NC',1,2025,7925);
Insert into jornada_escolhida values(33,'NC',1,2025,7924);
Insert into jornada_escolhida values(33,'NC',1,2025,7845);
Insert into jornada_escolhida values(33,'NC',1,2025,7835);
Insert into jornada_escolhida values(33,'NC',1,2025,7825);
Insert into jornada_escolhida values(33,'NC',1,2025,7822);
Insert into jornada_escolhida values(33,'NC',1,2025,7791);
Insert into jornada_escolhida values(33,'NC',1,2025,7773);
Insert into jornada_escolhida values(33,'NC',1,2025,7764);
Insert into jornada_escolhida values(33,'NC',1,2025,7716);
Insert into jornada_escolhida values(33,'NC',1,2025,7711);
Insert into jornada_escolhida values(33,'NC',1,2025,7701);
Insert into jornada_escolhida values(33,'NC',1,2025,7697);
Insert into jornada_escolhida values(33,'NC',1,2025,7688);
Insert into jornada_escolhida values(33,'NC',1,2025,7687);
Insert into jornada_escolhida values(33,'NC',1,2025,7686);
Insert into jornada_escolhida values(33,'NC',1,2025,7681);
Insert into jornada_escolhida values(33,'NC',1,2025,7457);
Insert into jornada_escolhida values(33,'NC',1,2025,7444);
Insert into jornada_escolhida values(33,'NC',1,2025,7426);
Insert into jornada_escolhida values(33,'NC',1,2025,7412);
Insert into jornada_escolhida values(33,'NC',1,2025,7409);
Insert into jornada_escolhida values(33,'NC',1,2025,7403);
Insert into jornada_escolhida values(33,'NC',1,2025,7399);
Insert into jornada_escolhida values(33,'NC',1,2025,7387);
Insert into jornada_escolhida values(33,'NC',1,2025,7377);
Insert into jornada_escolhida values(33,'NC',1,2025,7375);
Insert into jornada_escolhida values(33,'NC',1,2025,7372);
Insert into jornada_escolhida values(33,'NC',1,2025,7371);
Insert into jornada_escolhida values(33,'NC',1,2025,7365);
Insert into jornada_escolhida values(33,'NC',1,2025,7364);
Insert into jornada_escolhida values(33,'NC',1,2025,7325);
Insert into jornada_escolhida values(33,'NC',1,2025,7323);
Insert into jornada_escolhida values(33,'NC',1,2025,7294);
Insert into jornada_escolhida values(33,'NC',1,2025,7293);
Insert into jornada_escolhida values(33,'NC',1,2025,7274);
Insert into jornada_escolhida values(33,'NC',1,2025,7260);
Insert into jornada_escolhida values(33,'NC',1,2025,7253);
Insert into jornada_escolhida values(33,'NC',1,2025,7225);
Insert into jornada_escolhida values(33,'NC',1,2025,7224);
Insert into jornada_escolhida values(33,'NC',1,2025,7223);
Insert into jornada_escolhida values(33,'NC',1,2025,7183);
Insert into jornada_escolhida values(33,'NC',1,2025,7179);
Insert into jornada_escolhida values(33,'NC',1,2025,7177);
Insert into jornada_escolhida values(33,'NC',1,2025,7160);
Insert into jornada_escolhida values(33,'NC',1,2025,7151);
Insert into jornada_escolhida values(33,'NC',1,2025,7138);
Insert into jornada_escolhida values(33,'NC',1,2025,7137);
Insert into jornada_escolhida values(33,'NC',1,2025,7133);
Insert into jornada_escolhida values(33,'NC',1,2025,6960);
Insert into jornada_escolhida values(33,'NC',1,2025,6934);
Insert into jornada_escolhida values(33,'NC',1,2025,6931);
Insert into jornada_escolhida values(33,'NC',1,2025,6904);
Insert into jornada_escolhida values(33,'NC',1,2025,6899);
Insert into jornada_escolhida values(33,'NC',1,2025,6854);
Insert into jornada_escolhida values(33,'NC',1,2025,6853);
Insert into jornada_escolhida values(33,'NC',1,2025,6798);
Insert into jornada_escolhida values(33,'NC',1,2025,6767);
Insert into jornada_escolhida values(33,'NC',1,2025,6760);
Insert into jornada_escolhida values(33,'NC',1,2025,6694);

Insert into jornada_escolhida values(33,'NC',1,2025,6691);
Insert into jornada_escolhida values(33,'NC',1,2023,6691);
Insert into jornada_escolhida values(33,'NC',1,2022,6691);
Insert into jornada_escolhida values(33,'NC',1,2021,6691);
Insert into jornada_escolhida values(33,'NC',1,2020,6691);
Insert into jornada_escolhida values(33,'NC',1,2019,6691);

Insert into jornada_escolhida values(33,'NC',1,2025,6735);
Insert into jornada_escolhida values(33,'NC',1,2023,6735);
Insert into jornada_escolhida values(33,'NC',1,2022,6735);
Insert into jornada_escolhida values(33,'NC',1,2021,6735);
Insert into jornada_escolhida values(33,'NC',1,2020,6735);
Insert into jornada_escolhida values(33,'NC',1,2019,6735);

Insert into jornada_escolhida values(33,'NC',1,2025,3606);
Insert into jornada_escolhida values(33,'NC',1,2023,3606);
Insert into jornada_escolhida values(33,'NC',1,2022,3606);
Insert into jornada_escolhida values(33,'NC',1,2021,3606);
Insert into jornada_escolhida values(33,'NC',1,2020,3606);
Insert into jornada_escolhida values(33,'NC',1,2019,3606);

Insert into jornada_escolhida values(33,'NC',1,2025,6639);
Insert into jornada_escolhida values(33,'NC',1,2023,6639);
Insert into jornada_escolhida values(33,'NC',1,2022,6639);
Insert into jornada_escolhida values(33,'NC',1,2021,6639);
Insert into jornada_escolhida values(33,'NC',1,2020,6639);
Insert into jornada_escolhida values(33,'NC',1,2019,6639);

Insert into jornada_escolhida values(33,'NC',1,2025,10530);
Insert into jornada_escolhida values(33,'NC',1,2023,10530);
Insert into jornada_escolhida values(33,'NC',1,2022,10530);
Insert into jornada_escolhida values(33,'NC',1,2021,10530);
Insert into jornada_escolhida values(33,'NC',1,2020,10530);
Insert into jornada_escolhida values(33,'NC',1,2019,10530);

Insert into jornada_escolhida values(33,'NC',1,2025,8672);
Insert into jornada_escolhida values(33,'NC',1,2023,8672);
Insert into jornada_escolhida values(33,'NC',1,2022,8672);
Insert into jornada_escolhida values(33,'NC',1,2021,8672);
Insert into jornada_escolhida values(33,'NC',1,2020,8672);
Insert into jornada_escolhida values(33,'NC',1,2019,8672);

Insert into jornada_escolhida values(33,'NC',1,2025,6688);
Insert into jornada_escolhida values(33,'NC',1,2025,6682);
Insert into jornada_escolhida values(33,'NC',1,2025,6636);
Insert into jornada_escolhida values(33,'NC',1,2025,6632);
Insert into jornada_escolhida values(33,'NC',1,2025,6610);
Insert into jornada_escolhida values(33,'NC',1,2025,6592);
Insert into jornada_escolhida values(33,'NC',1,2025,6577);
Insert into jornada_escolhida values(33,'NC',1,2025,6532);
Insert into jornada_escolhida values(33,'NC',1,2025,6471);
Insert into jornada_escolhida values(33,'NC',1,2025,6468);
Insert into jornada_escolhida values(33,'NC',1,2025,6455);
Insert into jornada_escolhida values(33,'NC',1,2025,6452);
Insert into jornada_escolhida values(33,'NC',1,2025,6406);
Insert into jornada_escolhida values(33,'NC',1,2025,6386);
Insert into jornada_escolhida values(33,'NC',1,2025,6075);
Insert into jornada_escolhida values(33,'NC',1,2025,6049);
Insert into jornada_escolhida values(33,'NC',1,2025,6041);
Insert into jornada_escolhida values(33,'NC',1,2025,6035);
Insert into jornada_escolhida values(33,'NC',1,2025,6026);
Insert into jornada_escolhida values(33,'NC',1,2025,5820);
Insert into jornada_escolhida values(33,'NC',1,2025,5705);
Insert into jornada_escolhida values(33,'NC',1,2025,5695);
Insert into jornada_escolhida values(33,'NC',1,2025,5685);
Insert into jornada_escolhida values(33,'NC',1,2025,5664);
Insert into jornada_escolhida values(33,'NC',1,2025,5663);
Insert into jornada_escolhida values(33,'NC',1,2025,5616);
Insert into jornada_escolhida values(33,'NC',1,2025,5611);
Insert into jornada_escolhida values(33,'NC',1,2025,5421);
Insert into jornada_escolhida values(33,'NC',1,2025,5420);
Insert into jornada_escolhida values(33,'NC',1,2025,5411);
Insert into jornada_escolhida values(33,'NC',1,2025,5272);
Insert into jornada_escolhida values(33,'NC',1,2025,5143);
Insert into jornada_escolhida values(33,'NC',1,2025,5135);
Insert into jornada_escolhida values(33,'NC',1,2025,5112);
Insert into jornada_escolhida values(33,'NC',1,2025,5082);
Insert into jornada_escolhida values(33,'NC',1,2025,5065);
Insert into jornada_escolhida values(33,'NC',1,2025,5053);
Insert into jornada_escolhida values(33,'NC',1,2025,5008);
Insert into jornada_escolhida values(33,'NC',1,2025,4848);
Insert into jornada_escolhida values(33,'NC',1,2025,4785);
Insert into jornada_escolhida values(33,'NC',1,2025,4771);
Insert into jornada_escolhida values(33,'NC',1,2025,4702);
Insert into jornada_escolhida values(33,'NC',1,2025,4691);
Insert into jornada_escolhida values(33,'NC',1,2025,4679);
Insert into jornada_escolhida values(33,'NC',1,2025,4671);
Insert into jornada_escolhida values(33,'NC',1,2025,4585);
Insert into jornada_escolhida values(33,'NC',1,2025,4581);
Insert into jornada_escolhida values(33,'NC',1,2025,4578);
Insert into jornada_escolhida values(33,'NC',1,2025,4567);
Insert into jornada_escolhida values(33,'NC',1,2025,4340);
Insert into jornada_escolhida values(33,'NC',1,2025,4215);
Insert into jornada_escolhida values(33,'NC',1,2025,4099);
Insert into jornada_escolhida values(33,'NC',1,2025,3992);
Insert into jornada_escolhida values(33,'NC',1,2025,3914);
Insert into jornada_escolhida values(33,'NC',1,2025,3864);
Insert into jornada_escolhida values(33,'NC',1,2025,3860);
Insert into jornada_escolhida values(33,'NC',1,2025,3859);
Insert into jornada_escolhida values(33,'NC',1,2025,3592);
Insert into jornada_escolhida values(33,'NC',1,2025,3239);
Insert into jornada_escolhida values(18,'ART',2,2025,57);

Insert into jornada_escolhida values(10,'ART',2,2025,58);
Insert into jornada_escolhida values(10,'ART',2,2019,58);

Insert into jornada_escolhida values(10,'ART',2,2025,62);
Insert into jornada_escolhida values(8,'ART',2,2025,63);
Insert into jornada_escolhida values(18,'ART',2,2025,4527);
Insert into jornada_escolhida values(28,'ART',2,2025,5463);
Insert into jornada_escolhida values(16,'ART',2,2025,7186);
Insert into jornada_escolhida values(12,'ART',2,2025,7494);
Insert into jornada_escolhida values(18,'ART',2,2025,7706);
Insert into jornada_escolhida values(32,'ART',2,2025,10974);
Insert into jornada_escolhida values(14,'ART',2,2025,11420);
Insert into jornada_escolhida values(6,'ART',2,2025,12936);
Insert into jornada_escolhida values(32,'ART',2,2025,12945);
Insert into jornada_escolhida values(30,'ART',2,2025,12951);
Insert into jornada_escolhida values(10,'ART',2,2025,12959);
Insert into jornada_escolhida values(32,'ART',2,2025,12961);
Insert into jornada_escolhida values(10,'ART',2,2025,12972);
Insert into jornada_escolhida values(24,'ART',2,2025,13054);
Insert into jornada_escolhida values(32,'ART',2,2025,13269);
Insert into jornada_escolhida values(10,'ART',2,2025,14798);
Insert into jornada_escolhida values(32,'ART',2,2025,14826);
Insert into jornada_escolhida values(8,'ART',2,2025,15029);
Insert into jornada_escolhida values(14,'ART',2,2025,16140);
Insert into jornada_escolhida values(14,'ART',2,2025,16142);
Insert into jornada_escolhida values(16,'ART',2,2025,16144);
Insert into jornada_escolhida values(32,'ART',2,2025,16167);
Insert into jornada_escolhida values(16,'ART',2,2025,16175);
Insert into jornada_escolhida values(32,'ART',2,2025,16177);
Insert into jornada_escolhida values(16,'ART',2,2025,16303);
Insert into jornada_escolhida values(22,'ART',2,2025,16337);
Insert into jornada_escolhida values(18,'ART',2,2025,16351);
Insert into jornada_escolhida values(16,'ART',2,2025,16366);
Insert into jornada_escolhida values(32,'ART',2,2025,17895);
Insert into jornada_escolhida values(32,'ART',2,2025,17920);
Insert into jornada_escolhida values(14,'ART',2,2025,18258);
Insert into jornada_escolhida values(2,'ART',2,2025,19647);
Insert into jornada_escolhida values(32,'ART',2,2025,19670);
Insert into jornada_escolhida values(32,'ART',2,2025,20754);
Insert into jornada_escolhida values(30,'ART',2,2025,20755);
Insert into jornada_escolhida values(32,'ART',2,2025,20801);
Insert into jornada_escolhida values(20,'ART',2,2025,20806);
Insert into jornada_escolhida values(2,'ART',2,2025,20831);
Insert into jornada_escolhida values(20,'ART',2,2025,21110);
Insert into jornada_escolhida values(6,'ART',2,2025,21112);
Insert into jornada_escolhida values(20,'ART',2,2025,21121);
Insert into jornada_escolhida values(10,'ART',2,2025,21122);
Insert into jornada_escolhida values(12,'ART',2,2025,21123);
Insert into jornada_escolhida values(14,'ART',2,2025,21125);
Insert into jornada_escolhida values(32,'ART',2,2025,22801);
Insert into jornada_escolhida values(22,'ART',2,2025,22802);
Insert into jornada_escolhida values(14,'ART',2,2025,22803);
Insert into jornada_escolhida values(16,'ART',2,2025,22804);
Insert into jornada_escolhida values(2,'ART',2,2025,22823);
Insert into jornada_escolhida values(20,'ART',2,2025,22896);
Insert into jornada_escolhida values(22,'ART',2,2025,22898);
Insert into jornada_escolhida values(4,'ART',2,2025,22899);
Insert into jornada_escolhida values(32,'ART',2,2025,22906);
Insert into jornada_escolhida values(32,'ART',2,2025,23003);
Insert into jornada_escolhida values(2,'ART',2,2025,23014);
Insert into jornada_escolhida values(28,'ART',2,2025,23025);
Insert into jornada_escolhida values(2,'ART',2,2025,23128);
Insert into jornada_escolhida values(14,'ART',2,2025,23129);
Insert into jornada_escolhida values(4,'ART',2,2025,23305);
Insert into jornada_escolhida values(28,'ART',2,2025,23551);
Insert into jornada_escolhida values(26,'ART',2,2025,23564);
Insert into jornada_escolhida values(32,'ART',2,2025,23575);
Insert into jornada_escolhida values(32,'EDF',2,2025,23561);
Insert into jornada_escolhida values(32,'EDF',2,2025,23553);
Insert into jornada_escolhida values(10,'EDF',2,2025,18279);
Insert into jornada_escolhida values(12,'EDF',2,2025,18256);
Insert into jornada_escolhida values(28,'EDF',2,2025,18255);
Insert into jornada_escolhida values(2,'EDF',2,2025,18254);
Insert into jornada_escolhida values(30,'EDF',2,2025,18253);
Insert into jornada_escolhida values(24,'EDF',2,2025,18252);
Insert into jornada_escolhida values(30,'EDF',2,2025,18091);
Insert into jornada_escolhida values(32,'EDF',2,2025,16363);
Insert into jornada_escolhida values(16,'EDF',2,2025,16355);
Insert into jornada_escolhida values(10,'EDF',2,2025,16320);
Insert into jornada_escolhida values(32,'EDF',2,2025,16143);
Insert into jornada_escolhida values(30,'EDF',2,2025,15028);
Insert into jornada_escolhida values(2,'EDF',2,2025,14949);
Insert into jornada_escolhida values(12,'EDF',2,2025,14948);
Insert into jornada_escolhida values(32,'EDF',2,2025,14946);
Insert into jornada_escolhida values(32,'EDF',2,2025,14945);
Insert into jornada_escolhida values(32,'EDF',2,2025,14944);
Insert into jornada_escolhida values(26,'EDF',2,2025,14828);
Insert into jornada_escolhida values(32,'EDF',2,2025,14822);
Insert into jornada_escolhida values(28,'EDF',2,2025,14806);
Insert into jornada_escolhida values(30,'EDF',2,2025,14804);
Insert into jornada_escolhida values(22,'EDF',2,2025,14802);
Insert into jornada_escolhida values(16,'EDF',2,2025,14799);
Insert into jornada_escolhida values(32,'EDF',2,2025,14797);
Insert into jornada_escolhida values(10,'EDF',2,2025,14792);
Insert into jornada_escolhida values(16,'EDF',2,2025,13284);
Insert into jornada_escolhida values(6,'EDF',2,2025,13282);
Insert into jornada_escolhida values(26,'EDF',2,2025,13252);
Insert into jornada_escolhida values(10,'EDF',2,2025,13249);
Insert into jornada_escolhida values(32,'EDF',2,2025,13240);
Insert into jornada_escolhida values(32,'EDF',2,2025,13238);
Insert into jornada_escolhida values(32,'EDF',2,2025,13237);
Insert into jornada_escolhida values(32,'EDF',2,2025,13234);
Insert into jornada_escolhida values(30,'EDF',2,2025,13097);
Insert into jornada_escolhida values(32,'EDF',2,2025,13096);
Insert into jornada_escolhida values(28,'EDF',2,2025,13095);
Insert into jornada_escolhida values(32,'EDF',2,2025,13060);
Insert into jornada_escolhida values(12,'EDF',2,2025,13057);
Insert into jornada_escolhida values(32,'EDF',2,2025,13055);
Insert into jornada_escolhida values(18,'EDF',2,2025,13051);
Insert into jornada_escolhida values(24,'EDF',2,2025,13050);
Insert into jornada_escolhida values(6,'EDF',2,2025,12979);
Insert into jornada_escolhida values(14,'EDF',2,2025,12977);
Insert into jornada_escolhida values(32,'EDF',2,2025,12976);
Insert into jornada_escolhida values(32,'EDF',2,2025,12969);
Insert into jornada_escolhida values(30,'EDF',2,2025,12963);
Insert into jornada_escolhida values(2,'EDF',2,2025,12958);
Insert into jornada_escolhida values(32,'EDF',2,2025,12947);
Insert into jornada_escolhida values(2,'EDF',2,2025,12943);
Insert into jornada_escolhida values(8,'EDF',2,2025,12935);
Insert into jornada_escolhida values(8,'EDF',2,2025,12934);
Insert into jornada_escolhida values(32,'EDF',2,2025,12932);
Insert into jornada_escolhida values(26,'EDF',2,2025,12928);
Insert into jornada_escolhida values(28,'EDF',2,2025,12927);
Insert into jornada_escolhida values(14,'EDF',2,2025,12909);
Insert into jornada_escolhida values(30,'EDF',2,2025,12900);
Insert into jornada_escolhida values(22,'EDF',2,2025,12887);
Insert into jornada_escolhida values(4,'EDF',2,2025,12520);
Insert into jornada_escolhida values(2,'EDF',2,2025,12518);
Insert into jornada_escolhida values(24,'EDF',2,2025,11848);
Insert into jornada_escolhida values(32,'EDF',2,2025,11504);
Insert into jornada_escolhida values(6,'EDF',2,2025,11483);
Insert into jornada_escolhida values(14,'EDF',2,2025,11065);
Insert into jornada_escolhida values(24,'EDF',2,2025,11064);
Insert into jornada_escolhida values(12,'EDF',2,2025,11060);
Insert into jornada_escolhida values(32,'EDF',2,2025,11053);
Insert into jornada_escolhida values(12,'EDF',2,2025,11037);
Insert into jornada_escolhida values(32,'EDF',2,2025,10993);
Insert into jornada_escolhida values(20,'EDF',2,2025,10990);
Insert into jornada_escolhida values(10,'EDF',2,2025,10989);
Insert into jornada_escolhida values(18,'EDF',2,2025,10987);
Insert into jornada_escolhida values(18,'EDF',2,2025,10986);
Insert into jornada_escolhida values(4,'EDF',2,2025,10984);
Insert into jornada_escolhida values(32,'EDF',2,2025,10642);
Insert into jornada_escolhida values(20,'EDF',2,2025,10636);
Insert into jornada_escolhida values(28,'EDF',2,2025,10500);
Insert into jornada_escolhida values(16,'EDF',2,2025,10302);
Insert into jornada_escolhida values(6,'EDF',2,2025,10291);
Insert into jornada_escolhida values(24,'EDF',2,2025,9567);
Insert into jornada_escolhida values(30,'EDF',2,2025,8412);
Insert into jornada_escolhida values(6,'EDF',2,2025,8381);
Insert into jornada_escolhida values(14,'EDF',2,2025,8220);
Insert into jornada_escolhida values(4,'EDF',2,2025,8071);
Insert into jornada_escolhida values(8,'EDF',2,2025,7755);
Insert into jornada_escolhida values(24,'EDF',2,2025,7696);
Insert into jornada_escolhida values(30,'EDF',2,2025,6784);
Insert into jornada_escolhida values(4,'EDF',2,2025,6646);
Insert into jornada_escolhida values(2,'EDF',2,2025,6556);
Insert into jornada_escolhida values(14,'EDF',2,2025,6540);
Insert into jornada_escolhida values(24,'EDF',2,2025,6016);
Insert into jornada_escolhida values(24,'EDF',2,2025,5798);
Insert into jornada_escolhida values(20,'EDF',2,2025,5790);
Insert into jornada_escolhida values(6,'EDF',2,2025,5142);
Insert into jornada_escolhida values(32,'EDF',2,2025,4860);
Insert into jornada_escolhida values(8,'EDF',2,2025,4095);
Insert into jornada_escolhida values(32,'EDF',2,2025,4065);
Insert into jornada_escolhida values(16,'EDF',2,2025,3871);
Insert into jornada_escolhida values(32,'EDF',2,2025,3867);
Insert into jornada_escolhida values(16,'EDF',2,2025,3673);
Insert into jornada_escolhida values(12,'EDF',2,2025,3493);
Insert into jornada_escolhida values(6,'EDF',2,2025,3419);
Insert into jornada_escolhida values(12,'EDF',2,2025,3376);
Insert into jornada_escolhida values(32,'EDF',2,2025,147);
Insert into jornada_escolhida values(12,'EDF',2,2025,145);
Insert into jornada_escolhida values(30,'EDF',2,2025,141);
Insert into jornada_escolhida values(26,'EDF',2,2025,140);
Insert into jornada_escolhida values(30,'EDF',2,2025,139);
Insert into jornada_escolhida values(22,'EDF',2,2025,137);
Insert into jornada_escolhida values(24,'EDF',2,2025,136);
Insert into jornada_escolhida values(4,'EDF',2,2025,135);
Insert into jornada_escolhida values(2,'EDF',2,2025,133);
Insert into jornada_escolhida values(2,'EDF',2,2025,131);
Insert into jornada_escolhida values(20,'EDF',2,2025,129);
Insert into jornada_escolhida values(6,'EDF',2,2025,128);
Insert into jornada_escolhida values(12,'EDF',2,2025,126);
Insert into jornada_escolhida values(16,'EDF',2,2025,125);
Insert into jornada_escolhida values(32,'EDF',2,2025,123);
Insert into jornada_escolhida values(30,'EDF',2,2025,122);
Insert into jornada_escolhida values(20,'EDF',2,2025,87);
Insert into jornada_escolhida values(32,'EDF',2,2025,82);
Insert into jornada_escolhida values(32,'EDF',2,2025,73);
Insert into jornada_escolhida values(32,'EDF',2,2025,68);
Insert into jornada_escolhida values(22,'EDF',2,2025,60);
Insert into jornada_escolhida values(10,'EDF',2,2025,51);
Insert into jornada_escolhida values(32,'EDF',2,2025,41);
Insert into jornada_escolhida values(22,'EDF',2,2025,21);
Insert into jornada_escolhida values(28,'EDF',2,2025,14);
Insert into jornada_escolhida values(30,'MAT',2,2025,26);
Insert into jornada_escolhida values(30,'MAT',2,2025,38);
Insert into jornada_escolhida values(30,'MAT',2,2025,55);
Insert into jornada_escolhida values(10,'MAT',2,2025,3173);
Insert into jornada_escolhida values(10,'MAT',2,2025,5130);
Insert into jornada_escolhida values(10,'MAT',2,2025,6439);
Insert into jornada_escolhida values(10,'MAT',2,2025,7392);
Insert into jornada_escolhida values(25,'MAT',2,2025,7765);
Insert into jornada_escolhida values(30,'MAT',2,2025,8229);
Insert into jornada_escolhida values(25,'MAT',2,2025,8342);
Insert into jornada_escolhida values(10,'MAT',2,2025,8443);
Insert into jornada_escolhida values(25,'MAT',2,2025,9671);
Insert into jornada_escolhida values(20,'MAT',2,2025,9872);
Insert into jornada_escolhida values(25,'MAT',2,2025,10257);
Insert into jornada_escolhida values(30,'MAT',2,2025,10522);
Insert into jornada_escolhida values(30,'MAT',2,2025,10678);
Insert into jornada_escolhida values(15,'MAT',2,2025,10994);
Insert into jornada_escolhida values(20,'MAT',2,2025,11020);
Insert into jornada_escolhida values(5,'MAT',2,2025,11021);
Insert into jornada_escolhida values(30,'MAT',2,2025,11022);
Insert into jornada_escolhida values(30,'MAT',2,2025,11025);
Insert into jornada_escolhida values(20,'MAT',2,2025,11106);
Insert into jornada_escolhida values(30,'MAT',2,2025,11114);
Insert into jornada_escolhida values(10,'MAT',2,2025,12025);
Insert into jornada_escolhida values(25,'MAT',2,2025,12033);
Insert into jornada_escolhida values(30,'MAT',2,2025,12046);
Insert into jornada_escolhida values(25,'MAT',2,2025,12095);
Insert into jornada_escolhida values(15,'MAT',2,2025,12133);
Insert into jornada_escolhida values(30,'MAT',2,2025,12893);
Insert into jornada_escolhida values(10,'MAT',2,2025,12903);
Insert into jornada_escolhida values(30,'MAT',2,2025,12929);
Insert into jornada_escolhida values(5,'MAT',2,2025,12975);
Insert into jornada_escolhida values(25,'MAT',2,2025,13052);
Insert into jornada_escolhida values(30,'MAT',2,2025,13278);
Insert into jornada_escolhida values(30,'MAT',2,2025,13280);
Insert into jornada_escolhida values(30,'MAT',2,2025,14807);
Insert into jornada_escolhida values(30,'MAT',2,2025,14892);
Insert into jornada_escolhida values(30,'MAT',2,2025,14893);
Insert into jornada_escolhida values(5,'MAT',2,2025,16179);
Insert into jornada_escolhida values(15,'MAT',2,2025,16233);
Insert into jornada_escolhida values(30,'MAT',2,2025,16360);
Insert into jornada_escolhida values(20,'MAT',2,2025,16997);
Insert into jornada_escolhida values(20,'MAT',2,2025,17011);
Insert into jornada_escolhida values(20,'MAT',2,2025,17156);
Insert into jornada_escolhida values(25,'MAT',2,2025,17200);
Insert into jornada_escolhida values(30,'MAT',2,2025,17795);
Insert into jornada_escolhida values(30,'MAT',2,2025,17838);
Insert into jornada_escolhida values(30,'MAT',2,2025,17916);
Insert into jornada_escolhida values(30,'MAT',2,2025,18020);
Insert into jornada_escolhida values(25,'MAT',2,2025,18186);
Insert into jornada_escolhida values(5,'MAT',2,2025,20256);
Insert into jornada_escolhida values(30,'MAT',2,2025,20750);
Insert into jornada_escolhida values(25,'MAT',2,2025,22812);
Insert into jornada_escolhida values(30,'MAT',2,2025,22813);
Insert into jornada_escolhida values(10,'MAT',2,2025,22814);
Insert into jornada_escolhida values(20,'MAT',2,2025,22815);
Insert into jornada_escolhida values(5,'MAT',2,2025,22816);
Insert into jornada_escolhida values(5,'MAT',2,2025,22817);
Insert into jornada_escolhida values(30,'MAT',2,2025,22922);
Insert into jornada_escolhida values(25,'MAT',2,2025,22923);
Insert into jornada_escolhida values(25,'MAT',2,2025,23174);
Insert into jornada_escolhida values(30,'MAT',2,2025,23175);
Insert into jornada_escolhida values(30,'MAT',2,2025,23253);
Insert into jornada_escolhida values(25,'MAT',2,2025,23254);
Insert into jornada_escolhida values(30,'MAT',2,2025,23256);
Insert into jornada_escolhida values(5,'MAT',2,2025,23550);
Insert into jornada_escolhida values(30,'MAT',2,2025,23565);
Insert into jornada_escolhida values(30,'MAT',2,2025,23583);
Insert into jornada_escolhida values(30,'MAT',2,2025,23589);

Insert into jornada_escolhida values(28,'CIEN',2,2025,6);
Insert into jornada_escolhida values(32,'CIEN',2,2025,47);
Insert into jornada_escolhida values(28,'CIEN',2,2025,5136);
Insert into jornada_escolhida values(20,'CIEN',2,2025,6863);
Insert into jornada_escolhida values(4,'CIEN',2,2025,7033);
Insert into jornada_escolhida values(32,'CIEN',2,2025,8649);
Insert into jornada_escolhida values(24,'CIEN',2,2025,9460);
Insert into jornada_escolhida values(8,'CIEN',2,2025,9486);
Insert into jornada_escolhida values(8,'CIEN',2,2025,10190);
Insert into jornada_escolhida values(32,'CIEN',2,2025,10334);
Insert into jornada_escolhida values(24,'CIEN',2,2025,10454);
Insert into jornada_escolhida values(12,'CIEN',2,2025,10967);
Insert into jornada_escolhida values(8,'CIEN',2,2025,10968);
Insert into jornada_escolhida values(8,'CIEN',2,2025,10971);
Insert into jornada_escolhida values(28,'CIEN',2,2025,11030);
Insert into jornada_escolhida values(20,'CIEN',2,2025,11116);
Insert into jornada_escolhida values(32,'CIEN',2,2025,12894);
Insert into jornada_escolhida values(16,'CIEN',2,2025,12896);
Insert into jornada_escolhida values(32,'CIEN',2,2025,12915);
Insert into jornada_escolhida values(8,'CIEN',2,2025,12925);
Insert into jornada_escolhida values(20,'CIEN',2,2025,12944);
Insert into jornada_escolhida values(32,'CIEN',2,2025,12955);
Insert into jornada_escolhida values(32,'CIEN',2,2025,12967);
Insert into jornada_escolhida values(32,'CIEN',2,2025,13053);
Insert into jornada_escolhida values(12,'CIEN',2,2025,13241);
Insert into jornada_escolhida values(32,'CIEN',2,2025,13250);
Insert into jornada_escolhida values(12,'CIEN',2,2025,13273);
Insert into jornada_escolhida values(32,'CIEN',2,2025,13274);
Insert into jornada_escolhida values(20,'CIEN',2,2025,14835);
Insert into jornada_escolhida values(32,'CIEN',2,2025,16145);
Insert into jornada_escolhida values(32,'CIEN',2,2025,16223);
Insert into jornada_escolhida values(16,'CIEN',2,2025,16254);
Insert into jornada_escolhida values(4,'CIEN',2,2025,16272);
Insert into jornada_escolhida values(20,'CIEN',2,2025,16358);
Insert into jornada_escolhida values(28,'CIEN',2,2025,16361);
Insert into jornada_escolhida values(28,'CIEN',2,2025,16753);
Insert into jornada_escolhida values(32,'CIEN',2,2025,17158);
Insert into jornada_escolhida values(32,'CIEN',2,2025,17758);
Insert into jornada_escolhida values(8,'CIEN',2,2025,17869);
Insert into jornada_escolhida values(32,'CIEN',2,2025,17887);
Insert into jornada_escolhida values(8,'CIEN',2,2025,17899);
Insert into jornada_escolhida values(16,'CIEN',2,2025,17910);
Insert into jornada_escolhida values(20,'CIEN',2,2025,19677);
Insert into jornada_escolhida values(20,'CIEN',2,2025,22902);
Insert into jornada_escolhida values(32,'CIEN',2,2025,22935);
Insert into jornada_escolhida values(4,'CIEN',2,2025,22952);
Insert into jornada_escolhida values(28,'CIEN',2,2025,22953);
Insert into jornada_escolhida values(32,'CIEN',2,2025,23038);
Insert into jornada_escolhida values(8,'CIEN',2,2025,23099);
Insert into jornada_escolhida values(24,'CIEN',2,2025,23251);
Insert into jornada_escolhida values(16,'CIEN',2,2025,23498);
Insert into jornada_escolhida values(20,'CIEN',2,2025,23554);
Insert into jornada_escolhida values(32,'CIEN',2,2025,23572);
Insert into jornada_escolhida values(32,'CIEN',2,2025,23593);

Insert into jornada_escolhida values(21,'GEO',2,2025,30);
Insert into jornada_escolhida values(15,'GEO',2,2025,31);
Insert into jornada_escolhida values(21,'GEO',2,2025,4119);
Insert into jornada_escolhida values(6,'GEO',2,2025,6454);
Insert into jornada_escolhida values(6,'GEO',2,2025,6868);
Insert into jornada_escolhida values(27,'GEO',2,2025,8200);
Insert into jornada_escolhida values(9,'GEO',2,2025,8207);
Insert into jornada_escolhida values(30,'GEO',2,2025,8492);
Insert into jornada_escolhida values(30,'GEO',2,2025,9630);
Insert into jornada_escolhida values(15,'GEO',2,2025,10684);
Insert into jornada_escolhida values(27,'GEO',2,2025,10996);
Insert into jornada_escolhida values(21,'GEO',2,2025,11002);
Insert into jornada_escolhida values(21,'GEO',2,2025,11003);
Insert into jornada_escolhida values(30,'GEO',2,2025,11115);
Insert into jornada_escolhida values(24,'GEO',2,2025,12543);
Insert into jornada_escolhida values(24,'GEO',2,2025,12787);
Insert into jornada_escolhida values(27,'GEO',2,2025,12897);
Insert into jornada_escolhida values(12,'GEO',2,2025,13277);
Insert into jornada_escolhida values(15,'GEO',2,2025,14795);
Insert into jornada_escolhida values(30,'GEO',2,2025,14904);
Insert into jornada_escolhida values(3,'GEO',2,2025,15058);
Insert into jornada_escolhida values(18,'GEO',2,2025,16234);
Insert into jornada_escolhida values(3,'GEO',2,2025,16378);
Insert into jornada_escolhida values(30,'GEO',2,2025,16987);
Insert into jornada_escolhida values(30,'GEO',2,2025,17862);
Insert into jornada_escolhida values(30,'GEO',2,2025,18100);
Insert into jornada_escolhida values(3,'GEO',2,2025,18194);
Insert into jornada_escolhida values(12,'GEO',2,2025,20315);
Insert into jornada_escolhida values(30,'GEO',2,2025,20800);
Insert into jornada_escolhida values(12,'GEO',2,2025,22900);
Insert into jornada_escolhida values(18,'GEO',2,2025,22901);
Insert into jornada_escolhida values(9,'GEO',2,2025,22928);
Insert into jornada_escolhida values(12,'GEO',2,2025,22938);
Insert into jornada_escolhida values(30,'GEO',2,2025,23002);
Insert into jornada_escolhida values(21,'GEO',2,2025,23058);
Insert into jornada_escolhida values(24,'GEO',2,2025,23252);
Insert into jornada_escolhida values(6,'GEO',2,2025,23301);
Insert into jornada_escolhida values(6,'GEO',2,2025,23302);
Insert into jornada_escolhida values(12,'GEO',2,2025,23546);
Insert into jornada_escolhida values(27,'GEO',2,2025,23562);
Insert into jornada_escolhida values(3,'GEO',2,2025,23573);
Insert into jornada_escolhida values(30,'GEO',2,2025,23591);

Insert into jornada_escolhida values(15,'HIST',2,2019,42);
Insert into jornada_escolhida values(15,'HIST',2,2019,6119);
Insert into jornada_escolhida values(15,'HIST',2,2019,12940);

Insert into jornada_escolhida values(15,'HIST',2,2020,42);
Insert into jornada_escolhida values(15,'HIST',2,2020,6119);
Insert into jornada_escolhida values(15,'HIST',2,2020,12940);

Insert into jornada_escolhida values(15,'HIST',2,2021,42);
Insert into jornada_escolhida values(15,'HIST',2,2021,6119);
Insert into jornada_escolhida values(15,'HIST',2,2021,12940);

Insert into jornada_escolhida values(15,'HIST',2,2022,42);
Insert into jornada_escolhida values(15,'HIST',2,2022,6119);
Insert into jornada_escolhida values(15,'HIST',2,2022,12940);

Insert into jornada_escolhida values(15,'HIST',2,2023,42);
Insert into jornada_escolhida values(15,'HIST',2,2023,6119);
Insert into jornada_escolhida values(15,'HIST',2,2023,12940);

Insert into jornada_escolhida values(15,'HIST',2,2025,42);
Insert into jornada_escolhida values(15,'HIST',2,2025,6119);
Insert into jornada_escolhida values(27,'HIST',2,2025,12940);

Insert into jornada_escolhida values(21,'HIST',2,2025,4704);
Insert into jornada_escolhida values(18,'HIST',2,2025,5064);
Insert into jornada_escolhida values(12,'HIST',2,2025,5460);
Insert into jornada_escolhida values(30,'HIST',2,2025,5692);
Insert into jornada_escolhida values(15,'HIST',2,2025,6104);
Insert into jornada_escolhida values(30,'HIST',2,2025,6535);
Insert into jornada_escolhida values(18,'HIST',2,2025,7110);
Insert into jornada_escolhida values(24,'HIST',2,2025,8178);
Insert into jornada_escolhida values(27,'HIST',2,2025,8289);
Insert into jornada_escolhida values(21,'HIST',2,2025,8903);
Insert into jornada_escolhida values(30,'HIST',2,2025,10331);
Insert into jornada_escolhida values(24,'HIST',2,2025,11005);
Insert into jornada_escolhida values(21,'HIST',2,2025,11485);
Insert into jornada_escolhida values(27,'HIST',2,2025,11505);
Insert into jornada_escolhida values(21,'HIST',2,2025,12442);
Insert into jornada_escolhida values(21,'HIST',2,2025,12883);
Insert into jornada_escolhida values(18,'HIST',2,2025,12916);
Insert into jornada_escolhida values(30,'HIST',2,2025,12919);
Insert into jornada_escolhida values(9,'HIST',2,2025,12937);
Insert into jornada_escolhida values(9,'HIST',2,2025,12939);
Insert into jornada_escolhida values(30,'HIST',2,2025,13119);
Insert into jornada_escolhida values(15,'HIST',2,2025,13120);
Insert into jornada_escolhida values(6,'HIST',2,2025,14809);
Insert into jornada_escolhida values(30,'HIST',2,2025,16371);
Insert into jornada_escolhida values(6,'HIST',2,2025,16822);
Insert into jornada_escolhida values(30,'HIST',2,2025,17362);
Insert into jornada_escolhida values(6,'HIST',2,2025,17875);
Insert into jornada_escolhida values(30,'HIST',2,2025,17884);
Insert into jornada_escolhida values(30,'HIST',2,2025,17919);
Insert into jornada_escolhida values(15,'HIST',2,2025,17984);
Insert into jornada_escolhida values(3,'HIST',2,2025,18054);
Insert into jornada_escolhida values(30,'HIST',2,2025,18203);
Insert into jornada_escolhida values(18,'HIST',2,2025,21421);
Insert into jornada_escolhida values(30,'HIST',2,2025,22808);
Insert into jornada_escolhida values(30,'HIST',2,2025,22809);
Insert into jornada_escolhida values(6,'HIST',2,2025,22810);
Insert into jornada_escolhida values(18,'HIST',2,2025,22811);
Insert into jornada_escolhida values(15,'HIST',2,2025,23250);
Insert into jornada_escolhida values(6,'HIST',2,2025,23547);
Insert into jornada_escolhida values(27,'HIST',2,2025,23563);
Insert into jornada_escolhida values(24,'HIST',2,2025,23574);
Insert into jornada_escolhida values(18,'HIST',2,2025,23592);

Insert into jornada_escolhida values(6,'ING',2,2025,22);
Insert into jornada_escolhida values(2,'ING',2,2025,1183);
Insert into jornada_escolhida values(32,'ING',2,2025,6602);
Insert into jornada_escolhida values(18,'ING',2,2025,8233);
Insert into jornada_escolhida values(6,'ING',2,2025,8312);
Insert into jornada_escolhida values(32,'ING',2,2025,10610);
Insert into jornada_escolhida values(22,'ING',2,2025,11009);
Insert into jornada_escolhida values(4,'ING',2,2025,11056);
Insert into jornada_escolhida values(32,'ING',2,2025,11435);
Insert into jornada_escolhida values(32,'ING',2,2025,11447);
Insert into jornada_escolhida values(30,'ING',2,2025,11451);
Insert into jornada_escolhida values(32,'ING',2,2025,12055);
Insert into jornada_escolhida values(32,'ING',2,2025,12921);
Insert into jornada_escolhida values(22,'ING',2,2025,12931);
Insert into jornada_escolhida values(22,'ING',2,2025,12938);
Insert into jornada_escolhida values(32,'ING',2,2025,13069);
Insert into jornada_escolhida values(20,'ING',2,2025,13271);
Insert into jornada_escolhida values(32,'ING',2,2025,14801);
Insert into jornada_escolhida values(16,'ING',2,2025,22805);
Insert into jornada_escolhida values(8,'ING',2,2025,22806);
Insert into jornada_escolhida values(32,'ING',2,2025,22807);
Insert into jornada_escolhida values(32,'ING',2,2025,22926);
Insert into jornada_escolhida values(16,'ING',2,2025,22950);
Insert into jornada_escolhida values(32,'ING',2,2025,23081);
Insert into jornada_escolhida values(32,'ING',2,2025,23255);
Insert into jornada_escolhida values(32,'ING',2,2025,23303);
Insert into jornada_escolhida values(32,'ING',2,2025,23304);
Insert into jornada_escolhida values(8,'ING',2,2025,23557);
Insert into jornada_escolhida values(32,'ING',2,2025,23570);
Insert into jornada_escolhida values(26,'ING',2,2025,23581);
Insert into jornada_escolhida values(28,'ING',2,2025,23588);

Insert into jornada_escolhida values(12,'PORT',2,2025,77);
Insert into jornada_escolhida values(12,'PORT',2,2025,78);
Insert into jornada_escolhida values(30,'PORT',2,2025,85);
Insert into jornada_escolhida values(30,'PORT',2,2025,86);
Insert into jornada_escolhida values(30,'PORT',2,2025,90);
Insert into jornada_escolhida values(30,'PORT',2,2025,3550);
Insert into jornada_escolhida values(24,'PORT',2,2025,3935);
Insert into jornada_escolhida values(18,'PORT',2,2025,4218);
Insert into jornada_escolhida values(24,'PORT',2,2025,4537);
Insert into jornada_escolhida values(30,'PORT',2,2025,4584);
Insert into jornada_escolhida values(18,'PORT',2,2025,4772);
Insert into jornada_escolhida values(30,'PORT',2,2025,4827);
Insert into jornada_escolhida values(30,'PORT',2,2025,5021);
Insert into jornada_escolhida values(30,'PORT',2,2025,5150);
Insert into jornada_escolhida values(30,'PORT',2,2025,5176);
Insert into jornada_escolhida values(30,'PORT',2,2025,5273);
Insert into jornada_escolhida values(24,'PORT',2,2025,6032);
Insert into jornada_escolhida values(12,'PORT',2,2025,6430);
Insert into jornada_escolhida values(30,'PORT',2,2025,6808);
Insert into jornada_escolhida values(30,'PORT',2,2025,7464);
Insert into jornada_escolhida values(12,'PORT',2,2025,8047);
Insert into jornada_escolhida values(18,'PORT',2,2025,8212);
Insert into jornada_escolhida values(6,'PORT',2,2025,8337);
Insert into jornada_escolhida values(30,'PORT',2,2025,9371);
Insert into jornada_escolhida values(18,'PORT',2,2025,11014);
Insert into jornada_escolhida values(30,'PORT',2,2025,11015);
Insert into jornada_escolhida values(6,'PORT',2,2025,11018);
Insert into jornada_escolhida values(12,'PORT',2,2025,11100);
Insert into jornada_escolhida values(6,'PORT',2,2025,11101);
Insert into jornada_escolhida values(12,'PORT',2,2025,11102);
Insert into jornada_escolhida values(18,'PORT',2,2025,12121);
Insert into jornada_escolhida values(12,'PORT',2,2025,12914);
Insert into jornada_escolhida values(30,'PORT',2,2025,12917);
Insert into jornada_escolhida values(24,'PORT',2,2025,12922);
Insert into jornada_escolhida values(30,'PORT',2,2025,13059);
Insert into jornada_escolhida values(18,'PORT',2,2025,13268);
Insert into jornada_escolhida values(12,'PORT',2,2025,13275);
Insert into jornada_escolhida values(18,'PORT',2,2025,14793);
Insert into jornada_escolhida values(24,'PORT',2,2025,14796);
Insert into jornada_escolhida values(6,'PORT',2,2025,14813);
Insert into jornada_escolhida values(30,'PORT',2,2025,14816);
Insert into jornada_escolhida values(24,'PORT',2,2025,16250);
Insert into jornada_escolhida values(30,'PORT',2,2025,16258);
Insert into jornada_escolhida values(12,'PORT',2,2025,16259);
Insert into jornada_escolhida values(24,'PORT',2,2025,16370);
Insert into jornada_escolhida values(6,'PORT',2,2025,16728);
Insert into jornada_escolhida values(30,'PORT',2,2025,16750);
Insert into jornada_escolhida values(24,'PORT',2,2025,16763);
Insert into jornada_escolhida values(30,'PORT',2,2025,17836);
Insert into jornada_escolhida values(12,'PORT',2,2025,17902);
Insert into jornada_escolhida values(30,'PORT',2,2025,17921);
Insert into jornada_escolhida values(6,'PORT',2,2025,18102);
Insert into jornada_escolhida values(30,'PORT',2,2025,18244);
Insert into jornada_escolhida values(24,'PORT',2,2025,19628);
Insert into jornada_escolhida values(30,'PORT',2,2025,19629);
Insert into jornada_escolhida values(18,'PORT',2,2025,19643);
Insert into jornada_escolhida values(18,'PORT',2,2025,19668);
Insert into jornada_escolhida values(24,'PORT',2,2025,19669);
Insert into jornada_escolhida values(6,'PORT',2,2025,20267);
Insert into jornada_escolhida values(24,'PORT',2,2025,20279);
Insert into jornada_escolhida values(24,'PORT',2,2025,20284);
Insert into jornada_escolhida values(12,'PORT',2,2025,22818);
Insert into jornada_escolhida values(30,'PORT',2,2025,22819);
Insert into jornada_escolhida values(18,'PORT',2,2025,22820);
Insert into jornada_escolhida values(18,'PORT',2,2025,22821);
Insert into jornada_escolhida values(6,'PORT',2,2025,22822);
Insert into jornada_escolhida values(6,'PORT',2,2025,22924);
Insert into jornada_escolhida values(12,'PORT',2,2025,22925);
Insert into jornada_escolhida values(6,'PORT',2,2025,22927);
Insert into jornada_escolhida values(18,'PORT',2,2025,22955);
Insert into jornada_escolhida values(30,'PORT',2,2025,23013);
Insert into jornada_escolhida values(6,'PORT',2,2025,23026);
Insert into jornada_escolhida values(30,'PORT',2,2025,23059);
Insert into jornada_escolhida values(30,'PORT',2,2025,23259);
Insert into jornada_escolhida values(30,'PORT',2,2025,23543);
Insert into jornada_escolhida values(30,'PORT',2,2025,23548);
Insert into jornada_escolhida values(24,'PORT',2,2025,23558);
Insert into jornada_escolhida values(30,'PORT',2,2025,23566);
Insert into jornada_escolhida values(12,'PORT',2,2025,23576);
Insert into jornada_escolhida values(12,'PORT',2,2025,23584);

insert into Solicitacao values (12928,'erica.campos@gmail.com','2025-02-12',1,false);
insert into Solicitacao values (6688,'erica.campos@gmail.com','2025-02-10',2,false);
insert into Solicitacao values (10302,'erica.campos@gmail.com','2025-02-09',1,false);
insert into Solicitacao values (42,'erica.campos@gmail.com','2025-02-02 10:00:00',2,false);

/*
insert into Solicitacao values 
(12928,'erica.campos@gmail.com','2025-02-12',1),
(6688,'erica.campos@gmail.com','2025-02-10',2),
(9431,'erica.campos@gmail.com','2025-02-10',1),
(23006,'erica.campos@gmail.com','2025-02-08',2),
(10302,'erica.campos@gmail.com','2025-02-09',1),
(42,'erica.campos@gmail.com','2025-02-02 10:00:00',2),
(17200,'erica.campos@gmail.com','2025-02-01',1),
(4785,'erica.campos@gmail.com','2025-02-02 10:00:00',2),
(10971,'erica.campos@gmail.com','2025-02-12',1),
(17005,'erica.campos@gmail.com','2025-02-11',2),
(7325,'erica.campos@gmail.com','2025-02-12',1),
(20831,'erica.campos@gmail.com','2025-02-09',2),
(21061,'erica.campos@gmail.com','2025-02-06',1),
(12938,'erica.campos@gmail.com','2025-02-12',2),
(10974,'erica.campos@gmail.com','2025-02-09',1),
(12040,'erica.campos@gmail.com','2025-02-07',2),
(17795,'erica.campos@gmail.com','2025-02-11',1),
(21,'erica.campos@gmail.com','2025-02-12',2),
(6452,'erica.campos@gmail.com','2025-02-13',1),
(7927,'erica.campos@gmail.com','2025-02-02 10:00:00',2),
(7365,'erica.campos@gmail.com','2025-02-02',1),
(16223,'erica.campos@gmail.com','2025-02-02',2),
(13252,'erica.campos@gmail.com','2025-02-14',1),
(23251,'erica.campos@gmail.com','2025-02-09',2),
(8925,'erica.campos@gmail.com','2025-02-11',1),
(12520,'erica.campos@gmail.com','2025-02-02 10:00:00',2),
(55,'erica.campos@gmail.com','2025-02-08',2),
(10261,'erica.campos@gmail.com','2025-02-02 10:00:00',1),
(11071,'erica.campos@gmail.com','2025-02-02 10:00:00',2),
(13069,'erica.campos@gmail.com','2025-02-03',1),
(87,'erica.campos@gmail.com','2025-02-02',2),
(22482,'erica.campos@gmail.com','2025-02-08',1),
(19673,'erica.campos@gmail.com','2025-02-07',2),
(22971,'erica.campos@gmail.com','2025-02-02',1),
(12893,'erica.campos@gmail.com','2025-02-10',2),
(23253,'erica.campos@gmail.com','2025-02-13',1),
(5136,'erica.campos@gmail.com','2025-02-11',2),
(10678,'erica.campos@gmail.com','2025-02-01',1),
(14889,'erica.campos@gmail.com','2025-02-03',2),
(12870,'erica.campos@gmail.com','2025-02-11',1),
(20806,'erica.campos@gmail.com','2025-02-12',2),
(20256,'erica.campos@gmail.com','2025-02-02 10:00:00',1),
(7681,'erica.campos@gmail.com','2025-02-08',2),
(7933,'erica.campos@gmail.com','2025-02-07',1),
(21601,'erica.campos@gmail.com','2025-02-09',2),
(12900,'erica.campos@gmail.com','2025-02-07',1),
(3376,'erica.campos@gmail.com','2025-02-10',2),
(21121,'erica.campos@gmail.com','2025-02-03',1),
(73,'erica.campos@gmail.com','2025-02-11',2),
(7323,'erica.campos@gmail.com','2025-02-09',1),
(11035,'erica.campos@gmail.com','2025-02-09',2),
(12916,'erica.campos@gmail.com','2025-02-11',1),
(9641,'erica.campos@gmail.com','2025-02-11',2),
(14894,'erica.campos@gmail.com','2025-02-14',1),
(10567,'erica.campos@gmail.com','2025-02-01',2),
(12909,'erica.campos@gmail.com','2025-02-13',1),
(11021,'erica.campos@gmail.com','2025-02-01',2),
(19646,'erica.campos@gmail.com','2025-02-14',1),
(7371,'erica.campos@gmail.com','2025-02-11',2),
(10555,'erica.campos@gmail.com','2025-02-10',1),
(10605,'erica.campos@gmail.com','2025-02-01',2),
(7785,'erica.campos@gmail.com','2025-02-02 10:00:00',1),
(11063,'erica.campos@gmail.com','2025-02-14',2),
(14893,'erica.campos@gmail.com','2025-02-09',1),
(22809,'erica.campos@gmail.com','2025-02-08',2),
(13051,'erica.campos@gmail.com','2025-02-12',1),
(17011,'erica.campos@gmail.com','2025-02-08',2),
(12141,'erica.campos@gmail.com','2025-02-06',1),
(22873,'erica.campos@gmail.com','2025-02-02',2),
(7924,'erica.campos@gmail.com','2025-02-08',1),
(12065,'erica.campos@gmail.com','2025-02-08',2),
(10636,'erica.campos@gmail.com','2025-02-01',1),
(11025,'erica.campos@gmail.com','2025-02-06',2),
(10583,'erica.campos@gmail.com','2025-02-14',1),
(4860,'erica.campos@gmail.com','2025-02-14',2),
(10996,'erica.campos@gmail.com','2025-02-09',1),
(12072,'erica.campos@gmail.com','2025-02-10',2),
(8447,'erica.campos@gmail.com','2025-02-07',1),
(10264,'erica.campos@gmail.com','2025-02-08',2),
(11064,'erica.campos@gmail.com','2025-02-07',1),
(22963,'erica.campos@gmail.com','2025-02-02',2),
(12944,'erica.campos@gmail.com','2025-02-07',1),
(9423,'erica.campos@gmail.com','2025-02-08',2),
(8317,'erica.campos@gmail.com','2025-02-10',1),
(7151,'erica.campos@gmail.com','2025-02-02',2),
(21942,'erica.campos@gmail.com','2025-02-08',1),
(17362,'erica.campos@gmail.com','2025-02-02 10:00:00',2),
(82,'erica.campos@gmail.com','2025-02-08',1),
(10310,'erica.campos@gmail.com','2025-02-09',2),
(16371,'erica.campos@gmail.com','2025-02-13',1),
(5798,'erica.campos@gmail.com','2025-02-02 10:00:00',2),
(60,'erica.campos@gmail.com','2025-02-13',1),
(5685,'erica.campos@gmail.com','2025-02-06',2),
(12918,'erica.campos@gmail.com','2025-02-02 10:00:00',1),
(7110,'erica.campos@gmail.com','2025-02-14',2),
(139,'erica.campos@gmail.com','2025-02-02',1),
(3493,'erica.campos@gmail.com','2025-02-07',2),
(22966,'erica.campos@gmail.com','2025-02-02',1),
(15909,'erica.campos@gmail.com','2025-02-10',2),
(12830,'erica.campos@gmail.com','2025-02-02 10:00:00',1),
(6863,'erica.campos@gmail.com','2025-02-01',2),
(12896,'erica.campos@gmail.com','2025-02-03',1),
(9768,'erica.campos@gmail.com','2025-02-03',2),
(7364,'erica.campos@gmail.com','2025-02-01',1),
(13237,'erica.campos@gmail.com','2025-02-09',2),
(3864,'erica.campos@gmail.com','2025-02-13',1),
(17156,'erica.campos@gmail.com','2025-02-02',2),
(11750,'erica.campos@gmail.com','2025-02-13',1),
(10453,'erica.campos@gmail.com','2025-02-02 10:00:00',2),
(14809,'erica.campos@gmail.com','2025-02-08',1),
(13269,'erica.campos@gmail.com','2025-02-03',2),
(11046,'erica.campos@gmail.com','2025-02-02',1),
(13055,'erica.campos@gmail.com','2025-02-08',2),
(11116,'erica.campos@gmail.com','2025-02-08',1),
(12895,'erica.campos@gmail.com','2025-02-08',2),
(17862,'erica.campos@gmail.com','2025-02-11',1),
(21906,'erica.campos@gmail.com','2025-02-06',2),
(4567,'erica.campos@gmail.com','2025-02-07',1),
(9637,'erica.campos@gmail.com','2025-02-10',2),
(12067,'erica.campos@gmail.com','2025-02-12',1),
(10502,'erica.campos@gmail.com','2025-02-02 10:00:00',2),
(19670,'erica.campos@gmail.com','2025-02-01',1),
(15892,'erica.campos@gmail.com','2025-02-14',2),
(10565,'erica.campos@gmail.com','2025-02-06',1),
(23128,'erica.campos@gmail.com','2025-02-01',2),
(22900,'erica.campos@gmail.com','2025-02-12',1);*/

/*
insert into Solicitacao values 
(12928,'erica.campos@gmail.com','2025-02-12',1),
(6688,'erica.campos@gmail.com','2025-02-10',2),
(9431,'erica.campos@gmail.com','2025-02-10',1),
(23006,'erica.campos@gmail.com','2025-02-08',2),
(10302,'erica.campos@gmail.com','2025-02-09',1),
(42,'erica.campos@gmail.com','2025-02-02 10:00:00',2),
(17200,'erica.campos@gmail.com','2025-02-01',1),
(4785,'erica.campos@gmail.com','2025-02-02 10:00:00',2),
(10971,'erica.campos@gmail.com','2025-02-12',1),
(17005,'erica.campos@gmail.com','2025-02-11',2),
(7325,'erica.campos@gmail.com','2025-02-12',1),
(20831,'erica.campos@gmail.com','2025-02-09',2),
(21061,'erica.campos@gmail.com','2025-02-06',1),
(12938,'erica.campos@gmail.com','2025-02-12',2),
(10974,'erica.campos@gmail.com','2025-02-09',1),
(12040,'erica.campos@gmail.com','2025-02-07',2),
(17795,'erica.campos@gmail.com','2025-02-11',1),
(21,'erica.campos@gmail.com','2025-02-12',2);
*/


Insert into preferencia values ('NC',1,'1A','ary.souza@gmail.com', 6691);
Insert into preferencia values ('NC',1,'1B','ary.souza@gmail.com', 6691);

Insert into preferencia values ('NC',1,'1B','ary.souza@gmail.com', 3606);
Insert into preferencia values ('NC',1,'1C','ary.souza@gmail.com', 3606);

Insert into preferencia values ('NC',1,'1C','ary.souza@gmail.com', 6639);
Insert into preferencia values ('NC',1,'1D','ary.souza@gmail.com', 6639);

Insert into preferencia values ('HIST',2,'6B','ary.souza@gmail.com', 6119);
Insert into preferencia values ('HIST',2,'6C','ary.souza@gmail.com', 6119);
Insert into preferencia values ('HIST',2,'7A','ary.souza@gmail.com', 6119);
Insert into preferencia values ('HIST',2,'7B','ary.souza@gmail.com', 6119);
Insert into preferencia values ('HIST',2,'7C','ary.souza@gmail.com', 6119);

Insert into preferencia values ('HIST',2,'6A','ary.souza@gmail.com', 42);
Insert into preferencia values ('HIST',2,'6B','ary.souza@gmail.com', 42);
Insert into preferencia values ('HIST',2,'6C','ary.souza@gmail.com', 42);
Insert into preferencia values ('HIST',2,'6D','ary.souza@gmail.com', 42);
Insert into preferencia values ('HIST',2,'6E','ary.souza@gmail.com', 42);

Insert into preferencia values ('HIST',2,'6C','ary.souza@gmail.com', 12940);
Insert into preferencia values ('HIST',2,'6D','ary.souza@gmail.com', 12940);
Insert into preferencia values ('HIST',2,'7D','ary.souza@gmail.com', 12940);
Insert into preferencia values ('HIST',2,'7E','ary.souza@gmail.com', 12940);
Insert into preferencia values ('HIST',2,'7C','ary.souza@gmail.com', 12940);

Insert into NotificacaoProfessorSistema values(3788,'2024-08-11','Fique atenta aos prazos das fases!',0);
Insert into NotificacaoProfessorSistema values(3788,'2024-06-11','Seus documentos estão atualizados?',0);
Insert into NotificacaoProfessorSistema values(3788,'2024-07-11','Olá professor, fique de olho na sua atribuição',0);

Insert into NotificacaoInstituicaoSistema values('ary.souza@gmail.com','2024-07-11','Estou notificando pois uma professora não está com os documentos em dia!',0);
Insert into NotificacaoInstituicaoSistema values('ary.souza@gmail.com','2024-08-11','A atribuição de PEB III, está com um bom prazo',0);
Insert into NotificacaoInstituicaoSistema values('ary.souza@gmail.com','2024-09-11','Gostaria de ver a possibilidade de novas turmas',0);

Insert into NotificacaoSupervisorSistema values(13075,'2024-07-11','Temos poucos professores para a quantidade de turmas!',0);
Insert into NotificacaoSupervisorSistema values(13075,'2025-02-01','A atribuição de aulas de 2025 já começou!',0);
Insert into NotificacaoSupervisorSistema values(13075,'2025-02-03','Fique atento aos prazos e documentos!',0);

insert into atribuicao values (5112,'NC','1A','adelaide.fernandes@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7293,'NC','1B','adelaide.fernandes@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10283,'NC','1C','adelaide.fernandes@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10544,'NC','2A','adelaide.fernandes@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);

-- afonso.nunes@gmail.com
insert into atribuicao values (3992,'NC','1A','afonso.nunes@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5065,'NC','1B','afonso.nunes@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (6610,'NC','1C','afonso.nunes@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8315,'NC','2A','afonso.nunes@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10299,'NC','2B','afonso.nunes@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10552,'NC','2C','afonso.nunes@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11046,'NC','3A','afonso.nunes@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11061,'NC','3B','afonso.nunes@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);

-- angelina.daige@gmail.com
insert into atribuicao values (3788,'NC','4A','angelina.daige@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (4848,'NC','4B','angelina.daige@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7364,'NC','4C','angelina.daige@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7697,'NC','4D','angelina.daige@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10508,'NC','4E','angelina.daige@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);

-- antonio.almeida@gmail.com
insert into atribuicao values (3239,'NC','1A','antonio.almeida@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (4771,'NC','1B','antonio.almeida@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7138,'NC','1C','antonio.almeida@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8332,'NC','1D','antonio.almeida@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (9637,'NC','1E','antonio.almeida@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (9812,'NC','2A','antonio.almeida@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10337,'NC','2B','antonio.almeida@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10548,'NC','2C','antonio.almeida@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10609,'NC','2D','antonio.almeida@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);

-- aparecida.sinopoli@gmail.com
insert into atribuicao values (6899,'NC','1A','aparecida.sinopoli@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8208,'NC','1B','aparecida.sinopoli@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8217,'NC','1C','aparecida.sinopoli@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8354,'NC','1D','aparecida.sinopoli@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);

-- ary.souza@gmail.com
insert into atribuicao values (6691,'NC','1C','ary.souza@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
/*insert into atribuicao values (3606,'NC','1A','ary.souza@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (6639,'NC','1B','ary.souza@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (6735,'NC','1D','ary.souza@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8672,'NC','1E','ary.souza@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10530,'NC','2A','ary.souza@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);*/

-- augusto.antunes@gmail.com
insert into atribuicao values (5135,'NC','1A','augusto.antunes@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (6455,'NC','1B','augusto.antunes@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8259,'NC','1C','augusto.antunes@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10264,'NC','1D','augusto.antunes@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11445,'NC','2A','augusto.antunes@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);

-- benedita.gonzalez@gmail.com
insert into atribuicao values (7372,'NC','1A','benedita.gonzalez@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8356,'NC','1B','benedita.gonzalez@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (9641,'NC','1C','benedita.gonzalez@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10310,'NC','2A','benedita.gonzalez@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);

-- catarina.salgado@gmail.com
insert into atribuicao values (3859,'NC','1A','catarina.salgado@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5421,'NC','1B','catarina.salgado@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (6592,'NC','1C','catarina.salgado@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (6853,'NC','1D','catarina.salgado@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7160,'NC','2A','catarina.salgado@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7365,'NC','2B','catarina.salgado@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8158,'NC','2C','catarina.salgado@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (9863,'NC','2D','catarina.salgado@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11044,'NC','3A','catarina.salgado@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);

-- constantino.michaello@gmail.com
insert into atribuicao values (7927,'NC','1A','constantino.michaello@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7970,'NC','1B','constantino.michaello@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10477,'NC','1C','constantino.michaello@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11033,'NC','1D','constantino.michaello@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11067,'NC','1E','constantino.michaello@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);

-- domenico.rangoni@gmail.com
insert into atribuicao values (3914,'NC','1A','domenico.rangoni@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5611,'NC','1B','domenico.rangoni@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (6035,'NC','1C','domenico.rangoni@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (6577,'NC','1D','domenico.rangoni@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8300,'NC','2A','domenico.rangoni@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8316,'NC','2B','domenico.rangoni@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (9687,'NC','2C','domenico.rangoni@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (9986,'NC','2D','domenico.rangoni@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);

-- ernesto.sobrinho@gmail.com
insert into atribuicao values (4567,'NC','1A','ernesto.sobrinho@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (6406,'NC','1B','ernesto.sobrinho@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7716,'NC','1C','ernesto.sobrinho@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8329,'NC','2A','ernesto.sobrinho@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10575,'NC','2B','ernesto.sobrinho@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);

-- franklin.roosevelt@gmail.com
insert into atribuicao values (5143,'NC','1A','franklin.roosevelt@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (6049,'NC','2A','franklin.roosevelt@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7224,'NC','3A','franklin.roosevelt@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7371,'NC','4A','franklin.roosevelt@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);

-- giusfredo.santini@gmail.com
insert into atribuicao values (5411,'NC','1A','giusfredo.santini@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8193,'NC','1B','giusfredo.santini@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8422,'NC','1C','giusfredo.santini@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8431,'NC','1D','giusfredo.santini@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (9791,'NC','2A','giusfredo.santini@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10561,'NC','2B','giusfredo.santini@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10595,'NC','2C','giusfredo.santini@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);

-- gladston.jafet@gmail.com
insert into atribuicao values (5664,'NC','1A','gladston.jafet@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7260,'NC','1B','gladston.jafet@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10588,'NC','1C','gladston.jafet@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11062,'NC','2A','gladston.jafet@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);

-- guilherme.furlani@gmail.com
insert into atribuicao values (5008,'NC','1A','guilherme.furlani@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7225,'NC','1B','guilherme.furlani@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7325,'NC','1C','guilherme.furlani@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8211,'NC','1D','guilherme.furlani@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (9503,'NC','2A','guilherme.furlani@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (9953,'NC','2B','guilherme.furlani@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10469,'NC','2C','guilherme.furlani@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10580,'NC','2D','guilherme.furlani@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10589,'NC','3A','guilherme.furlani@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23560,'NC','3B','guilherme.furlani@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);

-- herbert.dow@gmail.com
insert into atribuicao values (6532,'NC','1A','herbert.dow@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (6854,'NC','1B','herbert.dow@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7457,'NC','1C','herbert.dow@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8213,'NC','1D','herbert.dow@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (9675,'NC','1E','herbert.dow@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10285,'NC','2A','herbert.dow@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10300,'NC','2B','herbert.dow@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10502,'NC','2C','herbert.dow@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10556,'NC','2D','herbert.dow@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11059,'NC','2E','herbert.dow@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23590,'NC','3A','herbert.dow@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);

-- herminia.vitiello@gmail.com
insert into atribuicao values (4340,'NC','1A','herminia.vitiello@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5616,'NC','1B','herminia.vitiello@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5685,'NC','1C','herminia.vitiello@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7137,'NC','2A','herminia.vitiello@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7403,'NC','2B','herminia.vitiello@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7681,'NC','2C','herminia.vitiello@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);

-- ivonete.camara@gmail.com
insert into atribuicao values (4585,'NC','1A','ivonete.camara@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (6767,'NC','1B','ivonete.camara@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (6960,'NC','1C','ivonete.camara@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10260,'NC','2A','ivonete.camara@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10261,'NC','2B','ivonete.camara@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10496,'NC','2C','ivonete.camara@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10516,'NC','3A','ivonete.camara@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);

-- jacirema.fontes@gmail.com
insert into atribuicao values (5082,'NC','1A','jacirema.fontes@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (6688,'NC','1B','jacirema.fontes@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7294,'NC','1C','jacirema.fontes@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7686,'NC','1D','jacirema.fontes@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7687,'NC','2A','jacirema.fontes@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8267,'NC','2B','jacirema.fontes@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (9432,'NC','2C','jacirema.fontes@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (9520,'NC','2D','jacirema.fontes@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10297,'NC','3A','jacirema.fontes@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11049,'NC','3B','jacirema.fontes@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11069,'NC','3C','jacirema.fontes@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);

-- joao.oliveira@gmail.com
insert into atribuicao values (4671,'NC','1A','joao.oliveira@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5820,'NC','1B','joao.oliveira@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (6026,'NC','1C','joao.oliveira@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7183,'NC','2A','joao.oliveira@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7253,'NC','2B','joao.oliveira@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8353,'NC','2C','joao.oliveira@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (9908,'NC','3A','joao.oliveira@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10174,'NC','3B','joao.oliveira@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10316,'NC','3C','joao.oliveira@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);

-- jose.souza@gmail.com
insert into atribuicao values (3864,'NC','1A','jose.souza@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (6041,'NC','1B','jose.souza@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (6386,'NC','2A','jose.souza@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (6904,'NC','2B','jose.souza@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7179,'NC','3A','jose.souza@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7409,'NC','3B','jose.souza@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);

-- lucia.santos@gmail.com

-- magdalena.lourenco@gmail.com
insert into atribuicao values (4691,'NC','1A','magdalena.lourenco@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (6798,'NC','1B','magdalena.lourenco@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (6934,'NC','1C','magdalena.lourenco@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7177,'NC','1D','magdalena.lourenco@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7925,'NC','2A','magdalena.lourenco@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (9782,'NC','2B','magdalena.lourenco@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (9794,'NC','2C','magdalena.lourenco@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10602,'NC','2D','magdalena.lourenco@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);

-- maria.eunice@gmail.com
insert into atribuicao values (4215,'NC','1A','maria.eunice@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5705,'NC','1B','maria.eunice@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7151,'NC','1C','maria.eunice@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7323,'NC','1D','maria.eunice@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7933,'NC','2A','maria.eunice@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8205,'NC','2B','maria.eunice@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8676,'NC','2C','maria.eunice@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (9612,'NC','2D','maria.eunice@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);

-- maria.lourdes@gmail.com
insert into atribuicao values (9642,'NC','1A','maria.lourdes@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10542,'NC','1B','maria.lourdes@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11071,'NC','1C','maria.lourdes@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);

-- maria.teixeira@gmail.com
insert into atribuicao values (5053,'NC','1A','maria.teixeira@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7412,'NC','1B','maria.teixeira@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7924,'NC','2A','maria.teixeira@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8436,'NC','2B','maria.teixeira@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);

-- marina.daige@gmail.com
insert into atribuicao values (4679,'NC','1A','marina.daige@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7377,'NC','2A','marina.daige@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);

-- mario.leite@gmail.com
insert into atribuicao values (7773,'NC','1A','mario.leite@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8335,'NC','2A','mario.leite@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);

-- myrian.millborn@gmail.com
insert into atribuicao values (3592,'NC','1A','myrian.millborn@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (4702,'NC','1B','myrian.millborn@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7133,'NC','1C','myrian.millborn@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8195,'NC','1D','myrian.millborn@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8437,'NC','1E','myrian.millborn@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);

-- napoleao.rodrigues@gmail.com
insert into atribuicao values (5272,'NC','1A','napoleao.rodrigues@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7274,'NC','1B','napoleao.rodrigues@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7375,'NC','1C','napoleao.rodrigues@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7845,'NC','1D','napoleao.rodrigues@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8740,'NC','1E','napoleao.rodrigues@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);

-- oswaldo.cruz@gmail.com
insert into atribuicao values (4099,'NC','1A','oswaldo.cruz@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5663,'NC','1B','oswaldo.cruz@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (6468,'NC','1C','oswaldo.cruz@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7822,'NC','1D','oswaldo.cruz@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8447,'NC','1E','oswaldo.cruz@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);

-- paulo.freire@gmail.com
insert into atribuicao values (3860,'NC','1A','paulo.freire@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (6760,'NC','1B','paulo.freire@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7426,'NC','1C','paulo.freire@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8268,'NC','1D','paulo.freire@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8986,'NC','1E','paulo.freire@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);

-- philomena.cardoso@gmail.com
insert into atribuicao values (4578,'NC','1A','philomena.cardoso@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (4581,'NC','1B','philomena.cardoso@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (6682,'NC','1C','philomena.cardoso@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7223,'NC','1D','philomena.cardoso@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);

-- samuel.franco@gmail.com
insert into atribuicao values (6075,'NC','1A','samuel.franco@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (6632,'NC','1B','samuel.franco@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);

-- sergio.rodrigues@gmail.com
insert into atribuicao values (8219,'NC','1A','sergio.rodrigues@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);

-- valeria.vieira@gmail.com
insert into atribuicao values (4785,'NC','1A','valeria.vieira@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);

-- vereador.ernesto@gmail.com
insert into atribuicao values (6452,'NC','1A','vereador.ernesto@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7444,'NC','1B','vereador.ernesto@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8272,'NC','1C','vereador.ernesto@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8424,'NC','1D','vereador.ernesto@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);

-- vicentina.valle@gmail.com
insert into atribuicao values (5695,'NC','1A','vicentina.valle@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (6636,'NC','1B','vicentina.valle@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8339,'NC','1C','vicentina.valle@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8340,'NC','1D','vicentina.valle@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (9423,'NC','1E','vicentina.valle@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (9546,'NC','2A','vicentina.valle@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (9658,'NC','2B','vicentina.valle@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10282,'NC','2C','vicentina.valle@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10519,'NC','2D','vicentina.valle@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10524,'NC','2E','vicentina.valle@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10546,'NC','3A','vicentina.valle@gmail.com',1,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);

-- PEBIII
insert into atribuicao values (23554,'CIEN','6A','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23554,'CIEN','6B','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23554,'CIEN','6C','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23554,'CIEN','6D','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23554,'CIEN','6E','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (47,'CIEN','6A','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (47,'CIEN','6B','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (47,'CIEN','6C','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (47,'CIEN','6D','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (47,'CIEN','6E','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (47,'CIEN','7A','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (47,'CIEN','7B','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (47,'CIEN','7C','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10971,'CIEN','6A','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10971,'CIEN','6B','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22935,'CIEN','6C','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22935,'CIEN','7A','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22935,'CIEN','7B','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22935,'CIEN','7C','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22935,'CIEN','8A','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22935,'CIEN','8B','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22935,'CIEN','6A','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22935,'CIEN','6B','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22935,'CIEN','6C','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22935,'CIEN','7A','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22935,'CIEN','7B','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22935,'CIEN','7C','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22935,'CIEN','8A','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22935,'CIEN','8B','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (136,'EDF','1A','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (136,'EDF','1B','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (136,'EDF','1C','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (136,'EDF','1D','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (136,'EDF','1E','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (136,'EDF','2A','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (136,'EDF','2B','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (136,'EDF','2C','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (136,'EDF','2D','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (136,'EDF','2E','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (136,'EDF','3A','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (136,'EDF','3B','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (3173,'MAT','6A','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (3173,'MAT','6B','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10522,'MAT','6A','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10522,'MAT','6B','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10522,'MAT','6C','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10522,'MAT','7A','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10522,'MAT','7B','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10522,'MAT','7C','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11021,'MAT','6A','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (17916,'MAT','6A','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (17916,'MAT','6B','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (17916,'MAT','6C','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (17916,'MAT','6D','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (17916,'MAT','7A','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (17916,'MAT','7B','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5176,'PORT','6A','lucia.santos@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5176,'PORT','7A','lucia.santos@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5176,'PORT','8A','lucia.santos@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22823,'ART','1A','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23128,'ART','1A','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12977,'EDF','6A','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12977,'EDF','6B','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12977,'EDF','6C','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12977,'EDF','6D','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12977,'EDF','7A','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12977,'EDF','7B','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12977,'EDF','7C','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14946,'EDF','1A','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14946,'EDF','1B','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14946,'EDF','1C','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14946,'EDF','1D','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14946,'EDF','2A','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14946,'EDF','2B','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14946,'EDF','2C','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14946,'EDF','2D','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14946,'EDF','3A','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14946,'EDF','3B','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14946,'EDF','3C','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14946,'EDF','3D','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14946,'EDF','6A','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14946,'EDF','6B','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14946,'EDF','6C','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14946,'EDF','6D','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (18091,'EDF','6A','lucia.santos@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (18091,'EDF','7A','lucia.santos@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (18091,'EDF','8A','lucia.santos@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (18091,'EDF','1A','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (18091,'EDF','1B','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (18091,'EDF','1C','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (18091,'EDF','2A','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (18091,'EDF','2B','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (18091,'EDF','2C','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (18091,'EDF','3A','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (18091,'EDF','3B','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (18091,'EDF','3C','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (18091,'EDF','4A','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (18091,'EDF','4B','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (18091,'EDF','4C','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (18091,'EDF','6A','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (18091,'EDF','6B','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (18091,'EDF','6C','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11003,'GEO','6A','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11003,'GEO','6B','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11003,'GEO','6C','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11003,'GEO','6D','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11003,'GEO','6E','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11003,'GEO','7A','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11003,'GEO','7B','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8233,'ING','6A','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8233,'ING','6B','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8233,'ING','6C','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8233,'ING','6D','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8233,'ING','7A','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8233,'ING','7B','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8233,'ING','7C','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8233,'ING','7D','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8233,'ING','6A','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8233,'ING','6B','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8233,'ING','6C','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8233,'ING','7A','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8233,'ING','7B','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8233,'ING','7C','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8233,'ING','8A','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8233,'ING','8B','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8233,'ING','8C','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (9371,'PORT','6A','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (9371,'PORT','6B','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (9371,'PORT','6C','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (9371,'PORT','6D','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (9371,'PORT','7A','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11100,'PORT','6A','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11100,'PORT','6B','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14813,'PORT','6A','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (16763,'PORT','6C','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (16763,'PORT','6D','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (16763,'PORT','6A','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (16763,'PORT','6B','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (16763,'PORT','6C','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (16763,'PORT','6D','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (19643,'PORT','6A','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (19643,'PORT','6B','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (19643,'PORT','6C','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (15029,'ART','1A','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (15029,'ART','1B','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (15029,'ART','1C','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (15029,'ART','2A','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (20754,'ART','2B','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (20754,'ART','2C','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (20754,'ART','3A','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (20754,'ART','3B','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (20754,'ART','3C','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (20754,'ART','4A','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (20754,'ART','4B','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (20754,'ART','4C','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (20754,'ART','5A','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (20754,'ART','5B','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (20754,'ART','5C','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (20754,'ART','6A','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (20754,'ART','6A','lucia.santos@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (20754,'ART','7A','lucia.santos@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (20754,'ART','8A','lucia.santos@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (6863,'CIEN','6A','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (6863,'CIEN','6B','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (6863,'CIEN','6C','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (6863,'CIEN','6D','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (6863,'CIEN','6E','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (3673,'EDF','6A','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (3673,'EDF','6B','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (3673,'EDF','6C','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (3673,'EDF','6D','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (3673,'EDF','7A','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (3673,'EDF','7B','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (3673,'EDF','7C','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (3673,'EDF','7D','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10642,'EDF','3C','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10642,'EDF','3D','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10642,'EDF','3E','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10642,'EDF','4A','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12935,'EDF','1A','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12935,'EDF','1B','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12935,'EDF','1C','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12935,'EDF','2A','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22900,'GEO','6A','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22900,'GEO','6B','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22900,'GEO','6C','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22900,'GEO','6D','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8289,'HIST','6A','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8289,'HIST','6B','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8289,'HIST','6C','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8289,'HIST','6D','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8289,'HIST','6E','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8289,'HIST','7A','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8289,'HIST','7B','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8289,'HIST','7C','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8289,'HIST','7D','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23255,'ING','6A','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23255,'ING','6B','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23255,'ING','6C','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23255,'ING','6D','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23255,'ING','6E','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23255,'ING','7A','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23255,'ING','7B','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23255,'ING','7C','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23255,'ING','7D','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23255,'ING','7E','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23255,'ING','8A','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23255,'ING','8B','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23255,'ING','8C','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23255,'ING','8D','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23255,'ING','8E','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23255,'ING','9A','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22817,'MAT','6A','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (90,'PORT','6E','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7186,'ART','6A','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7186,'ART','6B','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7186,'ART','6C','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7186,'ART','6D','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7186,'ART','6E','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7186,'ART','7A','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7186,'ART','7B','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7186,'ART','7C','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7696,'EDF','6A','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7696,'EDF','6B','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7696,'EDF','6C','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7696,'EDF','6D','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7696,'EDF','6E','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7696,'EDF','7A','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7696,'EDF','7B','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7696,'EDF','7C','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7696,'EDF','7D','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7696,'EDF','7E','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7696,'EDF','8A','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7696,'EDF','8B','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12969,'EDF','6A','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12969,'EDF','6B','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12969,'EDF','6C','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12969,'EDF','6D','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12969,'EDF','7A','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12969,'EDF','7B','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12969,'EDF','7C','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12969,'EDF','7D','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (13234,'EDF','6A','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (13234,'EDF','6B','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (13234,'EDF','6C','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (13234,'EDF','6D','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (13234,'EDF','6E','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (13234,'EDF','7A','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (13234,'EDF','7B','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (13234,'EDF','7C','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (13234,'EDF','7D','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (13234,'EDF','7E','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (13234,'EDF','8A','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (13234,'EDF','8B','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (13234,'EDF','8C','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (13234,'EDF','8D','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (13234,'EDF','8E','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (13234,'EDF','9A','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14804,'EDF','6A','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14804,'EDF','6B','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14804,'EDF','6C','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14804,'EDF','6D','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14804,'EDF','6E','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14804,'EDF','7A','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14804,'EDF','7B','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14804,'EDF','7C','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14804,'EDF','7D','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14804,'EDF','7E','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14804,'EDF','8A','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14804,'EDF','8B','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14804,'EDF','8C','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14804,'EDF','8D','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14804,'EDF','8E','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8903,'HIST','6A','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8903,'HIST','6B','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8903,'HIST','6C','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8903,'HIST','6D','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8903,'HIST','7A','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8903,'HIST','7B','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8903,'HIST','7C','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (13278,'MAT','6A','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (13278,'MAT','6B','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (13278,'MAT','6C','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (13278,'MAT','6D','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (13278,'MAT','6E','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (13278,'MAT','7A','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23253,'MAT','6A','lucia.santos@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23253,'MAT','7A','lucia.santos@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23253,'MAT','8A','lucia.santos@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22818,'PORT','6A','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22818,'PORT','6B','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14798,'ART','6A','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14798,'ART','6B','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14798,'ART','6C','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14798,'ART','6D','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14798,'ART','6E','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22899,'ART','6A','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22899,'ART','6B','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23025,'ART','6A','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23025,'ART','6B','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23025,'ART','6C','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23025,'ART','6D','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23025,'ART','7A','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23025,'ART','7B','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23025,'ART','7C','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23025,'ART','7D','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23025,'ART','8A','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23025,'ART','8B','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23025,'ART','8C','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23025,'ART','8D','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23025,'ART','7A','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23025,'ART','7B','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23025,'ART','7C','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23025,'ART','7D','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23025,'ART','7E','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23025,'ART','8A','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23025,'ART','8B','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23025,'ART','8C','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23025,'ART','8D','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12900,'EDF','2B','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12900,'EDF','2C','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12900,'EDF','3A','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12900,'EDF','3B','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12900,'EDF','3C','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12900,'EDF','4A','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12900,'EDF','4B','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12900,'EDF','4C','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12900,'EDF','5A','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12900,'EDF','5B','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12900,'EDF','5C','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12976,'EDF','8A','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12976,'EDF','8B','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12976,'EDF','8C','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12976,'EDF','8D','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11002,'GEO','6A','lucia.santos@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11002,'GEO','7A','lucia.santos@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11002,'GEO','8A','lucia.santos@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11002,'GEO','6A','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11002,'GEO','6B','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11002,'GEO','6C','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11002,'GEO','6D','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11002,'GEO','7A','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11002,'GEO','7B','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11002,'GEO','7C','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14904,'GEO','6A','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14904,'GEO','6B','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14904,'GEO','6C','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14904,'GEO','6D','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14904,'GEO','7A','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14904,'GEO','7B','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14904,'GEO','7C','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14904,'GEO','7D','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14904,'GEO','8A','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14904,'GEO','8B','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11009,'ING','6A','lucia.santos@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11009,'ING','7A','lucia.santos@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11009,'ING','8A','lucia.santos@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11009,'ING','6A','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11009,'ING','6B','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11009,'ING','6C','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11009,'ING','6D','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11009,'ING','6E','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11009,'ING','7A','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11009,'ING','7B','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11009,'ING','7C','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11009,'ING','7D','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11009,'ING','7E','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11009,'ING','8A','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (21121,'ART','1B','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (21121,'ART','1C','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (21121,'ART','2A','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (21121,'ART','2B','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (21121,'ART','2C','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (21121,'ART','3A','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (21121,'ART','3B','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (21121,'ART','3C','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (21121,'ART','4A','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (21121,'ART','6A','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (21121,'ART','6B','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (21121,'ART','6C','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (21121,'ART','6D','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (21121,'ART','7A','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (21121,'ART','7B','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (21121,'ART','7C','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (21121,'ART','7D','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12967,'CIEN','6A','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12967,'CIEN','6B','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12967,'CIEN','6C','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12967,'CIEN','6D','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12967,'CIEN','7A','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12967,'CIEN','7B','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12967,'CIEN','7C','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12967,'CIEN','7D','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23251,'CIEN','6A','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23251,'CIEN','6B','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23251,'CIEN','6C','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23251,'CIEN','6D','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23251,'CIEN','7A','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23251,'CIEN','7B','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (9567,'EDF','7D','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (9567,'EDF','8A','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (9567,'EDF','8B','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (9567,'EDF','8C','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (9567,'EDF','8D','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
/*insert into atribuicao values (6119,'HIST','6A','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (6119,'HIST','6B','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (6119,'HIST','6C','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (6119,'HIST','6D','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (6119,'HIST','6E','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);*/
insert into atribuicao values (23081,'ING','6A','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23081,'ING','6B','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23081,'ING','6C','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23081,'ING','6D','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23081,'ING','7A','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23081,'ING','7B','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23081,'ING','7C','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23081,'ING','7D','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23081,'ING','8A','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23081,'ING','8B','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23081,'ING','8C','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23081,'ING','8D','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10678,'MAT','6C','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10678,'MAT','6D','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10678,'MAT','6E','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10678,'MAT','7A','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10678,'MAT','6B','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10678,'MAT','6C','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10678,'MAT','6D','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10678,'MAT','6E','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10678,'MAT','7A','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (86,'PORT','6A','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (86,'PORT','6B','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (86,'PORT','6C','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (86,'PORT','6D','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (86,'PORT','6E','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (4827,'PORT','6D','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (4827,'PORT','7A','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (4827,'PORT','6B','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (4827,'PORT','6C','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (4827,'PORT','6D','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (4827,'PORT','7A','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5273,'PORT','6C','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5273,'PORT','6D','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5273,'PORT','6E','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5273,'PORT','6A','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5273,'PORT','6B','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5273,'PORT','6C','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5273,'PORT','7A','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5273,'PORT','7B','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5463,'ART','6C','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5463,'ART','6D','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5463,'ART','6E','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5463,'ART','7A','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5463,'ART','7B','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5463,'ART','7C','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5463,'ART','7D','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5463,'ART','7E','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5463,'ART','8A','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5463,'ART','8B','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5463,'ART','8C','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5463,'ART','8D','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (19677,'CIEN','6A','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (19677,'CIEN','6B','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (19677,'CIEN','6C','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (19677,'CIEN','6D','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (19677,'CIEN','7A','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (13240,'EDF','6A','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (13240,'EDF','9A','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23302,'GEO','6A','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23302,'GEO','6B','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12921,'ING','8B','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12921,'ING','8C','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12921,'ING','8D','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12921,'ING','8E','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12921,'ING','9A','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12921,'ING','6A','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12921,'ING','6B','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12921,'ING','6C','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12921,'ING','6D','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12921,'ING','6E','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12921,'ING','7A','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12921,'ING','7B','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12921,'ING','7C','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12921,'ING','7D','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12921,'ING','7E','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12921,'ING','8A','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12921,'ING','8B','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12921,'ING','8C','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12921,'ING','8D','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12921,'ING','8E','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12921,'ING','9A','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (13052,'MAT','6B','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (13052,'MAT','6C','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (13052,'MAT','6D','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (13052,'MAT','7A','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (16351,'ART','1A','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (16351,'ART','1B','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (16351,'ART','1C','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (16351,'ART','1D','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (16351,'ART','1E','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (16351,'ART','2A','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (16351,'ART','2B','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (16351,'ART','2C','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (16351,'ART','2D','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11504,'EDF','8C','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11504,'EDF','8D','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11504,'EDF','8E','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11504,'EDF','9A','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11504,'EDF','7A','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22901,'GEO','6A','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22901,'GEO','6B','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22901,'GEO','6C','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22901,'GEO','6D','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22901,'GEO','6E','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22901,'GEO','7A','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5692,'HIST','7D','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5692,'HIST','8A','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5692,'HIST','8B','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5692,'HIST','6A','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5692,'HIST','6B','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5692,'HIST','6C','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5692,'HIST','7A','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5692,'HIST','7B','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5692,'HIST','7C','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5692,'HIST','8A','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5692,'HIST','8B','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5692,'HIST','8C','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5692,'HIST','9A','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (17884,'HIST','6A','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (17884,'HIST','6B','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (17884,'HIST','6C','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (17884,'HIST','6D','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (17884,'HIST','6E','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (17884,'HIST','7A','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (17884,'HIST','7B','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (17884,'HIST','7C','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (17884,'HIST','7D','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (17884,'HIST','7E','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14793,'PORT','6A','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14793,'PORT','6B','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14793,'PORT','6C','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (16728,'PORT','6A','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (19669,'PORT','6B','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (19669,'PORT','6C','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (19669,'PORT','7A','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23099,'CIEN','6A','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23099,'CIEN','6B','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (16822,'HIST','6A','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (16822,'HIST','6B','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8443,'MAT','6A','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8443,'MAT','6B','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (17156,'MAT','6C','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (17156,'MAT','6D','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (85,'PORT','7B','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (85,'PORT','6E','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7706,'ART','7D','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (17910,'CIEN','6A','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (17910,'CIEN','6B','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (17910,'CIEN','6C','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (17910,'CIEN','6D','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23301,'GEO','6A','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23301,'GEO','6B','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5064,'HIST','6C','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5064,'HIST','6D','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5064,'HIST','7A','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5064,'HIST','7B','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5064,'HIST','6A','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5064,'HIST','6B','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5064,'HIST','6C','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5064,'HIST','7A','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5064,'HIST','7B','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5064,'HIST','7C','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22806,'ING','6A','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22806,'ING','6B','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22806,'ING','6C','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22806,'ING','6D','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12975,'MAT','6A','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23174,'MAT','6A','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23174,'MAT','6B','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23174,'MAT','6C','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23174,'MAT','6D','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23174,'MAT','6E','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (21122,'ART','6A','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (21122,'ART','6B','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (21122,'ART','6C','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (21122,'ART','6D','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (21122,'ART','7A','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (16223,'CIEN','6C','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (16223,'CIEN','6D','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (16223,'CIEN','7A','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (16223,'CIEN','7B','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (16223,'CIEN','7C','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (16223,'CIEN','7D','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (16223,'CIEN','6E','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (16223,'CIEN','7A','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (16223,'CIEN','7B','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (16223,'CIEN','7C','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11435,'ING','7A','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11435,'ING','7B','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11435,'ING','7C','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11435,'ING','7D','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11435,'ING','8A','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11435,'ING','8B','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11435,'ING','8C','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11435,'ING','8D','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11435,'ING','9A','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11435,'ING','9B','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11435,'ING','9C','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11435,'ING','9D','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11435,'ING','6A','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11435,'ING','6B','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11435,'ING','6C','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11435,'ING','7A','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11435,'ING','7B','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11435,'ING','7C','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11435,'ING','8A','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11435,'ING','8B','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11435,'ING','8C','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11435,'ING','9A','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11435,'ING','9B','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11435,'ING','9C','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22813,'MAT','6A','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22813,'MAT','6B','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22813,'MAT','6C','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22813,'MAT','7A','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22813,'MAT','7B','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22813,'MAT','7C','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5021,'PORT','6D','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (5021,'PORT','7A','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (13269,'ART','8E','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (13269,'ART','9A','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14795,'GEO','7A','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14795,'GEO','6C','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14795,'GEO','6D','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14795,'GEO','6E','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (6535,'HIST','6A','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (6535,'HIST','6B','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (6535,'HIST','6C','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (6535,'HIST','6D','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (6535,'HIST','7A','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (6535,'HIST','7B','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (6535,'HIST','7C','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (6535,'HIST','7D','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (6535,'HIST','8A','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (6535,'HIST','8B','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10334,'CIEN','6A','lucia.santos@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10334,'CIEN','7A','lucia.santos@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10334,'CIEN','8A','lucia.santos@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12787,'GEO','7B','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12787,'GEO','7C','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (20315,'GEO','6A','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (20315,'GEO','6B','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (20315,'GEO','6C','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (20315,'GEO','6D','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (6104,'HIST','6A','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (6104,'HIST','6B','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (6104,'HIST','6C','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (6104,'HIST','6D','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (6104,'HIST','7A','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7110,'HIST','6A','lucia.santos@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7110,'HIST','7A','lucia.santos@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7110,'HIST','8A','lucia.santos@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (20750,'MAT','7A','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (16303,'ART','7B','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (16303,'ART','7C','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (16303,'ART','7D','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (16145,'CIEN','7A','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (16145,'CIEN','7B','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (16145,'CIEN','7C','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10974,'ART','2E','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10974,'ART','3A','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10974,'ART','3B','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10974,'ART','3C','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10974,'ART','3D','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10974,'ART','3E','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10974,'ART','4A','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (13054,'ART','8A','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (13054,'ART','8B','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (13054,'ART','8C','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (13054,'ART','8D','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22802,'ART','1B','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22802,'ART','1C','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22802,'ART','1D','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22802,'ART','2A','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22802,'ART','2B','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22802,'ART','2C','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22802,'ART','2D','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22802,'ART','3A','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22802,'ART','3B','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22802,'ART','3C','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12893,'MAT','7B','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10996,'GEO','6A','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10996,'GEO','6B','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10996,'GEO','6C','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10996,'GEO','7A','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10996,'GEO','7B','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10996,'GEO','7C','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10996,'GEO','8A','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10996,'GEO','8B','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10996,'GEO','8C','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12940,'HIST','7A','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12940,'HIST','7B','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12940,'HIST','7C','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12940,'HIST','7D','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (4704,'HIST','6A','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (4704,'HIST','6B','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (4704,'HIST','6C','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (4704,'HIST','6D','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (4704,'HIST','6E','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (4704,'HIST','7A','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (4704,'HIST','7B','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (19670,'ART','8E','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (19670,'ART','9A','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11030,'CIEN','7A','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11030,'CIEN','7B','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8492,'GEO','7A','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8492,'GEO','7B','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8492,'GEO','7C','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8492,'GEO','7D','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8492,'GEO','8A','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8492,'GEO','8B','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8492,'GEO','7C','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8492,'GEO','7D','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8492,'GEO','7E','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22808,'HIST','7C','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22808,'HIST','7D','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12055,'ING','6A','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12055,'ING','6B','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12055,'ING','6C','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12055,'ING','6D','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12055,'ING','7A','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12055,'ING','7B','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12055,'ING','7C','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12055,'ING','7D','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12055,'ING','8A','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12055,'ING','8B','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12055,'ING','8C','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12055,'ING','8D','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (8200,'GEO','7D','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23575,'ART','7E','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23575,'ART','8A','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23575,'ART','8B','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23575,'ART','8C','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23575,'ART','8D','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23575,'ART','8E','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23575,'ART','9A','francisco.figueiredo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23592,'HIST','7B','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (16177,'ART','4B','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (16177,'ART','4C','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (16177,'ART','6A','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (16177,'ART','6B','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (16177,'ART','6C','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (16177,'ART','7A','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (4119,'GEO','6C','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (4119,'GEO','6D','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (4119,'GEO','6E','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (4119,'GEO','7A','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (4119,'GEO','7B','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22805,'ING','6A','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22805,'ING','6B','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22805,'ING','6C','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22805,'ING','6D','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22805,'ING','6E','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22805,'ING','7A','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22805,'ING','7B','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22805,'ING','7C','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10454,'CIEN','7B','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (17862,'GEO','7D','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (17862,'GEO','8A','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (17862,'GEO','8B','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (18186,'MAT','7A','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23572,'CIEN','7C','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23572,'CIEN','7D','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23551,'ART','3D','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23551,'ART','6A','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23551,'ART','6B','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23574,'HIST','8A','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23574,'HIST','8B','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23581,'ING','7D','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23581,'ING','7E','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23581,'ING','8A','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23581,'ING','8B','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23581,'ING','8C','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23563,'HIST','8C','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23591,'GEO','7C','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23591,'GEO','7D','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23591,'GEO','7E','primeiro.maio@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7764,'MAT','7C','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (7764,'MAT','7B','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (10331,'HIST','9A','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12897,'GEO','6A','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12897,'GEO','6B','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12897,'GEO','6C','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12897,'GEO','7A','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12897,'GEO','7B','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12897,'GEO','7C','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12897,'GEO','8A','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12897,'GEO','8B','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12897,'GEO','8C','benedita.gonzalez@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22809,'HIST','7C','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22809,'HIST','7D','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22809,'HIST','8A','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22809,'HIST','8B','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23058,'GEO','7A','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (23058,'GEO','7B','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (22922,'MAT','7B','maria.camargo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (13280,'CIEN','7C','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (13280,'CIEN','7D','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (16987,'GEO','9A','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11114,'MAT','6B','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11114,'MAT','6C','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11114,'MAT','6D','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11114,'MAT','7A','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (11114,'MAT','7B','lucimara.vicente@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (17895,'ART','6C','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (17895,'ART','6D','ivonete.camara@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14801,'ING','9A','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14801,'ING','9B','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (14801,'ING','9C','gladston.jafet@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (13250,'CIEN','7C','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12543,'GEO','7B','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12543,'GEO','7C','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (12543,'GEO','7D','maria.araujo@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (13069,'ING','8D','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (13069,'ING','8E','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (13069,'ING','9A','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (9630,'GEO','7E','dirce.gracia@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (9630,'GEO','7C','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (9630,'GEO','7D','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
insert into atribuicao values (9630,'GEO','7E','ary.souza@gmail.com',2,'2025-02-02 10:00:00','erica.campos@gmail.com','2025-02-02 10:00:00','2025-12-22 10:00:00','1º Atribuição',true,true,true,False,true);
