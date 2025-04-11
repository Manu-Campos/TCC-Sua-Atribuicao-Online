Drop schema if exists AtribuicaoGuaruja;
Create Schema AtribuicaoGuaruja; 
use AtribuicaoGuaruja;

grant all privileges on *.* to 'root'@'%' identified by 'root';

Create table Atribuidor (
    nm_atribuidor varchar(200),
    cd_numero_atribuidor varchar(15),
    nm_email_atribuidor varchar(200),
    nm_senha_atribuidor varchar(64),
	dt_nascimento_atribuidor date,
	img_perfil longblob,
    primary key pk_atribuidor (nm_email_atribuidor)
);

Create table instituicao (
    nm_instituicao varchar(200),
    cd_numero_instituicao varchar(15),
    nm_email_instituicao varchar(200),
    nm_senha_instituicao varchar(64),
	img_perfil longblob,
    primary key pk_instituicao (nm_email_instituicao)
);

Create table Tipo_Professor(
	cd_tipo_professor int,
	nm_tipo_professor varchar(15),
	primary key pk_Tipo_Professor (cd_tipo_professor)
);

Create table Tipo_Ensino(
	cd_tipo_ensino int,
	nm_tipo_ensino varchar(7),
	primary key pk_Tipo_Ensino (cd_tipo_ensino)
);

Create table Tipo_Periodo(
	cd_tipo_periodo int,
	nm_tipo_periodo varchar(15),
	primary key pk_Tipo_Periodo (cd_tipo_periodo)
);

Create table Tipo_Solicitacao (
	cd_Tipo_Solicitacao Int,
	nm_Tipo_Solicitacao Varchar(100),
	primary key pk_Tipo_Solicitacao (cd_Tipo_Solicitacao)
);

Create table Tipo_Assunto (
	cd_tipo_assunto int, 
	nm_tipo_assunto varchar(200),
	primary key pk_tipo_assunto (cd_tipo_assunto)
);

Create table Disciplina (
    nm_disciplina varchar(200),
    sg_disciplina varchar(10),
    cd_tipo_ensino int,
	cd_multiplicador int,
    primary key pk_disciplina (sg_disciplina, cd_tipo_ensino),
	constraint fk_Tipo_Ensino_Disciplina foreign key (cd_tipo_ensino) references Tipo_Ensino(cd_tipo_ensino)
);

Create table instituicao_Tipo_Ensino (
	nm_email_instituicao varchar(200),
	cd_tipo_ensino int,
	primary key pk_instituicao_Tipo_Ensino (cd_tipo_ensino, nm_email_instituicao),
	constraint fk_instituicao_instituicao_Tipo_Ensino foreign key (nm_email_instituicao) references instituicao(nm_email_instituicao),
	constraint fk_Tipo_Ensino_instituicao_Tipo_Ensino foreign key (cd_tipo_ensino) references Tipo_Ensino(cd_tipo_ensino)
);

Create table Turma (
    nm_turma varchar(200),
    sg_turma varchar(4),
    nm_email_instituicao varchar(200),
	cd_tipo_ensino int,
	cd_tipo_periodo int,
    primary key pk_turma (sg_turma, nm_email_instituicao),
    Constraint fk_instituicao_Turma foreign key (nm_email_instituicao)
        references instituicao(nm_email_instituicao),
	Constraint fk_TipoEnsino_Turma foreign key (cd_tipo_ensino)
        references Tipo_Ensino(cd_tipo_ensino),
	Constraint fk_TipoPeriodo_Turma foreign key (cd_tipo_periodo)
        references Tipo_Periodo(cd_tipo_periodo)
);

Create table Professor (
    cd_professor int,
    nm_email_professor varchar(200),
    nm_senha_professor varchar(64),
    nm_professor varchar(200),
    qt_filhos int,
    dt_nascimento_professor date,
    dt_entrada_prefeitura date,
    qt_pontuacao decimal(10,2),
    cd_numero_professor varchar(15),
    cd_tipo_professor int,
    sg_disciplina varchar(10),
    cd_tipo_ensino int,
	ic_ativo bool,
	img_perfil longblob,
    Primary key pk_professor (cd_professor),
	Constraint fk_tipoProfessor_professor foreign key (cd_tipo_professor)
		references tipo_professor (cd_tipo_professor),
    Constraint fk_disciplina_professor foreign key (sg_disciplina, cd_tipo_ensino)
        references disciplina (sg_disciplina, cd_tipo_ensino)
);

Create table Carga_suplementar_professor (
    cd_tipo_ensino int,
    sg_disciplina varchar(10),
    cd_professor int,
	aa_carga_suplementar year,
	qt_carga_suplementar int,
    primary key pk_Carga_suplementar_professor (cd_tipo_ensino, sg_disciplina, cd_professor, aa_carga_suplementar, qt_carga_suplementar),
	constraint fk_Disciplina_Carga_Suplementar foreign key (cd_tipo_ensino, sg_disciplina) references Disciplina(cd_tipo_ensino, sg_disciplina),
	constraint fk_Professor_Carga_Suplementar foreign key (cd_professor) references Professor(cd_professor)
);

Create table Carga_Horaria (
    qt_carga_horaria int,
    qt_HTA int,
    qt_HTPC int,
    qt_HTPL int,
    primary key pk_Carga_Horaria(qt_HTA)
);

Create table Jornada (
    qt_HTA int,
    sg_disciplina varchar(10),
    cd_tipo_ensino int,
    primary key pk_Jornada (qt_HTA, sg_disciplina, cd_tipo_ensino),
    Constraint fk_Disciplina_Jornada foreign key (sg_disciplina)
        references Disciplina(sg_disciplina),
	Constraint fk_Tipo_Ensino_Jornada foreign key (cd_tipo_ensino)
        references Tipo_Ensino(cd_tipo_ensino),
	Constraint fk_Carga_Horario_Jornada foreign key (qt_HTA)
        references Carga_Horaria(qt_HTA)
);

Create table Jornada_Escolhida (
    qt_HTA int,
    sg_disciplina varchar(10),
    cd_tipo_ensino int,
    aa_jornada year,
    cd_professor int,
    primary key pk_Jornada (aa_jornada, qt_HTA, sg_disciplina, cd_professor, cd_tipo_ensino),
    Constraint fk_Jornada_Jornada_Escolhida foreign key (qt_HTA, sg_disciplina, cd_tipo_ensino)
        references Jornada (qt_HTA, sg_disciplina, cd_tipo_ensino),
    Constraint fk_Professor_Jornada_Escolhida foreign key (cd_professor)
        references Professor(cd_professor)
);

Create table Solicitacao (
	cd_professor int, 
	nm_email_atribuidor varchar(200),  
	dt_solicitacao datetime,
	cd_Tipo_Solicitacao int,
	ic_lido boolean,
	primary key pk_Solicitacao (cd_professor, nm_email_atribuidor, dt_solicitacao),
	Constraint fk_Atribuidor_Solicitacao foreign key (nm_email_atribuidor)
		references Atribuidor(nm_email_atribuidor),
	Constraint fk_Professor_Solicitacao foreign key (cd_professor)
		references Professor(cd_professor),
	Constraint fk_Tipo_Solicitacao_Solicitacao foreign key (cd_Tipo_Solicitacao)
		references Tipo_Solicitacao(cd_Tipo_Solicitacao)
);

Create table NotificacaoProfessorSistema(
	cd_professor int,  
	dt_Notificacao datetime,
	ds_Notificacao varchar(200),
	ic_lido boolean,
	primary key pk_NotificacaoProfessorSistema(cd_professor,dt_Notificacao),
	Constraint fk_Professor_Notificacao foreign key (cd_professor)
		references Professor(cd_professor)
);

Create table NotificacaoInstituicaoSistema(
	nm_email_instituicao varchar(200),  
	dt_Notificacao datetime,
	ds_Notificacao varchar(200),
	ic_lido boolean,
	primary key pk_NotificacaoInstituicaoSistema(nm_email_instituicao,dt_Notificacao),
	Constraint fk_Instituicao_Notificacao foreign key (nm_email_instituicao)
		references Instituicao(nm_email_instituicao)
);

Create table instituicao_Professor (
    cd_professor int,
    nm_email_instituicao varchar(200),
    ic_instituicao_sede boolean,
	aa_inicio year,
	aa_fim year,
    Primary key pk_instituicao_professor (cd_professor, nm_email_instituicao, aa_inicio),
    Constraint fk_instituicao_instituicao_Professor foreign key (nm_email_instituicao)
        references instituicao(nm_email_instituicao),
    Constraint fk_Professor_instituicao_Professor foreign key (cd_professor)
        references Professor(cd_professor)
);

Create table Diretor (
    nm_email_instituicao varchar(200),
    cd_professor int,
	dt_inicio_atividade date,
	dt_fim_atividade date,
    primary key pk_diretor (nm_email_instituicao, cd_professor, dt_inicio_atividade, dt_fim_atividade),
    Constraint fk_instituicao_diretor foreign key (nm_email_instituicao)
        references instituicao(nm_email_instituicao),
	Constraint fk_professor_diretor foreign key (cd_professor)
        references Professor(cd_professor)
);

Create table Supervisor (
	nm_email_atribuidor varchar(200),
	cd_professor int,
	sg_disciplina varchar(10),
	cd_tipo_ensino int,	
	nm_email_supervisor varchar(200),
	nm_senha_supervisor varchar(64),
	img_perfil longblob,
	primary key pk_supervisor (nm_email_atribuidor, cd_professor, sg_disciplina, cd_tipo_ensino),
	constraint fk_atribuidor_supervisor foreign key (nm_email_atribuidor)
		references atribuidor(nm_email_atribuidor),
	constraint fk_professor_supervisor foreign key (cd_professor)
		references professor(cd_professor),
	constraint fk_disciplina_supervisor foreign key (sg_disciplina,cd_tipo_ensino)
		references disciplina(sg_disciplina,cd_tipo_ensino)
);

Create table NotificacaoSupervisorSistema(
	cd_professor int,  
	dt_Notificacao datetime,
	ds_Notificacao varchar(200),
	ic_lido boolean,
	primary key pk_NotificacaoSupervisorSistema(cd_professor,dt_Notificacao),
	Constraint fk_supervisor_Notificacao foreign key (cd_professor)
		references supervisor(cd_professor)
);

Create table Fase (
    nm_fase varchar(100),
    nm_email_atribuidor varchar(200),
    dt_inicio_fase datetime,
    dt_fim_fase datetime,
	cd_ordem_fase int,
    Primary key pk_instituicao (nm_fase, dt_inicio_fase, dt_fim_fase),
    Constraint fk_atribuidor_fase foreign key (nm_email_atribuidor)
        references Atribuidor (nm_email_atribuidor)
);
Create table Aviso (
    ds_aviso varchar(264),
    nm_email_atribuidor varchar(200),
    nm_email_instituicao varchar(200),
    cd_tipo_assunto int,
    dt_aviso datetime,
    ic_aviso_lido bool,
    Primary key pk_aviso (dt_aviso, nm_email_instituicao, nm_email_atribuidor),
    Constraint fk_instituicao_aviso foreign key (nm_email_instituicao) references instituicao(nm_email_instituicao),
    Constraint fk_atribuidor_aviso foreign key (nm_email_atribuidor) references Atribuidor(nm_email_atribuidor),
	Constraint fk_tipo_assunto_aviso foreign key (cd_tipo_assunto) references Tipo_Assunto(cd_tipo_assunto)
);

Create table Aula (
    qt_carga_horaria int,
    sg_disciplina varchar(10),
    cd_tipo_ensino int,
    sg_turma varchar(10),
    nm_email_instituicao varchar(200),
    primary key pk_aula (sg_disciplina, sg_turma, nm_email_instituicao, cd_tipo_ensino),
	Constraint fk_Disciplina_Aula foreign key (sg_disciplina, cd_tipo_ensino)
		references Disciplina(sg_disciplina, cd_tipo_ensino),
    Constraint fk_Turma_Aula foreign key (nm_email_instituicao, sg_turma)
        references Turma(nm_email_instituicao, sg_turma)
);

Create table Preferencia (
    sg_disciplina varchar(10),
    cd_tipo_ensino int,
    sg_turma varchar(4),
    nm_email_instituicao varchar(200),
    cd_professor int,
    primary key pk_aula (sg_disciplina, sg_turma, nm_email_instituicao, cd_professor, cd_tipo_ensino),
    Constraint fk_Aula_Preferencia foreign key (sg_disciplina, sg_turma, nm_email_instituicao, cd_tipo_ensino)
        references Aula (sg_disciplina, sg_turma, nm_email_instituicao, cd_tipo_ensino),
    Constraint fk_Professor_Preferencia foreign key (cd_professor)
        references Professor (cd_professor)
);

Create table Atribuicao (
    cd_professor int,
	sg_disciplina varchar(10),
	sg_turma varchar(10),
	nm_email_instituicao varchar(200),
	cd_tipo_ensino int, 
    dt_atribuicao datetime,
	nm_email_atribuidor varchar(200),
	dt_inicio_fase datetime,
    dt_fim_fase datetime,
    nm_fase varchar(100),
    ic_ciencia_atribuidor bool,
    ic_ciencia_professor bool,
    ic_ciencia_diretor bool,
	ic_aula_substituicao bool,
	ic_atribuicao_validada bool,
    primary key pk_atribuicao (cd_professor, sg_disciplina, sg_turma, nm_email_instituicao, cd_tipo_ensino, dt_atribuicao),
    Constraint fk_professor_atribuicao foreign key (cd_professor)
        references Professor(cd_professor),
	Constraint fk_aula_atribuicao foreign key (sg_disciplina, sg_turma, nm_email_instituicao, cd_tipo_ensino)
        references Aula(sg_disciplina, sg_turma, nm_email_instituicao, cd_tipo_ensino),
    Constraint fk_atribuidor_atribuicao foreign key (nm_email_atribuidor)
        references Atribuidor(nm_email_atribuidor),
    Constraint fk_fase_atribuicao foreign key (nm_fase, dt_inicio_fase, dt_fim_fase)
        references Fase(nm_fase, dt_inicio_fase, dt_fim_fase)
);

Create table Chamada_Instituicao (
    nm_email_instituicao varchar(200),
    cd_professor int,
    dt_envio datetime,
    ic_terminou bool,
	ic_confirmacao_inicio bool,
    primary key pk_atribuidor(nm_email_instituicao,cd_professor,dt_envio),
    constraint fk_Instituicao_Chamada_Instituicao foreign key (nm_email_instituicao) references instituicao(nm_email_instituicao),
    constraint fk_Professor_Chamada_Instituicao foreign key (cd_professor) references professor(cd_professor)
);

Create table Recuperacao_Senha (
	cd_recuperacao int,
	nm_email varchar(200),
	constraint pk_recuperacao primary key (nm_email, cd_recuperacao)
);