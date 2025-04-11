Use AtribuicaoGuaruja;

DELIMITER $$
	
	/*------------------------------------------------------------ FUNÇÕES ------------------------------------------------------------*/
	
	-- Calcular Porcentagem
	drop function if exists calcularPorcentagem$$
	create function calcularPorcentagem(pTotal int, pNumero int)
	returns varchar(7)
    READS SQL DATA
	begin
		return Concat(Truncate((pNumero / pTotal * 100),2),'%');		
	end$$

	-- DiaPtBr
	drop function if exists diaPtBr$$
	CREATE function diaPtBr(pDia Datetime)
	Returns varchar(20)
    Deterministic
	BEGIN
		return (select 
		case 
			when dayname(Date(pDia)) = 'Monday' then 'Segunda'		
			when dayname(Date(pDia)) = 'Tuesday' then 'Terça'		
			when dayname(Date(pDia)) = 'Wednesday' then 'Quarta'
			when dayname(Date(pDia)) = 'Thursday' then 'Quinta'
			when dayname(Date(pDia)) = 'Friday' then 'Sexta'
			when dayname(Date(pDia)) = 'Saturday' then 'Sábado'
			when dayname(Date(pDia)) = 'Sunday' then 'Domingo'
		else 'Dia nao encontrado'
		end);
	end$$

	-- ConverterDataParaExt
	drop function if exists converterDataParaExt$$
	CREATE function converterDataParaExt(pDia Datetime)
	Returns varchar(30)
    deterministic
	BEGIN
		return (select 
		case 
			when Month(pDia) = 01 then Concat(Day(Pdia),' de Janeiro,',Year(Pdia))
			when Month(pDia) = 02 then Concat(Day(Pdia),' de Fevereiro,',Year(Pdia))
			when Month(pDia) = 03 then Concat(Day(Pdia),' de Março,',Year(Pdia))
			when Month(pDia) = 04 then Concat(Day(Pdia),' de Abril,',Year(Pdia))
			when Month(pDia) = 05 then Concat(Day(Pdia),' de Maio,',Year(Pdia))
			when Month(pDia) = 06 then Concat(Day(Pdia),' de Junho,',Year(Pdia))
			when Month(pDia) = 07 then Concat(Day(Pdia),' de Julho,',Year(Pdia))
			when Month(pDia) = 08 then Concat(Day(Pdia),' de Agosto,',Year(Pdia))
			when Month(pDia) = 09 then Concat(Day(Pdia),' de Setembro,',Year(Pdia))
			when Month(pDia) = 10 then Concat(Day(Pdia),' de Outubro,',Year(Pdia))
			when Month(pDia) = 11 then Concat(Day(Pdia),' de Novembro,',Year(Pdia))
			when Month(pDia) = 12 then Concat(Day(Pdia),' de Dezembro,',Year(Pdia))
		else 'Dia não encontrado'
		end);
	END$$
	
	-- ConverterDataParaExt
	drop function if exists converterDataDiaMes$$
	CREATE function converterDataDiaMes(pDia Datetime)
	Returns varchar(30)
    deterministic
	BEGIN
		return Concat(LPAD(Day(pDia),2,'0'),'/',LPAD(Month(pDia),2,'0'));
	end$$

	-- Definir Usuario
	drop function if exists definirUsuario$$
	create function definirUsuario(pEmail varchar(200), pSenha varchar(64))
	returns varchar(15)
    deterministic
    READS SQL DATA
	begin
		declare cargo varchar(15) default null; 

		-- Verifica o cargo do usuário
		if exists (select * from professor where nm_email_professor = pEmail and (pSenha is null or nm_senha_professor = md5(pSenha))) then
			set cargo = 'professor(a)';
			return cargo;
		end if;

		if exists (select * from instituicao where nm_email_instituicao = pEmail and (pSenha is null or nm_senha_instituicao = md5(pSenha))) then
			set cargo = 'instituição';
			return cargo;
		end if;

		if exists (select * from atribuidor where nm_email_atribuidor = pEmail and (pSenha is null or nm_senha_atribuidor = md5(pSenha))) then
			set cargo = 'atribuidor(a)';
			return cargo;
		end if;
		
		if exists (select * from supervisor where nm_email_supervisor = pEmail and (pSenha is null or nm_senha_supervisor = md5(pSenha))) then
			set cargo = 'supervisor(a)';
			return cargo;
		end if;

		return cargo;
	end$$
    
    drop function if exists PrimeiroeUltimoNome$$
	create function PrimeiroeUltimoNome(pNome varchar(200))
	returns varchar(200)
    READS SQL DATA
	begin
		return concat_ws(' ',substring_index(pNome,' ',1),substring_index(pNome,' ',-1));
	end$$

	/*------------------------------------------------------------ Usuários ------------------------------------------------------------*/

	-- buscar Dados do Usuario
	drop procedure if exists buscarDadosUsuario$$
	create procedure buscarDadosUsuario(pCargo varchar(15), pEmail varchar(200), pSenha varchar(64))
	begin
		
		-- select a partir do usuário
		if (pCargo = 'professor(a)') then
			select *, 'professor(a)' as cargo from professor where nm_email_professor = pEmail and nm_senha_professor = md5(pSenha);
		end if;

		if (pCargo = 'instituição') then
			select *, 'instituição' as cargo from instituicao where nm_email_instituicao = pEmail and nm_senha_instituicao = md5(pSenha);
		end if;

		if (pCargo = 'atribuidor(a)') then
			select *, 'atribuidor(a)' as cargo from atribuidor where nm_email_atribuidor = pEmail and nm_senha_atribuidor = md5(pSenha);
		end if;
		
		if (pCargo = 'supervisor(a)') then
			select *, 'supervisor(a)'  as cargo, p.nm_professor
			from supervisor s
			join professor p on (p.cd_professor = s.cd_professor)
			where nm_email_supervisor = pEmail 
			and nm_senha_supervisor = md5(pSenha);
		end if;

	end$$

	drop procedure if exists logarApp$$
	create procedure logarApp(pEmail varchar(200), pSenha varchar(64))
	begin		

		declare cargo varchar(15) default null;

		set cargo = definirUsuario(pEmail, pSenha);
		
		if (cargo is null or cargo <> 'professor(a)') then
			signal sqlstate '45000' set message_text = 'Login e/ou senha incorreta!';
		else 
			call buscarDadosUsuario(cargo, pEmail, pSenha);
		end if;

	end$$

	-- Login
	drop procedure if exists logar$$
	create procedure logar(pEmail varchar(200), pSenha varchar(64))
	begin		

		declare cargo varchar(15) default null;

		set cargo = definirUsuario(pEmail, pSenha);
		
		if (cargo is null) then
			signal sqlstate '45000' set message_text = 'Login e/ou senha incorreta!';
		else 
			call buscarDadosUsuario(cargo, pEmail, pSenha);
		end if;

	end$$	

	drop procedure if exists esqueceuSenha$$
	create procedure esqueceuSenha(pEmail varchar(200))
	begin		
		
		declare cargo varchar(15) default null;

		set cargo = definirUsuario(pEmail, null);

		if (cargo is null) then
			signal sqlstate '45000' set message_text = 'Não existe esse login no sistema!';
			select false;
		else
			select cargo;
		end if;
	end$$

	Drop Procedure if exists EditarTurma$$
	Create Procedure EditarTurma(pEmail varchar(200), pNome varchar(200), pTipoEnsino varchar(20), pSigla varchar(200))
	begin
		update Turma set
			nm_turma = pNome,
			cd_tipo_ensino = pTipoEnsino
		where
			sg_turma = pSigla and nm_email_instituicao = pEmail;
	end$$

	Drop Procedure if exists EditarProfessor$$
	Create Procedure EditarProfessor(pCodigo int,pEmail varchar(200),pNome varchar(200),pFilhos int,pDataNascimento date,
	pDataEntrada date,pPontuacao decimal(10,2),pTelefone varchar(15),pTipo int, pSigla varchar(10),pTipoEnsino int)
	begin	
		
		update professor set
		nm_email_professor = pEmail,
		nm_professor = pNome,
		qt_filhos = pFilhos,
		dt_nascimento_professor = pDataNascimento,
		dt_entrada_prefeitura = pDataEntrada,
		qt_pontuacao = pPontuacao,
		cd_numero_professor = pTelefone,
		cd_tipo_professor = pTipo,
		cd_tipo_ensino = pTipoEnsino,
		sg_disciplina = pSigla
		where
			cd_professor = pCodigo;
	end$$

	Drop Procedure if exists EditarInstituicao$$
	Create Procedure EditarInstituicao(pNome varchar(200), pEmail varchar(200), pTelefone varchar(15))
	begin
		update Instituicao set
			nm_instituicao = pNome,
			cd_numero_instituicao = pTelefone
		where
			nm_email_instituicao = pEmail;
	end$$

	Drop Procedure if exists EditarSupervisor$$
	Create Procedure EditarSupervisor(pEmail varchar(200), pDisciplina varchar(20), pTipoEnsino varchar(20), pCodigo varchar(200))
	begin
		update Supervisor set
			sg_disciplina = pDisciplina,
			cd_tipo_ensino = pTipoEnsino
		where
			nm_email_supervisor = pEmail and cd_professor = pCodigo;
	end$$	

	Drop Procedure if exists AdicionarInstituicao$$
	Create Procedure AdicionarInstituicao(pNome varchar(200), pEmail varchar(200), pTelefone varchar(15))
	begin
		insert into instituicao values (pNome,pTelefone,pEmail,'SenhaPadrao123',null);	
	end$$

	Drop procedure if exists gravarRecuperacao$$
	Create procedure gravarRecuperacao(pCodigo int, pLogin varchar(200))
	begin
		insert into recuperacao_senha values (pCodigo, pLogin);
	end$$

	Drop procedure if exists consultarRecuperacao$$
	Create procedure consultarRecuperacao(pLogin varchar(200))
	begin
		Select cd_recuperacao from recuperacao_senha where nm_email = pLogin;
	end$$

	Drop procedure if exists excluirRecuperacao$$
	Create procedure excluirRecuperacao(pLogin varchar(200))
	begin
		Delete from recuperacao_senha where nm_email = pLogin;
	end$$

	drop procedure if exists redefinirSenha$$
	create procedure redefinirSenha(pEmail varchar(200), pSenhaAntiga varchar(64), pSenhaNova varchar(64))
	begin
		
		declare cargo varchar(15) default null;

		set cargo = definirUsuario(pEmail, pSenhaAntiga);
		
		if (cargo is null) then
			signal sqlstate '45000' set message_text = 'Senha fornecida não está correta!';
		else 
			if (cargo = 'professor(a)') then
				update Professor set nm_senha_professor = md5(pSenhaNova) where nm_email_professor = pEmail;
			end if;

			if (cargo = 'instituição') then
				update instituicao set nm_senha_instituicao = md5(pSenhaNova) where nm_email_instituicao = pEmail;
			end if;

			if (cargo = 'atribuidor(a)') then
				update atribuidor set nm_senha_atribuidor = md5(pSenhaNova) where nm_email_atribuidor = pEmail;
			end if;
			
			if (cargo = 'supervisor(a)') then
				update supervisor set nm_senha_supervisor = md5(pSenhaNova) where nm_email_supervisor = pEmail;
			end if;
		end if;
	end$$

	drop procedure if exists buscarImagemPerfil$$
	create procedure buscarImagemPerfil(pCargo varchar(100), pEmail varchar(200))
	begin

		if (pCargo is null) then
			signal sqlstate '45000' set message_text = 'Cargo fornecido não está correto!';
		else 
			if (pCargo = 'professor') then
				select img_perfil from professor where nm_email_professor = pEmail;
			end if;

			if (pCargo = 'instituição') then
				select img_perfil from instituicao where nm_email_instituicao = pEmail;
			end if;

			if (pCargo = 'atribuidor') then
				select img_perfil from atribuidor where nm_email_atribuidor = pEmail;
			end if;
			
			if (pCargo = 'supervisor') then
				select img_perfil from supervisor where nm_email_supervisor = pEmail;
			end if;
		end if;

	end$$

	drop procedure if exists alterarFoto$$
	create procedure alterarFoto(pCargo varchar(100), pLogin varchar(200), pFoto longblob)
	begin

		if (pCargo is null) then
			signal sqlstate '45000' set message_text = 'Cargo fornecido não está correto!';
		else 
			if (pCargo = 'professor') then
				Update professor set img_perfil = pFoto where nm_email_professor = pLogin;
			end if;

			if (pCargo = 'instituição') then
				Update instituicao set img_perfil = pFoto where nm_email_instituicao = pLogin;
			end if;

			if (pCargo = 'atribuidor') then
				Update atribuidor set img_perfil = pFoto where nm_email_atribuidor = pLogin;
			end if;
			
			if (pCargo = 'supervisor') then
				Update supervisor set img_perfil = pFoto where nm_email_supervisor = pLogin;
			end if;
		end if;

	end$$

	/*Drop procedure if exists alterarTelefoneAtribuidor$$
	Create procedure alterarTelefoneAtribuidor(pEmail varchar(200), pTelefone varchar(15))
	begin
		declare nome varchar(200) default null;
		select nm_email_atribuidor into nome from atribuidor where nm_email_atribuidor = pEmail;

		if (nome is null) then
			signal sqlstate '45000' set message_text = 'Não foi possível alterar o telefone do atribuidor.';
		else
			Update atribuidor set cd_numero_atribuidor = pTelefone where nm_email_atribuidor = pEmail;
		end if;
	end$$*/

	drop procedure if exists alterarTelefone$$
	create procedure alterarTelefone(pCargo varchar(100), pLogin varchar(200), pTelefone varchar(15))
	begin

		if (pCargo is null) then
			signal sqlstate '45000' set message_text = 'Não foi possível alterar o telefone!';
		else 
			if (pCargo = 'professor') then
				Update professor set cd_numero_professor = pTelefone where nm_email_professor = pLogin;
			end if;

			if (pCargo = 'instituição') then
				Update instituicao set cd_numero_instituicao = pTelefone where nm_email_instituicao = pLogin;
			end if;

			if (pCargo = 'atribuidor') then
				Update atribuidor set cd_numero_atribuidor = pTelefone where nm_email_atribuidor = pLogin;
			end if;
		end if;

	end$$

	/*------------------------------------------------------------ Atribuidor ------------------------------------------------------------*/
/*
	-- Buscar Avisos do Atribuidor
	drop procedure if exists buscarAvisosLidosAtribuidor$$
	create procedure buscarAvisosLidosAtribuidor(pEmail varchar(200)) 
	begin	
		select e.nm_instituicao as Nome,
		(select ConverterDataParaExt(dt_aviso)) as DataConvertida,
		dt_aviso as DataHorario,
		(select DiaPtBr(a.dt_aviso)) as DiaDasemana,
		a.nm_assunto_aviso as assunto,
		ds_aviso as Descricao
		from Aviso a 
		join instituicao e on (a.nm_email_instituicao = e.nm_email_instituicao)
		where nm_email_atribuidor = pEmail and a.ic_aviso_lido = true order by dt_aviso;
	end$$
call buscarAvisosLidosAtribuidor ('erica.campos@gmail.com')$$

	drop procedure if exists buscarAvisosNaoLidosAtribuidor$$
	create procedure buscarAvisosNaoLidosAtribuidor(pEmail varchar(200)) 
	begin	
		select e.nm_instituicao as Nome,
		(select ConverterDataParaExt(dt_aviso)) as DataConvertida,
		dt_aviso as DataHorario,
		(select DiaPtBr(a.dt_aviso)) as DiaDasemana,
		a.nm_assunto_aviso as assunto,
		ds_aviso as Descricao
		from Aviso a 
		join instituicao e on (a.nm_email_instituicao = e.nm_email_instituicao)
		where nm_email_atribuidor = pEmail and a.ic_aviso_lido = false order by dt_aviso;
	end$$

	drop procedure if exists buscarAvisosAtribuidor$$
	create procedure buscarAvisosAtribuidor(pEmail varchar(200))
	begin
		/*
		call buscarAvisosNaoLidosAtribuidor(pEmail);
		call buscarAvisosLidosAtribuidor(pEmail);
		
		select e.nm_email_instituicao as Email,
		e.nm_instituicao as Nome,
		(select ConverterDataParaExt(dt_aviso)) as DataConvertida,
		dt_aviso as DataHorario,
		(select DiaPtBr(a.dt_aviso)) as DiaDaSemana,
		a.nm_assunto_aviso as assunto,
		ds_aviso as Descricao,
		ic_aviso_lido as Lido
		from Aviso a 
		join instituicao e on (a.nm_email_instituicao = e.nm_email_instituicao)
		where nm_email_atribuidor = pEmail order by dt_aviso;
	end$$*/

	-- buscar Solicitacao do Atribuidor
	drop procedure if exists buscarSolicitacaoAtribuidor$$
	create procedure buscarSolicitacaoAtribuidor(pEmail varchar(200))
	begin
		select substring_index((select nm_professor from professor where cd_professor = s.cd_professor),' ',2) as Nome,
		(select ConverterDataParaExt(s.dt_solicitacao)) as DataConvertida,
		s.dt_solicitacao as DataHorario,
		(select DiaPtbr(s.dt_solicitacao)) as DiaDasemana,
		(select nm_tipo_solicitacao from tipo_Solicitacao where cd_tipo_solicitacao = s.cd_tipo_solicitacao) as Assunto
		from Solicitacao s where nm_email_atribuidor = pEmail order by assunto;	
	end$$
	
	-- buscar Solicitacao p/ Atribuir
	Drop procedure if exists buscarSolicitacaoCargaComplementar$$
	Create procedure buscarSolicitacaoCargaComplementar(pEmail varchar(200))
	begin
		set @contador = 0;
		
		select
			concat((@contador := @contador + 1), '°') as Ordem,
			cd_professor as Codigo,
			substring_index(nm_professor, ' ', 2) as Nome,
			nm_tipo_professor as Situacao,
			nm_instituicao as Instituicao,
			(select nm_tipo_solicitacao from tipo_Solicitacao where nm_tipo_solicitacao = 'Carga Complementar') as assunto
		from (
			select nm_tipo_professor, p.nm_professor, s.cd_professor, nm_instituicao 
			from professor p 
			join solicitacao s on (s.cd_professor = p.cd_professor)
			join tipo_professor tp on (p.cd_tipo_professor = tp.cd_tipo_professor)
			join instituicao_Professor ip on (p.cd_professor = ip.cd_professor)
			join instituicao i on (i.nm_email_instituicao = ip.nm_email_instituicao)
			where s.nm_email_atribuidor = pEmail
			order by qt_pontuacao desc
		) as subquery;
	end$$

	-- Alterar Dados do Atribuidor
	/*Drop procedure if exists alterarTelefoneAtribuidor$$
	Create procedure alterarTelefoneAtribuidor(pEmail varchar(200), pTelefone varchar(15))
	begin
		declare nome varchar(200) default null;
		select nm_email_atribuidor into nome from atribuidor where nm_email_atribuidor = pEmail;

		if (nome is null) then
			signal sqlstate '45000' set message_text = 'Não foi possível alterar o telefone do atribuidor.';
		else
			Update atribuidor set cd_numero_atribuidor = pTelefone where nm_email_atribuidor = pEmail;
		end if;
	end$$*/
	
	Drop procedure if exists buscarDadosAtribuidor$$
	Create procedure buscarDadosAtribuidor(pEmail varchar(200))
	begin
		select nm_atribuidor, cd_numero_atribuidor, nm_email_atribuidor, dt_nascimento_atribuidor from atribuidor where nm_email_atribuidor = pEmail;
	end$$

	/*------------------------------------------------------------ Instituição ------------------------------------------------------------*/

	drop procedure if exists buscarEmailInstituicao$$
	create procedure buscarEmailInstituicao(pNome varchar(200)) 
	begin	
		select nm_email_instituicao from instituicao where nm_instituicao = pNome;
	end$$

	drop procedure if exists buscarSiglaDisciplina$$
	create procedure buscarSiglaDisciplina(pDisciplina varchar(200)) 
	begin	
		select sg_disciplina from disciplina where nm_disciplina = pDisciplina;
	end$$

	-- buscar Avisos do Diretor
	drop procedure if exists buscarAvisosLidosInstituicao$$
	create procedure buscarAvisosLidosInstituicao(pEmail varchar(200)) 
	begin	
		select a.ds_aviso,a.dt_aviso, a.ic_aviso_lido, ta.nm_tipo_assunto, a.cd_tipo_assunto
		from aviso a 
		join atribuidor atr on (a.nm_email_atribuidor = atr.nm_email_atribuidor) 
		join tipo_assunto ta on (a.cd_tipo_assunto = ta.cd_tipo_assunto)
		where a.nm_email_instituicao = pEmail and a.ic_aviso_lido = true
		order by a.dt_aviso;
	end$$


	drop procedure if exists buscarAvisosNaoLidosInstituicao$$
	create procedure buscarAvisosNaoLidosInstituicao(pEmail varchar(200)) 
	begin	
		select a.ds_aviso,a.dt_aviso, a.ic_aviso_lido, ta.nm_tipo_assunto, a.cd_tipo_assunto
		from aviso a 
		join atribuidor atr on (a.nm_email_atribuidor = atr.nm_email_atribuidor) 
		join tipo_assunto ta on (a.cd_tipo_assunto = ta.cd_tipo_assunto)
		where a.nm_email_instituicao = pEmail and a.ic_aviso_lido = false
		order by a.dt_aviso;
	end$$

	drop procedure if exists buscarAvisosInstituicao$$
	create procedure buscarAvisosInstituicao(pEmail varchar(200), pFiltroAssunto varchar(200), pFiltroClassificacao varchar(200))
	begin

		declare filtroClassificacaoWhere bool default null;

		if (pFiltroClassificacao = 'Mais recentes' ) then
			select a.ds_aviso,a.dt_aviso, a.ic_aviso_lido, ta.nm_tipo_assunto, a.cd_tipo_assunto
			from aviso a 
			join atribuidor atr on (a.nm_email_atribuidor = atr.nm_email_atribuidor) 
			join tipo_assunto ta on (a.cd_tipo_assunto = ta.cd_tipo_assunto)
			where a.nm_email_instituicao = pEmail and (pfiltroAssunto is null or ta.nm_tipo_assunto = pFiltroAssunto)
			and (filtroClassificacaoWhere is null or a.ic_aviso_lido = filtroClassificacaoWhere) 
			order by a.dt_aviso ASC;
		end if;

		if (pFiltroClassificacao = 'Mais antigos' ) then
			select a.ds_aviso,a.dt_aviso, a.ic_aviso_lido, ta.nm_tipo_assunto, a.cd_tipo_assunto
			from aviso a 
			join atribuidor atr on (a.nm_email_atribuidor = atr.nm_email_atribuidor) 
			join tipo_assunto ta on (a.cd_tipo_assunto = ta.cd_tipo_assunto)
			where a.nm_email_instituicao = pEmail and (pfiltroAssunto is null or ta.nm_tipo_assunto = pFiltroAssunto)
			and (filtroClassificacaoWhere is null or a.ic_aviso_lido = filtroClassificacaoWhere) 
			order by a.dt_aviso DESC;
		end if;

		if (pFiltroClassificacao = 'Visualizados') then
			set filtroClassificacaoWhere = true;
		end if;
		if (pFiltroClassificacao = 'Não visualizados') then
			set filtroClassificacaoWhere = false;
		end if;
			select a.ds_aviso,a.dt_aviso, a.ic_aviso_lido, ta.nm_tipo_assunto, a.cd_tipo_assunto
			from aviso a 
			join atribuidor atr on (a.nm_email_atribuidor = atr.nm_email_atribuidor) 
			join tipo_assunto ta on (a.cd_tipo_assunto = ta.cd_tipo_assunto)
			where a.nm_email_instituicao = pEmail and (pfiltroAssunto is null or ta.nm_tipo_assunto = pFiltroAssunto)
			and (filtroClassificacaoWhere is null or a.ic_aviso_lido = filtroClassificacaoWhere) 
			order by a.dt_aviso asc ;
	end$$

	drop procedure if exists buscarAssuntosAvisos$$
	create procedure buscarAssuntosAvisos()
	begin
		Select * from Tipo_Assunto; 
	end$$

	Drop procedure if exists registrarAvisoInstituicao$$
	create procedure registrarAvisoInstituicao(pEmailAtribuidor varchar(200),pEmailInstituicao varchar(200), pAssunto varchar(200), pMensagem varchar(200))
	begin
		declare cdAssunto varchar(200) default null;
		Select cd_tipo_assunto into cdAssunto from Tipo_Assunto where nm_tipo_assunto = pAssunto;
		Insert into aviso values (pMensagem ,pEmailAtribuidor,pEmailInstituicao,cdAssunto,now(),false);		
	end$$
	drop procedure if exists buscarEmailDestinatario$$
	create procedure buscarEmailDestinatario()
	begin
		Select nm_email_atribuidor from aviso group by nm_email_atribuidor;
	end$$

	Drop Procedure if exists ChamarProfessorParaAtribuirInstituicao$$
    Create Procedure ChamarProfessorParaAtribuirInstituicao(pEmail varchar(200), pCodigo int)
    begin
        insert into Chamada_Instituicao values(pEmail,pCodigo,now(),false, false);
    end$$

	Drop Procedure if exists buscarInstituicaoChamada$$
    Create Procedure buscarInstituicaoChamada(pCodigo int)
    begin
        select nm_email_instituicao from chamada_instituicao where cd_professor = pCodigo and year(dt_envio) = year(now()) and ic_terminou = false;
    end$$

	call buscarInstituicaoChamada(12940)$$

	-- Verificar pra ver se já pode atribuir
	Drop Procedure if exists verificarSituacaoAtribuicaoProfessor$$
    Create Procedure verificarSituacaoAtribuicaoProfessor(pCodigo int)
    begin

		declare QtAtribuidasProfessor int default 0;
		declare QtPodeAtribuirProfessor int default 0;
		
		Set QtAtribuidasProfessor = (Select Count(*) from atribuicao where cd_professor = pCodigo and year(dt_atribuicao) = year(now()));
		Set QtPodeAtribuirProfessor = (Select qt_HTA from Jornada_Escolhida where cd_professor = pCodigo and aa_jornada = year(now())) / (Select d.cd_multiplicador from professor p join disciplina d on(d.sg_disciplina = p.sg_disciplina) where p.cd_professor = pCodigo);

		if ((select timestampdiff(second, (select ci.dt_envio from chamada_instituicao ci where ci.cd_professor = pCodigo and ci.ic_terminou = false), now())) >= 300 ) then
			select 'Acabou o tempo';
		else	
			if exists (Select * from atribuicao where cd_professor = pCodigo and year(dt_atribuicao) = year(now()) and ic_atribuicao_validada = true and QtAtribuidasProfessor = QtPodeAtribuirProfessor) then
				select 'Já atribuído';
			else 
				if exists (Select * from Chamada_Instituicao where cd_professor = pCodigo and ic_terminou = false and ic_confirmacao_inicio = true) then
					select 'Sua vez';
				else
					select 'Aguardando';
				end if;
			end if;
		end if;
    end$$

	call verificarSituacaoAtribuicaoProfessor(6119)$$

	-- Verificar pra ver se já pode validar a atribuição
    Drop Procedure if exists verificarSituacaoAtribuicaoProfessorinstituicao$$
    Create Procedure verificarSituacaoAtribuicaoProfessorinstituicao(pCodigo int, pEmail varchar(200))
    begin
        if exists (Select * from Chamada_Instituicao where cd_professor = pCodigo and ic_terminou = true and ic_confirmacao_inicio = true and nm_email_instituicao = pEmail) then
            select true;
        else
            select false;
        end if;
    end$$

	-- Verificar se a pode atribuir na instituicao qnd ele tem duas instituicoes
    Drop Procedure if exists verificarSePodeAtribuirPEBIII$$
    Create Procedure verificarSePodeAtribuirPEBIII(pCodigo int, pEmail varchar(200))
    begin
        if exists (Select * from Chamada_Instituicao where cd_professor = pCodigo and ic_terminou = true and ic_confirmacao_inicio = true and nm_email_instituicao <> pEmail) then
            select true;
        else
            select false;
        end if;
    end$$

	call verificarSePodeAtribuirPEBIII(6119, 'ary.souza@gmail.com')$$

	-- Verificar pra ver se já foi chamado
	Drop Procedure if exists verificarSituacaoChamadaProfessor$$
    Create Procedure verificarSituacaoChamadaProfessor(pCodigo int)
    begin

		declare QtAtribuidasProfessor int default 0;
		declare QtPodeAtribuirProfessor int default 0;
		
		Set QtAtribuidasProfessor = (Select Count(*) from atribuicao where cd_professor = pCodigo and year(dt_atribuicao) = year(now()));
		Set QtPodeAtribuirProfessor = (Select qt_HTA from Jornada_Escolhida where cd_professor = pCodigo and aa_jornada = year(now())) / (Select d.cd_multiplicador from professor p join disciplina d on(d.sg_disciplina = p.sg_disciplina) where p.cd_professor = pCodigo);

        if exists (Select * from Chamada_Instituicao where cd_professor = pCodigo and ic_terminou = false and ic_confirmacao_inicio = false) then
			if ((select timestampdiff(second, (select ci.dt_envio from chamada_instituicao ci where ci.cd_professor = pCodigo and ci.ic_terminou = false), now())) >= 300 ) then
				select "";
			else  
				if exists (Select * from atribuicao where cd_professor = pCodigo and year(dt_atribuicao) = year(now()) and ic_atribuicao_validada = true and QtAtribuidasProfessor = QtPodeAtribuirProfessor) then
					select "";
				else 
					Select nm_email_instituicao from Chamada_Instituicao where cd_professor = pCodigo and ic_terminou = false and ic_confirmacao_inicio = false;
				end if;
			end if;
		else 
			select "";
        end if;
    end$$

	call verificarSituacaoChamadaProfessor(23003)$$

	Drop Procedure if exists buscarProfessoresAtribuicaoP1$$
    Create Procedure buscarProfessoresAtribuicaoP1()
    begin
       set @contador = 0;
		
		select
			concat((@contador := @contador + 1), '°') as Ordem,
			cd_professor as Codigo,
			nm_professor as Nome,
			nm_tipo_professor as Situacao,
			nm_instituicao as Instituicao,
			Atribuido
		from (
			select p.qt_pontuacao, p.cd_professor, p.nm_professor, tp.nm_tipo_professor, i.nm_instituicao,
			case 
				when exists 
					(select * from atribuicao a 
					 where a.cd_professor = p.cd_professor 
					 and year(dt_atribuicao) = year(now()) 
					 and ic_atribuicao_validada = true) 
					 then 'Atribuído'  
				else 
					case 
						when exists 
							(select * from atribuicao a 
							 where a.cd_professor = p.cd_professor 
							 and year(dt_atribuicao) = year(now()) 
							 and ic_atribuicao_validada = false) 
							 then 'Em andamento'  
						else 'Não atribuído'                                  
				    end
			end as Atribuido
			from professor p 
			join tipo_professor tp on (p.cd_tipo_professor = tp.cd_tipo_professor)
			join instituicao_Professor ip on (p.cd_professor = ip.cd_professor)
			join instituicao i on (i.nm_email_instituicao = ip.nm_email_instituicao)
			where p.cd_tipo_ensino = 1 and p.cd_professor
			order by p.qt_pontuacao desc, p.dt_entrada_prefeitura desc, p.qt_filhos desc
		) as subquery;
    end$$

	Drop Procedure if exists buscarProfessoresAtribuicaoInstituicao$$
	Create Procedure buscarProfessoresAtribuicaoInstituicao(pEmailInstituicao varchar(200), pDisciplina varchar(200), pTipoEnsino int)
	begin
		declare qtInstituicao int default 0;

		set @contador = 0;
		
		select 
			concat((@contador := @contador + 1), '°') as Ordem,
			cd_professor as Codigo,
			nm_professor as Nome,
			nm_tipo_professor as Situacao,
			nm_instituicao as Instituicao,
			qt_HTA as CargaHoraria,
			Atribuido,
			nm_email_professor as Email
		from (
			select  p.qt_pontuacao, p.cd_professor, p.nm_professor, tp.nm_tipo_professor, i.nm_instituicao,je.qt_HTA, p.nm_email_professor,
			case	
				when exists 
						(Select * from Chamada_Instituicao where cd_professor = p.cd_professor 
							and ic_terminou = false and nm_email_instituicao <> pEmailInstituicao and year(dt_envio) = year(now())) 
						 then 'Atribuindo em outra instituição'
				else 
					case
						when exists
							(select * from atribuicao a where a.cd_professor = p.cd_professor 
								and year(dt_atribuicao) = year(now()) and ic_atribuicao_validada = false and nm_email_instituicao <> pEmailInstituicao) 
							 then 'Atribuindo em outra instituição'
						else 
						case 
							when exists 
								(select * from atribuicao a 
									 where a.cd_professor = p.cd_professor 
									 and year(dt_atribuicao) = year(now()) 
									 and ic_atribuicao_validada = true
									 and nm_email_instituicao = pEmailInstituicao) 
									 then 'Atribuído'
							else
								case 
									when exists 
										(Select * from Chamada_Instituicao where cd_professor = p.cd_professor 
											and ic_terminou = false and nm_email_instituicao = pEmailInstituicao and year(dt_envio) = year(now())) 
										 then 
											case
												when (timestampdiff(second, 
														(select ci.dt_envio from chamada_instituicao ci where ci.cd_professor = p.cd_professor and ci.ic_terminou = false), 
														now()) >= 300) then
													case
														when (select count(*) from atribuicao where cd_professor = p.cd_professor and year(dt_atribuicao) = year(now())) > 0 then
															'Atribuído'
														else
															'Acabou o tempo'
													end
												else 
													'Em andamento'
											end
									else 
										case
											when exists
												(select * from atribuicao a where a.cd_professor = p.cd_professor 
													and year(dt_atribuicao) = year(now()) and ic_atribuicao_validada = false and nm_email_instituicao = pEmailInstituicao) 
												 then 'Em andamento'
											else 'Não atribuído'
										end								  
								end		                                  
						end		
					end
			end as Atribuido
			from professor p
			join tipo_professor tp on (p.cd_tipo_professor = tp.cd_tipo_professor)
			join instituicao i on (i.nm_email_instituicao = pEmailInstituicao)
			join instituicao_professor ip on (ip.nm_email_instituicao = pEmailInstituicao)
			join jornada_escolhida je on (je.cd_professor = p.cd_professor and aa_jornada = year(now()))
			where p.cd_tipo_ensino = pTipoEnsino and p.cd_professor = ip.cd_professor and p.sg_disciplina = pDisciplina 
			order by p.qt_pontuacao desc, p.dt_entrada_prefeitura desc, p.qt_filhos desc
		) as subquery;
	end$$

	call buscarProfessoresAtribuicaoInstituicao('maria.araujo@gmail.com','HIST',2)$$

	Drop Procedure if exists buscarProfessoresAtribuicaoDashboard$$
    Create Procedure buscarProfessoresAtribuicaoDashboard(pEmailInstituicao varchar(200), pDisciplina varchar(200), pTipoEnsino int)
    begin
		set @contador = 0;

		select
			concat((@contador := @contador + 1), '°') as Ordem,
			cd_professor as Codigo,
			nm_professor as Nome,
			nm_email_professor as Email,
			nm_tipo_professor as Situacao,
			dataEnvio,
			Atribuido
		from (
			select p.qt_pontuacao, p.cd_professor, p.nm_professor, p.nm_email_professor, tp.nm_tipo_professor,
			(case 
				when exists (select 1 from Chamada_Instituicao where cd_professor = p.cd_professor and ic_terminou = false) 
				then (select dt_envio from Chamada_Instituicao where cd_professor = p.cd_professor and ic_terminou = false limit 1)
				else '0001-01-01 00:00:00'
			end) as dataEnvio,

			case 
				when exists 
					(select * from atribuicao a where a.cd_professor = p.cd_professor and year(dt_atribuicao) = year(now()) and ic_atribuicao_validada = true) 
					then 'Atribuído'  
				else 
					case 
						when exists 
							(select * from Chamada_Instituicao where cd_professor = p.cd_professor and ic_terminou = false) 
							 then 'Em andamento'
						else
							case 
								when exists 
									(select * from atribuicao a where a.cd_professor = p.cd_professor and year(dt_atribuicao) = year(now()) and ic_atribuicao_validada = false) 
									 then 'Em andamento'
								else 'Não atribuído'                                  
							end                                  
					end
			end as Atribuido
			from professor p
			join tipo_professor tp on (p.cd_tipo_professor = tp.cd_tipo_professor)
			join instituicao i on (i.nm_email_instituicao = pEmailInstituicao)
			join instituicao_professor ip on (ip.nm_email_instituicao = pEmailInstituicao)
			where p.cd_tipo_ensino = pTipoEnsino and p.cd_professor = ip.cd_professor and p.sg_disciplina = pDisciplina 
			and not exists(select 1 from atribuicao a where a.cd_professor = p.cd_professor and year(a.dt_atribuicao) = year(now()) and a.ic_atribuicao_validada = true)
			order by p.qt_pontuacao desc, p.dt_entrada_prefeitura desc, p.qt_filhos desc
		) as subquery limit 3;

	end$$

	-- Filtro dos Professores da Instituição específica
	Drop Procedure if exists buscarProfessoresInstituicao$$
	Create Procedure buscarProfessoresInstituicao(pFiltroTipo varchar(100), pFiltroDisciplina Varchar(200), pFiltroInstituicao varchar(200))
	begin 
		declare siglaDisciplina varchar(100) default null;
		declare tipoEnsino varchar(100) default null;
		declare nomeInstituicao varchar(200) default null;
		
		if (pFiltroTipo is not null) then
			select cd_tipo_ensino into tipoEnsino from tipo_ensino where nm_tipo_ensino = pFiltroTipo;
		end if;

		if (pFiltroDisciplina is not null) then
			select distinct(sg_disciplina) into siglaDisciplina from disciplina where nm_disciplina = pFiltroDisciplina;
		end if;
		
		select nm_email_instituicao into nomeInstituicao from instituicao where nm_email_instituicao = pFiltroInstituicao;
		
		if (nomeInstituicao is null) then
			signal sqlstate '45000' set message_text = 'A instituição desejada não existe!';
		else 
			set @contador = 0;
			
			select Concat((@contador := @contador + 1),'°') as Ordem,
			cd_professor,
			nm_professor,
			nm_tipo_ensino,
			nm_disciplina, 
			Situacao
			from (
				select distinct(p.cd_professor),
				p.nm_professor,
				tp.nm_tipo_ensino,
				d.nm_disciplina,
                p.qt_pontuacao,
				case
					when exists(select * from atribuicao atr where atr.cd_professor = p.cd_professor and year(dt_atribuicao) = year(now())) then 'Atribuído'
					else 'Não Atribuído'
				end as Situacao
				from professor p 
				join disciplina d on (p.sg_disciplina = d.sg_disciplina)
				join tipo_ensino tp on (tp.cd_tipo_ensino = p.cd_tipo_ensino)
				join instituicao_professor ip on (p.cd_professor = ip.cd_professor)
				where (ip.nm_email_instituicao = pFiltroInstituicao)
				and (siglaDisciplina is null or p.sg_disciplina = siglaDisciplina)
				and (tipoEnsino is null or p.cd_tipo_ensino = tipoEnsino) 
				order by p.qt_pontuacao desc
			) as subquery;
			
		end if;
	end$$
	
	/*------------------------------------------------------------ Professor ------------------------------------------------------------*/

	/*-- Alterar Dados Professor
	Drop Procedure if exists alterarTelefoneProfessor$$
	Create Procedure alterarTelefoneProfessor(pEmailProfessor varchar(200), pTelefone varchar(15))
	BEGIN
		declare nome varchar(200) default null;
		select nm_email_professor into nome from professor where nm_email_professor = pEmail;

		if (nome is null) then
			signal sqlstate '45000' set message_text = 'Não foi possível alterar o telefone do professor.';
		else
			Update professor set cd_numero_professor = pTelefone where nm_email_professor = pEmail;
		end if;
	end$$*/

	-- buscar Dados do Professor
	Drop Procedure if exists buscarDadosProfessor$$
	Create Procedure buscarDadosProfessor(pCodigo int)
	begin
		declare professor varchar(200) default null;
		select nm_professor into professor from professor where cd_professor = pCodigo;

		if (professor is null) then
			signal sqlstate '45000' set message_text = 'Professor não encontrado!';
		else
			select p.nm_professor, p.nm_email_professor, p.cd_professor, p.qt_pontuacao, 
			te.nm_tipo_ensino, d.nm_disciplina, p.cd_tipo_ensino, p.sg_disciplina, 	
			timestampdiff(year,dt_entrada_prefeitura,now()), i.nm_instituicao, p.cd_numero_professor, tp.nm_tipo_professor, te.cd_tipo_ensino
			from professor p 
			join tipo_professor tp on (p.cd_tipo_professor = tp.cd_tipo_professor)
			join tipo_ensino te on (p.cd_tipo_ensino = te.cd_tipo_ensino)
			join disciplina d on (p.sg_disciplina = d.sg_disciplina)
			join instituicao_professor ip on (p.cd_professor = ip.cd_professor and ip.ic_instituicao_sede = true)
			join instituicao i on (i.nm_email_instituicao = ip.nm_email_instituicao)
			where p.cd_professor = pCodigo;
		end if;
	end$$

	call buscarDadosProfessor(23592)$$

	-- buscar lista de professores em ordem (não funciona com PEE por algum motivo, n eh por conta da instituicao)
	drop procedure if exists buscarProfessoresPorClassificacao$$
	create procedure buscarProfessoresPorClassificacao(pFiltroTipo varchar(100), pFiltroDisciplina Varchar(200), pFiltroInstituicao varchar(200))
	begin
		declare siglaDisciplina varchar(100) default null;
		declare tipoEnsino varchar(100) default null;
		declare nomeInstituicao varchar(100) default null;
		
		if (pFiltroTipo is not null) then
			select cd_tipo_ensino into tipoEnsino from tipo_ensino where nm_tipo_ensino = pFiltroTipo;
		end if;

		if (pFiltroDisciplina is not null) then
			select sg_disciplina into siglaDisciplina from disciplina where nm_disciplina = pFiltroDisciplina and cd_tipo_ensino = tipoEnsino;
		end if;

		if (pFiltroInstituicao is not null) then
			select nm_email_instituicao into nomeInstituicao from instituicao where nm_email_instituicao = pFiltroInstituicao;
		end if;

		set @contador = 0;
		
		select
			concat((@contador := @contador + 1), '°') as Ordem,
			cd_professor as Codigo,
			nm_professor as Nome,
			nm_tipo_professor as Situacao,
			nm_instituicao as Instituicao
		from (
			select p.qt_pontuacao, p.cd_professor, p.nm_professor, tp.nm_tipo_professor, i.nm_instituicao
			from professor p 
			join tipo_professor tp on (p.cd_tipo_professor = tp.cd_tipo_professor)
			join instituicao_Professor ip on (p.cd_professor = ip.cd_professor)
			join instituicao i on (i.nm_email_instituicao = ip.nm_email_instituicao)
			where (tipoEnsino is null or p.cd_tipo_ensino = tipoEnsino) 
			and (pFiltroDisciplina is null or p.sg_disciplina = siglaDisciplina)
			and (pFiltroInstituicao is null or ip.nm_email_instituicao = nomeInstituicao)
			and ip.ic_instituicao_sede = true
			order by p.qt_pontuacao desc, p.dt_entrada_prefeitura desc, p.qt_filhos desc
		) as subquery;

	end$$

	drop procedure if exists buscarClassificacaoProfessor$$
	create procedure buscarClassificacaoProfessor(pFiltroTipo varchar(100), pFiltroDisciplina Varchar(200), pFiltroInstituicao varchar(200), pCodigo int)
	begin
		declare siglaDisciplina varchar(100) default null;
		declare tipoEnsino varchar(100) default null;
		declare nomeInstituicao varchar(100) default null;
		
		if (pFiltroTipo is not null) then
			select cd_tipo_ensino into tipoEnsino from tipo_ensino where nm_tipo_ensino = pFiltroTipo;
		end if;

		if (pFiltroDisciplina is not null) then
			select sg_disciplina into siglaDisciplina from disciplina where nm_disciplina = pFiltroDisciplina and cd_tipo_ensino = tipoEnsino;
		end if;

		if (pFiltroInstituicao is not null) then
			select nm_email_instituicao into nomeInstituicao from instituicao where nm_email_instituicao = pFiltroInstituicao;
		end if;

		set @contador = 0;
		
		select Ordem from (
			select
				concat(@contador := @contador + 1) as Ordem,
				cd_professor as Codigo
			from (
				select p.qt_pontuacao, p.cd_professor, p.nm_professor, tp.nm_tipo_professor, i.nm_instituicao
				from professor p 
				join tipo_professor tp on (p.cd_tipo_professor = tp.cd_tipo_professor)
				join instituicao_Professor ip on (p.cd_professor = ip.cd_professor)
				join instituicao i on (i.nm_email_instituicao = ip.nm_email_instituicao)
				where (tipoEnsino is null or p.cd_tipo_ensino = tipoEnsino) 
				and (pFiltroDisciplina is null or p.sg_disciplina = siglaDisciplina)
				and (pFiltroInstituicao is null or ip.nm_email_instituicao = nomeInstituicao)
				and ip.ic_instituicao_sede = true
				order by p.qt_pontuacao desc, p.dt_entrada_prefeitura desc, p.qt_filhos desc
			) as subquery
			cross join (select @contador := 0) as init
		) as resultado
		where resultado.Codigo = pCodigo;

	end$$

	call buscarClassificacaoProfessor(null, null, null, 6691)$$

	-- Buscar Instituicoes Do Professor
	Drop Procedure if exists buscarInstituicoesDoProfessor$$
	Create Procedure buscarInstituicoesDoProfessor(pProfessor int)
	begin
		
		if (pProfessor is not null) then
			select i.nm_instituicao, i.nm_email_instituicao, ip.ic_instituicao_sede from instituicao_professor ip
			join instituicao i on (ip.nm_email_instituicao = i.nm_email_instituicao)
			where cd_professor = pProfessor;
		else
			signal sqlstate '45000' set message_text = 'Não foi possível buscar as opções de instituições!';
		end if;

	end$$

	-- Inserir Instituições Professor
	Drop Procedure if exists inserirInstituicoesProfessor$$
	Create Procedure inserirInstituicoesProfessor(pInstituicaoSede varchar(200), pSegundaInstituicao varchar(200), pCodigo int)
	begin
	
		if (pInstituicaoSede is not null) then
			insert into instituicao_professor values (pCodigo, pInstituicaoSede, 1, year(now()),null);
		else
			signal sqlstate '45000' set message_text = 'Selecione sua instituição sede!';
		end if;

		if (pSegundaInstituicao is not null) then
			insert into instituicao_professor values (pCodigo, pSegundaInstituicao, 0, year(now()),null);
		end if;
	end$$

	-- Verificar Validação atribuicao professor
	Drop procedure if exists verificarValidacaoAtribuicao$$
	Create procedure verificarValidacaoAtribuicao(pCodigo int)
	begin
		declare nomeProfessor varchar(200) default null;
		select nm_professor into nomeProfessor from professor where cd_professor = pCodigo;

		if (nomeProfessor is null) then
			signal sqlstate '45000' set message_text = 'Selecione sua instituição sede!';
		else 
			select ic_atribuicao_validada from atribuicao where cd_professor = pCodigo and year(dt_atribuicao) = year(now());
		end if;
	end$$

	/*------------------------------------------------------------ Fases ------------------------------------------------------------*/

	-- Atualizar Fase
	Drop Procedure if exists atualizarFase$$
	Create Procedure atualizarFase(pNome varchar(100), pEmail varchar(200), pDataInicio DateTime, pDataFim DateTime)
	begin
		declare dataInicioFase datetime default null;
		declare dataFimFase datetime default null;
		declare nomeFaseInicio varchar(100) default null;
		declare nomeFaseFim varchar(100) default null;

		select dt_inicio_fase into dataInicioFase from fase where pDataInicio between dt_inicio_fase and dt_fim_fase;
		select dt_fim_fase into dataFimFase from fase where pDataFim between dt_inicio_fase and dt_fim_fase;
		select nm_fase into nomeFaseInicio from fase where dt_inicio_fase between pDataInicio and pDataFim;
		select nm_fase into nomeFaseFim from fase where dt_fim_fase between pDataInicio and pDataFim;
		
		if (pDataFim < pDataInicio) then
			signal sqlstate '45000' set message_text = 'Não é possível atualizar a data das fases onde a data final é maior que a inicial!';
		end if;
	
		if (dataInicioFase is null or dataFimFase is null) then
			if (nomeFaseInicio is null or nomeFaseFim is null) then
				Update fase 
				set dt_inicio_fase = pDataInicio, dt_fim_fase = pDataFim 
				where nm_email_atribuidor = pEmail and nm_fase = pNome;
			else 	
				signal sqlstate '45000' set message_text = 'Não foi possível adicionar uma fase com essas datas!';
			end if;
		else 
			signal sqlstate '45000' set message_text = 'Não foi possível adicionar uma fase com essas datas!';
		end if;
		
	end$$

	-- buscar Próxima Fase
	Drop Procedure if exists buscarFaseAtual$$
	Create Procedure buscarFaseAtual(pDataAtual DateTime)
	begin
		declare nomeFase varchar(100) default null;	
		declare maxFimData datetime;

		select nm_fase into nomeFase from fase where pDataAtual between dt_inicio_fase and dt_fim_fase;

		  select max(dt_fim_fase) into maxFimData from fase;

		if (nomeFase is null) then
			if (pDataAtual > maxFimData) then
				select 'Período de Manutenção';
			else
				select 'Em espera';
			end if;
		else 
			select nm_fase from fase where pDataAtual between dt_inicio_fase and dt_fim_fase;
		end if;

	end$$

	-- Buscar fases ja atualizadas
	Drop Procedure if exists buscarListaFases$$
	Create Procedure buscarListaFases()
	begin
		Select nm_fase from fase where dt_inicio_fase and dt_fim_fase < now() or dt_fim_fase = '0000-00-00 00:00:00' 
		and dt_inicio_fase = '0000-00-00 00:00:00'  order by cd_ordem_fase;
	end$$

	-- buscar última data fim
	Drop Procedure if exists buscarUltimaDataFim$$
	Create Procedure buscarUltimaDataFim()
	begin
		Select dt_fim_fase from fase order by dt_fim_fase desc limit 1;
	end$$

	-- Buscar datas das fases 
	Drop Procedure if exists buscarDatasFases$$
	Create Procedure buscarDatasFases()
	begin
		Select dt_inicio_fase, dt_fim_fase from fase 
		where dt_fim_fase != '0000-00-00 00:00:00' 
		and dt_inicio_fase != '0000-00-00 00:00:00' order by cd_ordem_fase;
	end$$

	-- Buscar próxima fase 
	Drop Procedure if exists buscarProximaFase$$
	Create Procedure buscarProximaFase()
	begin
		Select * from fase where dt_inicio_fase > now() 
		order by dt_fim_fase asc limit 1;
	end$$

call buscarProximaFase() $$

	-- buscarFaseAtual
	Drop Procedure if exists buscarDadosFaseAtual$$
	Create Procedure buscarDadosFaseAtual()
	begin
		select nm_fase, dt_inicio_fase, dt_fim_fase, nm_email_atribuidor,

		(select 
		case
		
			when nm_fase = 'Pré-Atribuição' then (select CalcularPorcentagem((select count(cd_professor) from professor), count(distinct(pref.cd_professor))) 
			from preferencia pref)
			
			when nm_fase = '1º Atribuição' then (select CalcularPorcentagem((select count(*) from aula), (select count(*) from atribuicao where year(now()) = year(dt_atribuicao))))	
		
			when nm_fase = 'Remoção' then (select CalcularPorcentagem((select count(*) from aula), (select count(*) from atribuicao where year(now()) = year(dt_atribuicao))))
		
			when nm_fase = '2º Atribuição' then (select CalcularPorcentagem((select count(*) from aula), (select count(*) from atribuicao where year(now()) = year(dt_atribuicao))))		
			
			when nm_fase = 'Carga Complementar' then (select CalcularPorcentagem((select count(*) from solicitacao where cd_tipo_solicitacao = 1 and Year(dt_solicitacao) = Year(now())), 
			(select count(*) from atribuicao where (now() between dt_inicio_fase and dt_fim_fase))))
			
			else 'Periodo de manutenção'
		end)

		from fase
		where now() between dt_inicio_fase and dt_fim_fase;
	end$$


	drop procedure if exists buscarDadosFaseAtualInstituicao$$
	create procedure buscarDadosFaseAtualInstituicao(pInstituicao varchar(200))
	begin
		select nm_fase, dt_inicio_fase, dt_fim_fase, nm_email_atribuidor,

		(select 
		case
			when nm_fase = 'Pré-Atribuição' then (select calcularporcentagem((select count(cd_professor) from professor), count(distinct(pref.cd_professor))) 
			from preferencia pref where pref.nm_email_instituicao = pInstituicao)

			when nm_fase = '1º Atribuição' then (select calcularporcentagem((select count(*) from aula where nm_email_instituicao = pInstituicao), (select count(*) from atribuicao where year(now()) = year(dt_atribuicao) and nm_email_instituicao = pInstituicao)) )

			when nm_fase = 'Remoção' then (select calcularporcentagem((select count(*) from aula where nm_email_instituicao = pInstituicao), (select count(*) from atribuicao where year(now()) = year(dt_atribuicao) and nm_email_instituicao = pInstituicao)) )

			when nm_fase = '2º Atribuição' then (select calcularporcentagem((select count(*) from aula where nm_email_instituicao = pInstituicao), (select count(*) from atribuicao where year(now()) = year(dt_atribuicao) and nm_email_instituicao = pInstituicao)) )
			
			when nm_fase = 'Carga Complementar' then (select calcularporcentagem((select count(*) from solicitacao where cd_tipo_solicitacao = 1 and year(dt_solicitacao) = year(now())), 
			(select count(*) from atribuicao where (now() between dt_inicio_fase and dt_fim_fase) and nm_email_instituicao = pInstituicao)) )

			else 'Periodo de manutenção'
		end)

		from fase
		where now() between dt_inicio_fase and dt_fim_fase and nm_email_atribuidor in (select nm_email_atribuidor from instituicao where nm_email_instituicao = pInstituicao);
	end$$

	call buscarDadosFaseAtualInstituicao('ary.souza@gmail.com')$$
	call buscarDadosFaseAtual()$$

	/*------------------------------------------------------------ Jornadas ------------------------------------------------------------*/

	-- Buscar Jornada
	Drop Procedure if exists buscarJornadas$$
	Create Procedure buscarJornadas(pDisciplina varchar(100), pTipoEnsino varchar(100))
	begin 
		declare siglaDisciplina varchar(100) default null;
		declare cdTipoEnsino int default null;
		
		select cd_tipo_ensino into cdTipoEnsino from tipo_ensino where cd_tipo_ensino = pTipoEnsino;
		select sg_disciplina into siglaDisciplina from disciplina where sg_disciplina = pDisciplina;

		if (siglaDisciplina is not null and cdTipoEnsino is not null) then
			select j.qt_HTA, d.cd_multiplicador 
			from jornada j
			join disciplina d on (d.sg_disciplina = j.sg_disciplina)
			where j.sg_disciplina = siglaDisciplina and j.cd_tipo_ensino = cdTipoEnsino;
		else 
			signal sqlstate '45000' set message_text = 'Não foi possível encontrar as jornadas desejadas!';
		end if;

	end$$

	-- Inserir Jornadas Professor
	Drop Procedure if exists inserirJornadaProfessor$$
	Create Procedure inserirJornadaProfessor(pCargaHoraria int, pCodigo int, pDisciplina varchar(100), pTipoEnsino int)
	begin

		if (pCargaHoraria is not null) then
			Insert into jornada_escolhida values(pCargaHoraria, pDisciplina, pTipoEnsino, year(now()), pCodigo);
		else
			signal sqlstate '45000' set message_text = 'Selecione sua carga horária!';
		end if;

	end$$

	-- Buscar Jornada do professor
	Drop Procedure if exists buscarJornadaDoProfessor$$
	Create Procedure buscarJornadaDoProfessor(pCodigo int, pAno int)
	begin 
		declare professor varchar(100) default null;

		select nm_professor into professor from professor where cd_professor = pCodigo;

		if (professor is not null) then
			select distinct d.cd_multiplicador, ch.qt_carga_horaria, ch.qt_HTA, ch.qt_HTPC, ch.qt_HTPL
			from jornada_escolhida je
			join jornada j on j.sg_disciplina = je.sg_disciplina and j.qt_HTA = je.qt_HTA
			join carga_horaria ch on ch.qt_HTA = j.qt_HTA
			join disciplina d on d.sg_disciplina = j.sg_disciplina
			where je.cd_professor = pCodigo 
			  and (pAno is null or aa_jornada = pAno);
		else 
			signal sqlstate '45000' set message_text = 'Não foi possível encontrar a jornada!';
		end if;
	end$$
	
	Drop Procedure if exists buscarJornadaRestante$$
	Create Procedure buscarJornadaRestante(pCodigo int, pQtTurmas int)
	begin 
		declare professor varchar(100) default null;

		select nm_professor into professor from professor where cd_professor = pCodigo;

		if (professor is not null) then
			select pQtTurmas - (select count(*) from atribuicao where cd_professor = pCodigo and year(dt_atribuicao) = year(now())) as jornadaRestante;
		else 
			signal sqlstate '45000' set message_text = 'Não foi possível encontrar a jornada restante!';
		end if;
	end$$

	call buscarJornadaRestante(6119, 5)$$

		-- Buscar Carga Mínima
	Drop Procedure if exists buscarCargaMínima$$
	Create Procedure buscarCargaMínima(pCodigo int)
	begin 
		declare disciplina varchar(100) default null;

		select sg_disciplina into disciplina from professor where cd_professor = pCodigo;

		if (disciplina is not null) then
			select d.cd_multiplicador, ch.qt_carga_horaria, min(j.qt_HTA), ch.qt_HTPC, ch.qt_HTPL
			from jornada j
			join carga_horaria ch on ch.qt_HTA = j.qt_HTA
			join disciplina d on d.sg_disciplina = j.sg_disciplina
			where j.sg_disciplina = disciplina;
		else 
			signal sqlstate '45000' set message_text = 'Não foi possível encontrar a jornada!';
		end if;
	end$$
		
	call buscarCargaMinima(6119)$$
	call buscarCargaMinima(6691)$$

	/*------------------------------------------------------------ Preferências ------------------------------------------------------------*/

	-- Inserir Turmas nas preferências
	Drop Procedure if exists inserirPreferenciaProfessor$$
	Create Procedure inserirPreferenciaProfessor(pDisciplina varchar(100), pCodigo int, pTurma varchar(100), pTipoEnsino varchar(100), pInstituicao varchar(200))
	begin

		declare instituicao varchar(200) default null;

		if (pTurma is not null) then
			select nm_email_instituicao into instituicao from instituicao where nm_instituicao = pInstituicao;
			insert into preferencia values (pDisciplina, pTipoEnsino, pTurma, instituicao, pCodigo);
		else
			signal sqlstate '45000' set message_text = 'Selecione sua carga horária!';
		end if;

	end$$

	-- Verificar Preferencias Professor
	Drop Procedure if exists verificarExistenciaPreferenciaProfessor$$
	Create Procedure verificarExistenciaPreferenciaProfessor(pCodigo int)
	begin
		declare preferencia varchar(100) default null;

		select distinct(cd_professor) into preferencia from preferencia
		where cd_professor = pCodigo;

		if (preferencia is not null) then
			select true;
		else 
			select false;
		end if;

	end$$

	/*------------------------------------------------------------ Turmas ------------------------------------------------------------*/

	-- Buscar Turmas para o professor selecionar na pré-atribuição
	Drop Procedure if exists buscarTurmasDisponiveisProfessores$$
	Create Procedure buscarTurmasDisponiveisProfessores(pProfessor int, pPrimeiraInstituicao varchar(200), pSegundaInstituicao varchar(200))
	begin 
		declare tipoEnsinoProfessor varchar(100) default null;
		declare emailPrimeiraInstituicao varchar(200) default null;
		declare emailSegundaInstituicao varchar(200) default null;
		
		if (pProfessor is not null) then
			select cd_tipo_ensino into tipoEnsinoProfessor from professor where cd_professor = pProfessor;
		else 
			signal sqlstate '45000' set message_text = 'Não foi possível encontrar este professor!';
		end if;

		if (pPrimeiraInstituicao is null) then
			if (tipoEnsinoProfessor = 2) then
				signal sqlstate '45000' set message_text = 'Inclua a instituição sede!';
			end if;

			-- PEB I
			select distinct(t.sg_turma), tp.nm_tipo_periodo, i.nm_instituicao from professor p 
			join instituicao_professor ip on (p.cd_professor = ip.cd_professor)
			join instituicao i on (ip.nm_email_instituicao = i.nm_email_instituicao)
			join turma t on (i.nm_email_instituicao = t.nm_email_instituicao)
			join tipo_periodo tp on (t.cd_tipo_periodo = tp.cd_tipo_periodo)
			where p.cd_professor = pProfessor and t.cd_tipo_ensino = 1;
		else 
			-- PEB III
			select nm_email_instituicao into emailPrimeiraInstituicao from instituicao where nm_instituicao = pPrimeiraInstituicao;

			if (pSegundaInstituicao is not null) then
				select nm_email_instituicao into emailSegundaInstituicao from instituicao where nm_instituicao = pSegundaInstituicao;
			end if;

			select distinct(t.sg_turma), tp.nm_tipo_periodo, i.nm_instituicao 
			from turma t 
			join tipo_periodo tp on (t.cd_tipo_periodo = tp.cd_tipo_periodo)
			join instituicao i on (i.nm_email_instituicao = t.nm_email_instituicao)
			join instituicao_professor ip on (i.nm_email_instituicao = ip.nm_email_instituicao)
			where (i.nm_email_instituicao = emailPrimeiraInstituicao
			or (pSegundaInstituicao is null or i.nm_email_instituicao = emailSegundaInstituicao))
			and t.cd_tipo_ensino = tipoEnsinoProfessor
			order by i.nm_email_instituicao = emailPrimeiraInstituicao desc;
		end if;

	end$$

	Drop Procedure if exists verificarTurmasPreferenciaProfessor$$
	Create Procedure verificarTurmasPreferenciaProfessor(pCodigo int, pEmailInstituicao varchar(200))
	begin
		Declare tipoEnsinoProfessor varchar(100) default null;
		Declare disciplinaProfessor varchar(100) default null;

		-- Verifica se o professor existe
		select cd_tipo_ensino into tipoEnsinoProfessor from professor where cd_professor = pCodigo;
		select sg_disciplina into disciplinaProfessor from professor where cd_professor = pCodigo;

		if (tipoEnsinoProfessor is not null) then
			select distinct
			a.sg_turma, 
			tp.nm_tipo_periodo, 
			i.nm_instituicao,
			case 
				when exists (select * from atribuicao atr1 where atr1.sg_turma = a.sg_turma and atr1.sg_disciplina = a.sg_disciplina and atr1.nm_email_instituicao = atr.nm_email_instituicao)then 'Atribuída'  
				else 'Livre'                                  
			end as situacao,
			case 
				when p.sg_turma is not null then 'Preferida'  
				else 'Não preferida'                          
			end as preferencia
			from aula a
			join turma t 
				on (t.sg_turma = a.sg_turma)
			join tipo_periodo tp
				on (t.cd_tipo_periodo = tp.cd_tipo_periodo)
			join instituicao i 
				on t.nm_email_instituicao = i.nm_email_instituicao
			left join atribuicao atr
				on (a.sg_turma = atr.sg_turma and year(atr.dt_atribuicao) = year(now())
					and t.nm_email_instituicao = atr.nm_email_instituicao)
			left join preferencia p 
				on (t.sg_turma = p.sg_turma
					and p.cd_professor = pCodigo
					and t.nm_email_instituicao = p.nm_email_instituicao)
			where (pEmailInstituicao is null or t.nm_email_instituicao = pEmailInstituicao) and t.cd_tipo_ensino = tipoEnsinoProfessor and a.sg_disciplina = disciplinaProfessor
			order by situacao desc, sg_turma asc;
		else
			signal sqlstate '45000' 
			set message_text = 'Não foi possível encontrar suas preferências!';
		end if;
	end$$
	
	call verificarTurmasPreferenciaProfessor(3606, 'ary.souza@gmail.com')$$

	-- Filtro do Andamento da Instituição específica
	Drop Procedure if exists buscarAndamentoInstituicao$$
	Create Procedure buscarAndamentoInstituicao(pFiltroAno year, pFiltroTipo varchar(100), pFiltroDisciplina Varchar(200), pInstituicao varchar(200))
	begin 
		declare siglaDisciplina varchar(100) default null;
		declare tipoEnsino varchar(100) default null;
		declare nomeInstituicao varchar(200) default null;

		declare anoAtribuicao int default null;
		declare anoAtual int;

		set anoAtual = year(curdate());

		if (pFiltroAno <> 0) then
			set anoAtribuicao = pFiltroAno;
		else
			set anoAtribuicao = anoAtual;
		end if;

		if (pFiltroTipo is not null) then
			select cd_tipo_ensino into tipoEnsino 
			from tipo_ensino 
			where nm_tipo_ensino = pFiltroTipo;
		end if;

		if (pFiltroDisciplina is not null) then
			select distinct(sg_disciplina) into siglaDisciplina 
			from disciplina 
			where nm_disciplina = pFiltroDisciplina;
		end if;

		select nm_email_instituicao into nomeInstituicao 
		from instituicao 
		where nm_email_instituicao = pInstituicao;

		if (nomeInstituicao is null) then
			signal sqlstate '45000' set message_text = 'A instituição desejada não existe!';
		else
			select distinct(a.sg_turma), tp.nm_tipo_ensino, d.nm_disciplina, 
				coalesce(
					(select concat(p.nm_professor,' - ',p.cd_professor)
					 from atribuicao atr 
					 join professor p on atr.cd_professor = p.cd_professor
					 where atr.sg_turma = a.sg_turma
					 and atr.nm_email_instituicao = pInstituicao
					 and atr.sg_disciplina = a.sg_disciplina
					 and year(atr.dt_atribuicao) = anoAtribuicao
					 limit 1), 
					'Não foi atribuído') as professor_atribuido
			from aula a
			join disciplina d on a.sg_disciplina = d.sg_disciplina
			join tipo_ensino tp on tp.cd_tipo_ensino = a.cd_tipo_ensino
			left join atribuicao atr on a.sg_turma = atr.sg_turma
			where a.nm_email_instituicao = pInstituicao 
			and (tipoEnsino is null or tp.cd_tipo_ensino = tipoEnsino)
			and (siglaDisciplina is null or d.sg_disciplina = siglaDisciplina);
		end if;
	end$$

	/*------------------------------------------------------------ Atribuição ------------------------------------------------------------*/

	-- Verificar Validação atribuicao professor
	Drop procedure if exists verificarValidacaoAtribuicaoProfessor$$
	Create procedure verificarValidacaoAtribuicaoProfessor(pCodigo int)
	begin
		declare professor varchar(200) default null;
		select nm_professor into professor from professor where cd_professor = pCodigo;

		if (professor is not null) then
			select distinct(ic_atribuicao_validada) from atribuicao where year(now()) = year(dt_atribuicao) and cd_professor = 3788;
		else
			signal sqlstate '45000' set message_text = 'Não foi possível verificar a situação da validação da atribuição do professor.';
		end if;
	end$$

	-- Validar atribuicao professor
	Drop procedure if exists validarAtribuicaoProfessor$$
	Create procedure validarAtribuicaoProfessor(pCodigo int)
	begin
		declare professor varchar(200) default null;
		select nm_professor into professor from professor where cd_professor = pCodigo;

		if (professor is not null) then
			update atribuicao set ic_atribuicao_validada = 1, ic_ciencia_diretor = true where year(now()) = year(dt_atribuicao) and cd_professor = pCodigo;
		else
			signal sqlstate '45000' set message_text = 'Não foi possível validar a atribuição do professor.';
		end if;
	end$$

	-- Confirmar inicio atribuicao
	Drop procedure if exists confirmarChamadaInicioAtribuicaoProfessor$$
	Create procedure confirmarChamadaInicioAtribuicaoProfessor(pCodigo int)
	begin
		declare professor varchar(200) default null;
		select nm_professor into professor from professor where cd_professor = pCodigo;

		if (professor is not null) then
			update chamada_instituicao set ic_confirmacao_inicio = 1 where year(now()) = year(dt_envio) and cd_professor = pCodigo and ic_terminou = false;
		else
			signal sqlstate '45000' set message_text = 'Não foi possível validar a atribuição do professor.';
		end if;
	end$$

	-- Inserir Atribuicao Professor
	Drop Procedure if exists inserirAtribuicaoProfessor$$
	Create Procedure inserirAtribuicaoProfessor(pCodigo int, pDisciplina varchar(10), pTurma varchar(10), pInstituicao varchar(200), pTipoEnsino int)
	begin 
		Declare professor varchar(100) default null;

		Declare atribuidor varchar(200) default null;
		Declare dataInicio datetime default null;
		Declare dataFim datetime default null;
		Declare nomeFase varchar(15) default null;

		Declare emailInstituicao varchar(200) default null;

		select nm_email_atribuidor, 
			   dt_inicio_fase,
			   dt_fim_fase,
			   nm_fase
		into 
			   atribuidor,
			   dataInicio, 
			   dataFim, 
			   nomeFase
		from fase where now() between dt_inicio_fase and dt_fim_fase;

		select nm_email_instituicao into emailInstituicao from instituicao where nm_instituicao = pInstituicao;

		-- Verifica se o professor existe
		select nm_professor into professor from professor where cd_professor = pCodigo;

		if (professor is not null) then
			update Chamada_Instituicao set ic_terminou = true where cd_professor = pCodigo and nm_email_instituicao = emailInstituicao and year(now()) = year(dt_envio);
			insert into atribuicao values (pCodigo, pDisciplina, pTurma, emailInstituicao, pTipoEnsino, now(), atribuidor, dataInicio, dataFim, nomeFase, null, true, null, null, false);
		end if;
		
	end$$

	-- Inserir Atribuicao Professor que Acabou o Tempo
	Drop Procedure if exists inserirAtribuicaoProfessorAcabouTempo$$
	Create Procedure inserirAtribuicaoProfessorAcabouTempo(pCodigo int, pDisciplina varchar(10), pTurma varchar(10), pInstituicao varchar(200), pTipoEnsino int)
	begin 
		Declare professor varchar(100) default null;

		Declare atribuidor varchar(200) default null;
		Declare dataInicio datetime default null;
		Declare dataFim datetime default null;
		Declare nomeFase varchar(15) default null;

		select nm_email_atribuidor, 
			   dt_inicio_fase,
			   dt_fim_fase,
			   nm_fase
		into 
			   atribuidor,
			   dataInicio, 
			   dataFim, 
			   nomeFase
		from fase where now() between dt_inicio_fase and dt_fim_fase;

		-- Verifica se o professor existe
		select nm_professor into professor from professor where cd_professor = pCodigo;

		if (professor is not null) then
			
			-- se existe uma atribuicao incompleta
			if exists (select * from atribuicao where cd_professor = pCodigo and dt_atribuicao between dt_inicio_fase and dt_fim_fase and ic_atribuicao_validada = false) then
				delete from atribuicao where cd_professor = pCodigo and dt_atribuicao between dt_inicio_fase and dt_fim_fase and ic_atribuicao_validada = false;
			end if;

			update jornada_escolhida 
			set qt_hta = (select min(j.qt_HTA) from jornada j join carga_horaria ch on ch.qt_HTA = j.qt_HTA join disciplina d on d.sg_disciplina = j.sg_disciplina where j.sg_disciplina = pDisciplina) 
			where cd_professor = pCodigo and aa_jornada = year(now());

			insert into atribuicao values (pCodigo, pDisciplina, pTurma, pInstituicao, pTipoEnsino, now(), atribuidor, dataInicio, dataFim, nomeFase, null, true, null, null, true);
			update Chamada_Instituicao set ic_terminou = true where cd_professor = pCodigo and nm_email_instituicao = pInstituicao and year(now()) = year(dt_envio);
		end if;
		
	end$$

	-- Filtro do Histórico do professor
	Drop Procedure if exists buscarHistoricoProfessor$$
	Create Procedure buscarHistoricoProfessor(pCodigo int, pFiltroAno year)
	begin
		declare anoAtribuicao int default null;
	
		if (pFiltroAno <> 0) then
			set anoAtribuicao = pFiltroAno;
		end if;

		/*select distinct(dt_atribuicao), (select qt_HTA from jornada_escolhida je where cd_professor = pCodigo and je.aa_jornada = year(atr.dt_atribuicao))
		from atribuicao atr
		join instituicao i on (atr.nm_email_instituicao = i.nm_email_instituicao)
		join aula a on (atr.sg_disciplina = a.sg_disciplina)
		join disciplina d on (a.sg_disciplina = d.sg_disciplina)
		where (anoAtribuicao is null or year(dt_atribuicao) = anoAtribuicao)  
		and cd_professor = pCodigo
		order by dt_atribuicao desc;*/

		select distinct(dt_atribuicao), 
		case
			when exists (select qt_HTA from jornada_escolhida je where cd_professor = pCodigo and je.aa_jornada = year(atr.dt_atribuicao)) then (select qt_HTA from jornada_escolhida je where cd_professor = pCodigo and je.aa_jornada = year(atr.dt_atribuicao))
			else '0'
		end as Situacao
		from atribuicao atr
		join instituicao i on (atr.nm_email_instituicao = i.nm_email_instituicao)
		join aula a on (atr.sg_disciplina = a.sg_disciplina)
		join disciplina d on (a.sg_disciplina = d.sg_disciplina)
		where (anoAtribuicao is null or year(dt_atribuicao) = anoAtribuicao)  
		and cd_professor = pCodigo
		order by dt_atribuicao desc;
	end$$
	
	call buscarHistoricoProfessor(3788, 0)$$

	-- Filtro do Histórico da Instituição serve também para os historicos que o atribuidor consegue visualizar
	Drop Procedure if exists buscarHistoricoInstituicao$$
	Create Procedure buscarHistoricoInstituicao(pFiltroAno year, pTipoEnsino varchar(10), pFiltroDisciplina Varchar(200), pFiltroInstituicao varchar(200))
	begin 
		declare siglaDisciplina varchar(100) default null;
		declare tipoEnsino int default null;
		declare anoAtribuicao int default null;

		select cd_tipo_ensino into tipoEnsino from tipo_ensino where nm_tipo_ensino = pTipoEnsino;

		if (pFiltroAno <> 0) then
			set anoAtribuicao = pFiltroAno;
		end if;

		if (pFiltroDisciplina is not null) then
			select distinct(sg_disciplina) into siglaDisciplina from disciplina where nm_disciplina = pFiltroDisciplina and cd_tipo_ensino = tipoEnsino;
		end if;
		
		select distinct(i.nm_instituicao), dt_atribuicao, d.nm_disciplina, te.nm_tipo_ensino
		from atribuicao atr
		join instituicao i on (atr.nm_email_instituicao = i.nm_email_instituicao)
		join aula a on (atr.sg_disciplina = a.sg_disciplina)
		join disciplina d on (a.sg_disciplina = d.sg_disciplina)
		join tipo_ensino te on (a.cd_tipo_ensino = te.cd_tipo_ensino)
		where (anoAtribuicao is null or year(dt_atribuicao) = anoAtribuicao) 
		and (tipoEnsino is null or d.cd_tipo_ensino = tipoEnsino) 
		and (siglaDisciplina is null or d.sg_disciplina = siglaDisciplina) 
		and (pFiltroInstituicao is null or atr.nm_email_instituicao = pFiltroInstituicao)
		order by dt_atribuicao;
 
	end$$

	call buscarHistoricoInstituicao(0, null, null, null)$$

	-- Filtro dos Professores geral
	Drop Procedure if exists buscarAndamentoProfessoresGeral$$
	Create Procedure buscarAndamentoProfessoresGeral(pFiltroAno year, pFiltroTipo varchar(100), pFiltroDisciplina Varchar(200), pFiltroInstituicao varchar(200))
	begin 
		declare siglaDisciplina varchar(100) default null;
		declare tipoEnsino varchar(100) default null;
		declare nomeInstituicao varchar(200) default null;
		
		if (pFiltroTipo is not null) then
			select cd_tipo_ensino into tipoEnsino from tipo_ensino where nm_tipo_ensino = pFiltroTipo;
		end if;

		if (pFiltroDisciplina is not null) then
			select sg_disciplina into siglaDisciplina from disciplina where nm_disciplina = pFiltroDisciplina;
		end if;
		
		if (pFiltroInstituicao is not null) then
			select nm_email_instituicao into nomeInstituicao from instituicao i where nm_email_instituicao = pFiltroInstituicao;
		end if;
		
		set @contador = 0;
		
		select Concat((@contador := @contador + 1),'°') as Ordem,
		cd_professor,
		nm_professor,
		nm_tipo_ensino,
		nm_disciplina, 
		nm_instituicao,
		Situacao
		from (
			select 
			p.cd_professor,
			p.nm_professor,
			tp.nm_tipo_ensino,
			d.nm_disciplina,
			i.nm_instituicao,
			case
				when exists(select * from atribuicao atr where atr.cd_professor = p.cd_professor and year(dt_atribuicao) = pFiltroAno) then 'Atribuído'
				else 'Não Atribuído'
			end as Situacao
			from professor p 
			join disciplina d on (p.sg_disciplina = d.sg_disciplina)
			join tipo_ensino tp on (tp.cd_tipo_ensino = p.cd_tipo_ensino)
			join instituicao_professor ip on (p.cd_professor = ip.cd_professor)
			join instituicao i on (i.nm_email_instituicao = ip.nm_email_instituicao)
			where (nomeInstituicao is null or ip.nm_email_instituicao = pFiltroInstituicao) 
			and (tipoEnsino is null or p.cd_tipo_ensino = tipoEnsino) 
			and (pFiltroDisciplina is null or p.sg_disciplina = siglaDisciplina)
			order by p.qt_pontuacao desc
		) as subquery;

	end$$

	Drop Procedure if exists buscarDiretorInstituicao$$
	Create Procedure buscarDiretorInstituicao(pInstituicao varchar(200), pData date)
	begin
		select nm_professor from Professor p 
		join Diretor d on (d.cd_professor = p.cd_professor) 
		join instituicao i on (i.nm_email_instituicao = d.nm_email_instituicao)  
		where i.nm_email_instituicao = pInstituicao 
		and pData between d.dt_inicio_atividade and d.dt_fim_atividade;
	end$$

	/*------------------------------------------------------------ Buscar para dropdownlist ------------------------------------------------------------*/

	DROP PROCEDURE IF EXISTS buscarAnosAtribuicao$$
	CREATE PROCEDURE buscarAnosAtribuicao(in pProfessor int, in pInstituicao varchar(200))
	BEGIN
		DECLARE codigo INT DEFAULT NULL;

		IF (pProfessor <> 0) THEN
			SET codigo = pProfessor;
		END IF;

		IF EXISTS (
			SELECT DISTINCT YEAR(dt_atribuicao)
			FROM atribuicao atr
			WHERE (pProfessor IS NULL OR cd_professor = pProfessor)
			  AND (pInstituicao IS NULL OR nm_email_instituicao = pInstituicao)
		) THEN
			SELECT DISTINCT dt_atribuicao
			FROM atribuicao atr
			WHERE (pProfessor IS NULL OR cd_professor = pProfessor)
			  AND (pInstituicao IS NULL OR nm_email_instituicao = pInstituicao)
			ORDER BY dt_atribuicao DESC;
		ELSE
			SELECT NOW() AS dt_atribuicao;
		END IF;

	END$$

	call buscarAnosAtribuicao(6119, null)$$



	Drop Procedure if exists buscarTiposEnsino$$
	Create Procedure buscarTiposEnsino(pInstituicao varchar(200))
	begin
		declare instituicao varchar(200) default null;

		if (pInstituicao is not null) then
			select nm_email_instituicao into instituicao from instituicao where nm_email_instituicao = pInstituicao;
		end if;

		select distinct(te.cd_tipo_ensino), nm_tipo_ensino 
		from instituicao_Tipo_Ensino ite
		join tipo_ensino te on (ite.cd_tipo_ensino = te.cd_tipo_ensino)
		where (instituicao is null or nm_email_instituicao = instituicao);
	end$$

	call buscarTiposEnsino('')$$

	Drop Procedure if exists buscarDisciplinas$$
	Create Procedure buscarDisciplinas(pNomeT varchar(7))
	begin
		select d.nm_disciplina, d.sg_disciplina, te.nm_tipo_ensino from tipo_ensino te
		join disciplina d on (d.cd_tipo_ensino = te.cd_tipo_ensino) 
		where (pNomeT is null or te.nm_tipo_ensino = pNomeT);
	end$$

	Drop Procedure if exists buscarInstituicaoPorTipoEnsino$$
	Create Procedure buscarInstituicaoPorTipoEnsino(pNomeT varchar(7))
	begin
		select distinct i.nm_instituicao, i.nm_email_instituicao, te.nm_tipo_ensino from instituicao i 
		join instituicao_tipo_ensino ite on (i.nm_email_instituicao = ite.nm_email_instituicao) 
		join tipo_ensino te on (te.cd_tipo_ensino = ite.cd_tipo_ensino)
		where (pNomeT is null or te.nm_tipo_ensino = pNomeT);
	end$$

	call buscarInstituicaoPorTipoEnsino(null)$$

	-- Filtro Andamento das instituicões
	drop procedure if exists buscarSituacaoAndamentoInstituicao$$
	create procedure buscarSituacaoAndamentoInstituicao(pFiltroAno year, pFiltroInstituicao varchar(200))
	begin
		declare nomeInstituicao varchar(200) default null;

		if (pFiltroInstituicao is not null) then
			select nm_email_instituicao into nomeInstituicao from instituicao i where nm_email_instituicao = pFiltroInstituicao;
		end if;

		select nm_instituicao,
		CalcularPorcentagem(
			(select count(*) from aula where nm_email_instituicao = i.nm_email_instituicao), 
			(select count(*) from atribuicao where (nm_email_instituicao = i.nm_email_instituicao) and (pFiltroAno is null or year(dt_atribuicao) = pFiltroAno))
		) as porcentagem,
		case
			when CalcularPorcentagem(
				(select count(*) from aula where nm_email_instituicao = i.nm_email_instituicao), 
				(select count(*) from atribuicao where (nm_email_instituicao = i.nm_email_instituicao) and (pFiltroAno is null or year(dt_atribuicao) = pFiltroAno))
			) < 50 then 'alerta'
			when CalcularPorcentagem(
				(select count(*) from aula where nm_email_instituicao = i.nm_email_instituicao), 
				(select count(*) from atribuicao where (nm_email_instituicao = i.nm_email_instituicao) and (pFiltroAno is null or year(dt_atribuicao) = pFiltroAno))
			) between 50 and 70 then 'medio'
			else 'sucesso'
		end as situacao
		from instituicao i
		where (nomeInstituicao is null or i.nm_email_instituicao = pFiltroInstituicao);
	end$$

	drop procedure if exists buscarSituacaoAndamentoInstituicaoDashboard$$
	create procedure buscarSituacaoAndamentoInstituicaoDashboard(pAno year)
	begin
		select nm_instituicao,
		CalcularPorcentagem(
			(select count(*) from aula where nm_email_instituicao = i.nm_email_instituicao), 
			(select count(*) from atribuicao where (nm_email_instituicao = i.nm_email_instituicao) and (pAno is null or year(dt_atribuicao) = pAno))
		) as porcentagem,
		case
			when CalcularPorcentagem(
				(select count(*) from aula where nm_email_instituicao = i.nm_email_instituicao), 
				(select count(*) from atribuicao where (nm_email_instituicao = i.nm_email_instituicao) and (pAno is null or year(dt_atribuicao) = pAno))
			) < 50 then '#CB2C2A'
			when CalcularPorcentagem(
				(select count(*) from aula where nm_email_instituicao = i.nm_email_instituicao), 
				(select count(*) from atribuicao where (nm_email_instituicao = i.nm_email_instituicao) and (pAno is null or year(dt_atribuicao) = pAno))
			) between 50 and 70 then '#EBA352'
			else '#30B0A1'
		end as situacao
		from instituicao i
		order by CAST(REPLACE(porcentagem, '%', '') AS DECIMAL(10, 2)) asc
		limit 5;
	end$$

	call buscarSituacaoAndamentoInstituicaoDashboard(2024)$$

	drop procedure if exists buscarSituacaoAndamentoDisciplinaDashboardInstituicao$$
	create procedure buscarSituacaoAndamentoDisciplinaDashboardInstituicao(pAno year, pInstituicao varchar(200))
	begin
		select 
			d.nm_disciplina as disciplina,
			ifnull(
				calcularporcentagem(
					(select count(*) from aula a where a.sg_disciplina = d.sg_disciplina and a.nm_email_instituicao = pInstituicao),
					(select count(*) from atribuicao atr where atr.sg_disciplina = d.sg_disciplina and atr.nm_email_instituicao = pInstituicao and (pAno is null or year(atr.dt_atribuicao) = pAno))
				), 0
			) as porcentagem,
			case
				when ifnull(
					calcularporcentagem(
						(select count(*) from aula a where a.sg_disciplina = d.sg_disciplina and a.nm_email_instituicao = pInstituicao),
						(select count(*) from atribuicao atr where atr.sg_disciplina = d.sg_disciplina and atr.nm_email_instituicao = pInstituicao and (pAno is null or year(atr.dt_atribuicao) = pAno))
					), 0
				) < 50 then '#CB2C2A'
				when ifnull(
					calcularporcentagem(
						(select count(*) from aula a where a.sg_disciplina = d.sg_disciplina and a.nm_email_instituicao = pInstituicao),
						(select count(*) from atribuicao atr where atr.sg_disciplina = d.sg_disciplina and atr.nm_email_instituicao = pInstituicao and (pAno is null or year(atr.dt_atribuicao) = pAno))
					), 0
				) between 50 and 70 then '#EBA352'
				else '#30B0A1'
			end as situacao
		from 
			disciplina d
		join 
			aula a on a.sg_disciplina = d.sg_disciplina and a.nm_email_instituicao = pInstituicao
		group by 
			d.nm_disciplina
		order by CAST(REPLACE(porcentagem, '%', '') AS DECIMAL(10, 2)) asc
		limit 5;
	end$$

	call buscarSituacaoAndamentoDisciplinaDashboardInstituicao('2024', 'ary.souza@gmail.com')$$
	/*------------------------------------------------------------ Falta revisar ------------------------------------------------------------*/

	Drop Procedure if exists buscarInstituicoesPorTipoEnsino$$
	Create Procedure buscarInstituicoesPorTipoEnsino(pTipo varchar(100))
	BEGIN
		declare tipoEnsino varchar(100) default null;

		if (pTipo is not null) then
			select cd_tipo_ensino into tipoEnsino from tipo_ensino where nm_tipo_ensino = pTipo;
		end if;

		select distinct i.nm_instituicao, i.nm_email_instituicao , i.cd_numero_instituicao from instituicao i
		join instituicao_tipo_ensino ite on (i.nm_email_instituicao = ite.nm_email_instituicao) 
		where (tipoEnsino is null or ite.cd_tipo_ensino = tipoEnsino);
	end$$

	call buscarInstituicoesPorTipoEnsino(null)$$

	-- buscar carga horária e instituicoes do professor para realizar suas preferências
	drop procedure if exists buscarDadosPreferenciasProfessor$$
	Create procedure buscarDadosPreferenciasProfessor(pCodigo int)
	begin
		declare nome varchar(200) default null;
	
		select nm_professor into nome from professor where cd_professor = pCodigo; 

		if (nome is null) then
			signal sqlstate '45000' set message_text = 'Professor não encontrado!';
		else 
			select Concat((select qt_carga_horaria_jornada from Jornada_Escolhida je where je.cd_professor = p.cd_professor),'h') as JornadaEscolhida,
			(select e.nm_email_instituicao from instituicao_professor ep join instituicao e on (ep.nm_email_instituicao = e.nm_email_instituicao) where ep.cd_professor = p.cd_professor and ic_instituicao_sede = 1) as instituicaoSede,
			(select e.nm_email_instituicao from instituicao_professor ep join instituicao e on (ep.nm_email_instituicao = e.nm_email_instituicao) where ep.cd_professor = p.cd_professor and ic_instituicao_sede = 0) as instituicaoSecundaria 
			from professor p where p.cd_professor = pCodigo;
		end if;
		
	end$$

	-- buscar turmas da instituicao e declarar sua situação (livre/substituta)
	drop procedure if exists buscarTurmasInstituicao$$
	Create procedure buscarTurmasInstituicao(pInstituicao Varchar(200), pDisciplina varchar(20))
	begin
		Declare disciplina varchar(6) default null; 

		select sg_disciplina into disciplina from disciplina where nm_disciplina = pDisciplina;

 		select Distinct a.sg_turma as Turma,
		te.nm_tipo_ensino as Tipo, 
		tp.nm_tipo_periodo as Periodo,
		d.nm_disciplina as Disciplina,
		te.cd_tipo_ensino,
		t.nm_turma,
		t.nm_email_instituicao
		from aula a	
		join disciplina d on (a.sg_disciplina = d.sg_disciplina)
		join turma t on  (a.sg_turma = t.sg_turma and a.nm_email_instituicao = t.nm_email_instituicao)
		join tipo_ensino te on (t.cd_tipo_ensino = te.cd_tipo_ensino)
		join tipo_periodo tp on (t.cd_tipo_periodo = tp.cd_tipo_periodo)
		where (a.nm_email_instituicao = pInstituicao or pInstituicao is null)
		and (disciplina is null or a.sg_disciplina = disciplina); 
	end$$	

	drop procedure if exists buscarTurmas$$
	Create procedure buscarTurmas()
	begin
		/*
		Declare disciplina varchar(6) default null; 

		select sg_disciplina into disciplina from disciplina where nm_disciplina = pDisciplina;

 		select Distinct a.sg_turma as Turma,
		te.nm_tipo_ensino as Tipo, 
		tp.nm_tipo_periodo as Periodo,
		d.nm_disciplina as Disciplina,
		te.cd_tipo_ensino,
		t.nm_turma,
		t.nm_email_instituicao
		from aula a	
		join disciplina d on (a.sg_disciplina = d.sg_disciplina)
		join turma t on  (a.sg_turma = t.sg_turma and a.nm_email_instituicao = t.nm_email_instituicao)
		join tipo_ensino te on (t.cd_tipo_ensino = te.cd_tipo_ensino)
		join tipo_periodo tp on (t.cd_tipo_periodo = tp.cd_tipo_periodo)
		where (a.nm_email_instituicao = pInstituicao or pInstituicao is null)
		and (disciplina is null or a.sg_disciplina = disciplina); 
		*/
		Select t.nm_turma,t.sg_turma,t.nm_email_instituicao,cd_tipo_ensino,tp.nm_tipo_periodo from turma t join tipo_periodo tp on(tp.cd_tipo_periodo = tp.cd_tipo_periodo) ;
	end$$	

	call buscarTurmasInstituicao('ary.souza@gmail.com', 'História')$$

	-- Atribuir aula ao professor
	drop procedure if exists AtribuirAula$$
	create procedure atribuirAula(pProfessor int, pTurma varchar(4), pinstituicao varchar(200), pTipoEnsino int, pAtribuidor varchar(200), 
	pSubstituta boolean, pAssinaturaAtribuidor varchar(50), pAssinaturaProfessor varchar(50), pAssinaturaDiretor varchar(50)) 
	begin
 		insert into atribuicao values (
		pProfessor,
		(select sg_disciplina from professor where cd_professor = pProfessor), 
		pTurma, pinstituicao, pTipoEnsino,now(), pAtribuidor,
		(select dt_inicio_fase from fase where now() between dt_inicio_fase and dt_fim_fase),
		(select dt_fim_fase from fase where now() between dt_inicio_fase and dt_fim_fase),
		(select nm_fase from fase where now() between dt_inicio_fase and dt_fim_fase),
		passinaturaAtribuidor , passinaturaProfessor, passinaturaDiretor,pSubstituta);
	end$$	
	
	-- Solicitar ao atribuidor
	drop procedure if exists SolicitarAtribuidor$$
	create procedure SolicitarAtribuidor(pAtribuidor varchar(200), pProfessor int, pTipo int)
	begin
		insert into solicitacao values (pProfessor, pAtribuidor, now(), pTipo,0);
	end$$
    
    -- Verificar solicitacao
	drop procedure if exists VerificarSolicitacao$$
	create procedure VerificarSolicitacao(pAtribuidor varchar(200), pProfessor int, pTipo int)
	begin
		if exists(select * from solicitacao where nm_email_atribuidor = pAtribuidor and cd_professor = pProfessor and cd_tipo_solicitacao = pTipo and year(now()) = year(dt_solicitacao)) then
			select true;
		else
        	select false;
        end if;
	end$$

	-- Buscar turmas para troca
	drop procedure if exists buscarTurmasTroca$$
	create procedure buscarTurmasTroca(pProfessor int)
	begin
		select atr.sg_turma as Turma,
		(select nm_tipo_ensino from Tipo_Ensino where cd_tipo_ensino = atr.cd_tipo_ensino) as TipoEnsino,
		tp.nm_tipo_periodo Periodo,
		(select nm_instituicao from instituicao where nm_email_instituicao = a.nm_email_instituicao) as instituicao
		from solicitacao s 
		join professor p on (s.cd_professor = p.cd_professor)
		join atribuicao atr on (p.cd_professor = atr.cd_professor)
		join aula a on (a.sg_turma = atr.sg_turma and a.nm_email_instituicao = atr.nm_email_instituicao and a.sg_disciplina = atr.sg_disciplina and a.cd_Tipo_Ensino = atr.cd_Tipo_Ensino)
		join turma t on (a.sg_turma = t.sg_turma) 
		join tipo_periodo tp on (t.cd_tipo_periodo = tp.cd_tipo_periodo)
		where s.cd_tipo_solicitacao = 2 and s.cd_professor <> pProfessor;
	end$$

	-- buscar Aulas do Professor
	Drop Procedure if exists buscarAulasProfessor$$
	Create Procedure buscarAulasProfessor(pProfessor int, pFiltroPeriodo varchar(100), pFiltroinstituicao varchar(100))
	begin

		declare aula varchar(200) default null;
	
		select sg_turma into aula from atribuicao where cd_professor = pProfessor or nm_periodo_aula = pFiltroPeriodo or nm_email_instituicao = pFiltroinstituicao;

		if (aula is null) then
			signal sqlstate '45000' set message_text = 'Nenhuma aula atribuída à este professor.';
		else 
			if (pFiltroPeriodo is not null or pFiltroinstituicao is not null) then
				select * from atribuicao where cd_professor = pProfessor and (nm_periodo_aula = pFiltroPeriodo)
				union
				select * from atribuicao where cd_professor = pProfessor and nm_email_instituicao = pFiltroinstituicao ;
			else
				select * from atribuicao where cd_professor = pProfessor;
			end if;
		end if;

	end$$

	Drop Procedure if exists buscarinstituicoesProfessor$$
	Create Procedure buscarinstituicoesProfessor(pCodigo Varchar(200))
	begin
		select * from instituicao_professor where cd_professor = PCodigo;
	end$$

	Drop Procedure if exists buscarDadosInstituicao$$
	Create Procedure buscarDadosInstituicao(pEmail varchar(200))
	begin
		select i.nm_instituicao, i.cd_numero_instituicao, group_concat(distinct te.nm_tipo_ensino separator ',') as tipos_ensino,
		p.cd_professor,p.nm_professor,p.nm_email_professor, p.cd_numero_professor, p.dt_nascimento_professor
		from instituicao i 
		join instituicao_tipo_ensino ite on (ite.nm_email_instituicao = i.nm_email_instituicao)
		join tipo_ensino te on (ite.cd_tipo_ensino = te.cd_tipo_ensino) 
		join diretor d on (d.nm_email_instituicao = i.nm_email_instituicao) 
		join professor p on (p.cd_professor = d.cd_professor)
		where i.nm_email_instituicao = pEmail;
	end$$
 
	Drop Procedure if exists AdicionarProfessor$$
	Create Procedure AdicionarProfessor(pCodigo int,pEmail varchar(200),pNome varchar(200),pFilhos int,pDataNascimento date,
	pDataEntrada date,pPontuacao decimal(10,2),pTelefone varchar(15),pTipo int, pSigla varchar(10),pTipoEnsino int)
	begin	
		insert into professor values(pCodigo,pEmail,concat_ws('_',pCodigo,pNome),pNome,pFilhos,pDataNascimento,
		pDataEntrada,pPontuacao,pTelefone,pTipo,pSigla,pTipoEnsino,true, null);
	end$$

drop procedure if exists buscarNotificacoesAtribuidor$$
	create procedure buscarNotificacoesAtribuidor(pEmail varchar(200),pInicioIntervalo int,pFimIntervalo int)
	begin
		
        select e.nm_email_instituicao as Identificacao,
		e.nm_instituicao as Nome,
		(select ConverterDataParaExt(dt_aviso)) as DataConvertida,
		dt_aviso as DataHorario,
		(select DiaPtBr(a.dt_aviso)) as DiaDaSemana,
		ta.nm_tipo_assunto as assunto,
		ds_aviso as Descricao,
		ic_aviso_lido as Lido,
        'instituicao' as tipo
		from Aviso a 
        join Tipo_Assunto ta on(ta.cd_tipo_assunto = a.cd_tipo_assunto)
		join instituicao e on (a.nm_email_instituicao = e.nm_email_instituicao)
        
        union
        
        select p.cd_professor,
        (select PrimeiroeUltimoNome(p.nm_professor)),
        (select ConverterDataParaExt(s.dt_solicitacao)),
        dt_solicitacao,
        (select DiaPtBr(s.dt_solicitacao)),
        ts.nm_Tipo_Solicitacao,
        null,
        s.ic_lido,
        'professor'
        from solicitacao s
        join professor p on (p.cd_professor = s.cd_professor)
        join tipo_solicitacao ts on(s.cd_tipo_solicitacao = ts.cd_tipo_solicitacao)
        
        where nm_email_atribuidor = pEmail order by DataHorario and Lido limit pInicioIntervalo,pFimIntervalo;
	end$$
    
    drop procedure if exists buscarNotificacoesInstituicao$$
	create procedure buscarNotificacoesInstituicao(pEmail varchar(200),pInicioIntervalo int,pFimIntervalo int)
	begin
        select 
        a.nm_email_atribuidor as EmailAtribuidor,
        e.nm_email_instituicao as Identificacao,
		e.nm_instituicao as Nome,
		(select ConverterDataParaExt(dt_aviso)) as DataConvertida,
		dt_aviso as DataHorario,
		(select DiaPtBr(a.dt_aviso)) as DiaDaSemana,
		a.nm_assunto_aviso as assunto,
		ds_aviso as Descricao,
		ic_aviso_lido as Lido,
        'instituicao' as tipo
		from Aviso a 
		join instituicao e on (a.nm_email_instituicao = e.nm_email_instituicao)
        
        where e.nm_email_instituicao = pEmail order by DataHorario and Lido limit pInicioIntervalo,pFimIntervalo;
	end$$
    
    drop procedure if exists MarcarAvisoComoLido$$
	create procedure MarcarAvisoComoLido(pDataEnvio Datetime,pRemetente varchar(200),pEmailAtribuidor varchar(200),pTipo varchar(200))
	begin
		if (pTipo = 'professor') then
			update solicitacao set ic_lido = 1 where dt_solicitacao = pDataEnvio and cd_professor = pRemetente and nm_email_atribuidor = pEmailAtribuidor;
		end if;
		
		if (pTipo = 'instituicao') then
			update aviso set ic_aviso_lido = 1 where dt_aviso = pDataEnvio and nm_email_instituicao = pRemetente and nm_email_atribuidor = pEmailAtribuidor;
		end if;
			
		
	end$$

	Drop Procedure if exists buscarinstituicaoPorEmail$$
	Create Procedure buscarinstituicaoPorEmail(pEmail Varchar(200))
	begin
		select * from instituicao where nm_email_instituicao = pEmail;
	end$$
	
	Drop Procedure if exists buscarinstituicaos$$
	Create Procedure buscarinstituicaos()
	BEGIN
		select * from instituicao;
	end$$

	Drop Procedure if exists buscarTurmas$$
	Create Procedure buscarTurmas()
	BEGIN
		select * from Turma;
	end$$

	Drop Procedure if exists buscarProfessores$$
	Create Procedure buscarProfessores()
	BEGIN
		select * from Professor;
	end$$

	Drop Procedure if exists buscarSupervisores$$
	Create Procedure buscarSupervisores()
	BEGIN
		select * from supervisor;
	end$$

	Drop Procedure if exists BuscarDiretores$$
	Create Procedure BuscarDiretores()
	BEGIN
		select * from Diretor;
	end$$

	Drop Procedure if exists BuscarProfessorPorCodigo$$
	Create Procedure BuscarProfessorPorCodigo(pCodigo varchar(200))
	BEGIN
		select * from professor where cd_professor = pCodigo;
	end$$

	Drop Procedure if exists AdicionarSupervisor$$
	Create Procedure AdicionarSupervisor(pEmail varchar(200), pDisciplina varchar(20), pTipoEnsino varchar(20), pCodigo varchar(200))
	begin
		insert into Supervisor values('erica.campos@gmail.com',pCodigo,pDisciplina,pTipoEnsino,pEmail,'SenhaPadrao123',null);
	end$$	

	Drop Procedure if exists AdicionarTurma$$
	Create Procedure AdicionarTurma(pEmail varchar(200), pNome varchar(200), pTipoEnsino varchar(20), pSigla varchar(200),pPeriodo varchar(200))
	begin
		insert into Turma values(pNome,pSigla,pEmail,pTipoEnsino,pPeriodo);
	end$$
	
	Drop Procedure if exists AdicionarDiretor$$
	Create Procedure AdicionarDiretor(pEmail varchar(200), pCodigo varchar(200), pDataInicio DateTime, pDataFim DateTime)
	begin
		insert into Diretor values(pEmail,pCodigo,pDataInicio,pDataFim);
	end$$
	
	Drop Procedure if exists EditarProfessor$$
	Create Procedure EditarProfessor(pCodigo int,pEmail varchar(200),pNome varchar(200),pFilhos int,pDataNascimento date,
	pDataEntrada date,pPontuacao decimal(10,2),pTelefone varchar(15),pTipo int, pSigla varchar(10),pTipoEnsino int)
	begin	
		
		update professor set
		nm_email_professor = pEmail,
		nm_professor = pNome,
		qt_filhos = pFilhos,
		dt_nascimento_professor = pDataNascimento,
		dt_entrada_prefeitura = pDataEntrada,
		qt_pontuacao = pPontuacao,
		cd_numero_professor = pTelefone,
		cd_tipo_professor = pTipo,
		cd_tipo_ensino = pTipoEnsino,
		sg_disciplina = pSigla
		where
			cd_professor = pCodigo;
	end$$

	Drop Procedure if exists BuscarTurmasAtribuidasProfessorInstituicao$$
	Create Procedure BuscarTurmasAtribuidasProfessorInstituicao(pCodigo int, pAnoAtribuicao int, pEmailInstituicao varchar(200))
	begin
		Select distinct(t.sg_turma), tp.nm_tipo_periodo, d.nm_disciplina, i.nm_instituicao,
		case 
			when (atr.ic_aula_substituicao = true) 
			then 'Substitutiva'
			else 'Livre'
		end 
		from atribuicao atr
		join turma t on (atr.sg_turma = t.sg_turma and t.nm_email_instituicao = atr.nm_email_instituicao)
		join tipo_periodo tp on (t.cd_tipo_periodo = tp.cd_tipo_periodo)
		join disciplina d on (atr.sg_disciplina = d.sg_disciplina)
		join instituicao i on(atr.nm_email_instituicao = i.nm_email_instituicao)
		where atr.cd_professor = pCodigo
		and (pEmailInstituicao is null or atr.nm_email_instituicao = pEmailInstituicao) and (pAnoAtribuicao is null or year(dt_atribuicao) = pAnoAtribuicao);
	end$$

	Drop Procedure if exists BuscarTurmasAtribuidasProfessor$$
	Create Procedure BuscarTurmasAtribuidasProfessor(pCodigo int, pAnoAtribuicao int, pInstituicao varchar(200))
	begin
		declare emailInstituicao varchar(200) default null;

		if (pInstituicao is not null) then
			select nm_email_instituicao into emailInstituicao from instituicao where nm_instituicao = pInstituicao;
		end if;

		Select distinct(t.sg_turma), te.nm_tipo_ensino, tp.nm_tipo_periodo, d.nm_disciplina, i.nm_instituicao
		from atribuicao atr
		join turma t on (atr.sg_turma = t.sg_turma and t.nm_email_instituicao = atr.nm_email_instituicao)
		join tipo_periodo tp on (t.cd_tipo_periodo = tp.cd_tipo_periodo)
		join tipo_ensino te on (t.cd_tipo_ensino = te.cd_tipo_ensino)
		join disciplina d on (atr.sg_disciplina = d.sg_disciplina)
		join instituicao i on (atr.nm_email_instituicao = i.nm_email_instituicao)
		where atr.cd_professor = pCodigo
		and (pAnoAtribuicao is null or year(dt_atribuicao) = pAnoAtribuicao)
		and (emailInstituicao is null or year(dt_atribuicao) = emailInstituicao);
	end$$	

	Drop Procedure if exists verificarQuantoTempoFalta$$
	Create Procedure verificarQuantoTempoFalta(pCodigo int)
	begin
		declare tempoRegistrado datetime default null;
		
		select dt_envio into tempoRegistrado from chamada_instituicao where cd_professor = pCodigo and year(dt_envio) = year(now()) 
		order by dt_envio limit 1;

		if (tempoRegistrado is not null) then
			select timediff(now(),tempoRegistrado);
		end if;
	end$$	

	Drop Procedure if exists BuscarAulasNaoAtribuidas$$
	Create Procedure BuscarAulasNaoAtribuidas(pEmail varchar(200),pAnoAtribuicao int,pTipo varchar(100),pDisciplina varchar(20),pEmailInstituicao varchar(200))
	begin
		declare siglaDisciplina varchar(100) default null;
		declare tipoEnsino varchar(100) default null;

		if (pTipo is not null) then
			select cd_tipo_ensino into tipoEnsino from tipo_ensino where nm_tipo_ensino = pTipo;
		end if;

		if (pDisciplina is not null) then
			select sg_disciplina into siglaDisciplina from disciplina where nm_disciplina = pDisciplina  and cd_tipo_ensino = tipoEnsino;
		end if;

		Select distinct a.sg_turma,te.nm_tipo_ensino, tp.nm_tipo_periodo, d.nm_disciplina, i.nm_email_instituicao
		from aula a
		join turma tu on (a.sg_turma = tu.sg_turma and a.nm_email_instituicao = tu.nm_email_instituicao)
		join tipo_periodo tp on (tu.cd_tipo_periodo = tp.cd_tipo_periodo)
		join disciplina d on (a.sg_disciplina = d.sg_disciplina)
		join instituicao i on (a.nm_email_instituicao = i.nm_email_instituicao)
		join Tipo_Ensino te on (a.cd_tipo_ensino = te.cd_tipo_ensino)
		where not exists(
			Select * from atribuicao atr 
			where (atr.sg_disciplina = siglaDisciplina or siglaDisciplina is null) 
			and atr.sg_turma = a.sg_turma 
			and (atr.nm_email_instituicao = pEmailInstituicao or pEmailInstituicao is null) 
			and (atr.cd_tipo_ensino = tipoEnsino or tipoEnsino is null)
			and year(atr.dt_atribuicao) = pAnoAtribuicao
			and atr.nm_email_atribuidor = pEmail
		) 
		and (a.cd_tipo_ensino = tipoEnsino or tipoEnsino is null) 
		and (a.sg_disciplina = siglaDisciplina or siglaDisciplina is null) 
		and (a.nm_email_instituicao = pEmailInstituicao or pEmailInstituicao is null)
		order by i.nm_email_instituicao;
	end$$

	Drop Procedure if exists buscarDisciplinaSupervisor$$
	Create Procedure buscarDisciplinaSupervisor(pCodigo int)
	begin
		declare supervisor varchar(100) default null;

		select nm_email_professor into supervisor 
		from professor p
		join supervisor s on (s.cd_professor = p.cd_professor)
		where s.cd_professor = pCodigo;

		if (supervisor is not null) then
			select nm_disciplina 
			from disciplina d
			join supervisor s on (d.sg_disciplina = s.sg_disciplina)
			where s.cd_professor = pCodigo;
		else 
			signal sqlstate '45000' set message_text = 'Este professor não é um supervisor!';
		end if;
	end$$

	Drop Procedure if exists buscarQuantidadeProfessores$$
	Create Procedure buscarQuantidadeProfessores()
	begin
		select
			count(case when ic_ativo = 1 and cd_tipo_professor = 1 then 1 end) as Ativos,
			count(case when ic_ativo = 1 and cd_tipo_professor = 2 then 1 end) as Substitutos,
			count(case when ic_ativo = 0 then 1 end) as Afastados
		from professor;
	end$$

	Drop Procedure if exists buscarQuantidadeProfessoresInstituicao$$
	Create Procedure buscarQuantidadeProfessoresInstituicao(pInstituicao varchar(200))
	begin
		select
			count(case when ic_ativo = 1 and cd_tipo_professor = 1 then 1 end) as Ativos,
			count(case when ic_ativo = 1 and cd_tipo_professor = 2 then 1 end) as Substitutos,
			count(case when ic_ativo = 0 then 1 end) as Afastados
		from professor p 
		join instituicao_Professor ip on (p.cd_professor = ip.cd_professor)
		where ip.nm_email_instituicao = pInstituicao;
	end$$

	#Sistema notifica a instituicao
	Drop Procedure if exists SistemaNotificarInstituicao$$
	Create Procedure SistemaNotificarInstituicao(pInstituicao varchar(200), pMensagem varchar(200))
	begin
		insert into NotificacaoInstituicaoSistema values (pInstituicao, now(),pMensagem,0);
	end$$

	#Sistema notifica o professor
	Drop Procedure if exists SistemaNotificarProfessor$$
	Create Procedure SistemaNotificarProfessor(pProfessor int, pMensagem varchar(200))
	begin
		insert into NotificacaoProfessorSistema values (pProfessor, now(),pMensagem,0);
	end$$

	Drop Procedure if exists SistemaNotificarSupervisor$$
	Create Procedure SistemaNotificarSupervisor(pProfessor int, pMensagem varchar(200))
	begin
		insert into NotificacaoSupervisorSistema values (pProfessor, now(),pMensagem,0);
	end$$

	drop procedure if exists buscarNotificacoesInstituicao$$
	create procedure buscarNotificacoesInstituicao(pInstituicao varchar(200),pInicioIntervalo int,pFimIntervalo int)
	begin
        select
		(select ConverterDataParaExt(NIS.dt_notificacao)) as DataConvertida,
		NIS.dt_notificacao as DataHorario,
		(select DiaPtBr(NIS.dt_notificacao)) as DiaDaSemana,
		ds_Notificacao as Descricao,
		ic_lido as Lido
		from NotificacaoInstituicaoSistema NIS        

        where NIS.nm_email_instituicao = pInstituicao order by DataHorario and Lido limit pInicioIntervalo,pFimIntervalo;
	end$$

	drop procedure if exists buscarNotificacoesProfessor$$
	create procedure buscarNotificacoesProfessor(pProfessor int,pInicioIntervalo int,pFimIntervalo int)
	begin
        select
		(select ConverterDataParaExt(NPS.dt_notificacao)) as DataConvertida,
		NPS.dt_notificacao as DataHorario,
		(select DiaPtBr(NPS.dt_notificacao)) as DiaDaSemana,
		ds_Notificacao as Descricao,
		ic_lido as Lido
		from NotificacaoProfessorSistema NPS   
        where NPS.cd_professor = pProfessor order by DataHorario and Lido limit pInicioIntervalo,pFimIntervalo;
	end$$

	drop procedure if exists buscarNotificacoesSupervisor$$
	create procedure buscarNotificacoesSupervisor(pProfessor int,pInicioIntervalo int,pFimIntervalo int)
	begin
        select
		(select ConverterDataParaExt(dt_notificacao)) as DataConvertida,
		dt_notificacao as DataHorario,
		(select DiaPtBr(dt_notificacao)) as DiaDaSemana,
		ds_Notificacao as Descricao,
		ic_lido as Lido
		from NotificacaoSupervisorSistema NSS   
        where cd_professor = pProfessor order by DataHorario and Lido limit pInicioIntervalo,pFimIntervalo;
	end$$

	#Marca Notificacoes do sistema com
	Drop Procedure if exists MarcarComoLidoNotificacaoSistema$$
	Create Procedure MarcarComoLidoNotificacaoSistema(pDataEnvio Datetime,pRemetente varchar(200),pTipo varchar(200))
	begin
		if (pTipo = 'professor') then
			update NotificacaoProfessorSistema set ic_lido = 1 where dt_Notificacao = pDataEnvio and cd_professor = pRemetente;
		end if;
		
		if (pTipo = 'instituicao') then
			update NotificacaoInstituicaoSistema set ic_lido = 1 where dt_Notificacao = pDataEnvio and nm_email_instituicao = pRemetente;
		end if;

	end$$

	Drop Procedure if exists buscarDadosAulasRelatorio$$
	Create procedure buscarDadosAulasRelatorio(pAno year)
	begin
		select 
			(select count(*) from aula), 
			(select count(*) from aula a
			 where not exists (
				select * from atribuicao atr 
				where atr.sg_turma = a.sg_turma
				and atr.sg_disciplina = a.sg_disciplina
				and atr.nm_email_instituicao = a.nm_email_instituicao
				and atr.cd_tipo_ensino = a.cd_tipo_ensino
				and year(dt_atribuicao) = pAno)),
			(select CalcularPorcentagem(
						(select count(*) from aula),
						(select count(*) from aula a
						 where not exists (
							select * from atribuicao atr 
							where atr.sg_turma = a.sg_turma
							and atr.sg_disciplina = a.sg_disciplina
							and atr.nm_email_instituicao = a.nm_email_instituicao
							and atr.cd_tipo_ensino = a.cd_tipo_ensino
							and year(dt_atribuicao) = pAno))));
	end$$

	call buscarDadosAulasRelatorio(2024)$$

	Drop Procedure if exists buscarDadosTurmasAnexos$$
	Create procedure buscarDadosTurmasAnexos(pAno year, pCodigo int)
	begin
		select nm_instituicao,
			   nm_disciplina,
			   sum(case when nm_tipo_periodo = 'Manhã' then 1 else 0 end) as manha,
			   sum(case when nm_tipo_periodo = 'Integral' then 1 else 0 end) as integral,
			   sum(case when nm_tipo_periodo = 'Tarde' then 1 else 0 end) as tarde,
			   sum(case when nm_tipo_periodo = 'Vespertino' then 1 else 0 end) as vespertino,
			   sum(case when nm_tipo_periodo = 'Noite' then 1 else 0 end) as noite,
			   GROUP_CONCAT(DISTINCT sg_turma ORDER BY sg_turma ASC SEPARATOR ', ') AS turmas,
			   ic_ciencia_diretor,
			   ic_ciencia_professor
		from (
			select i.nm_instituicao, 
				   d.nm_disciplina, 
				   atr.sg_turma,
				   tp.nm_tipo_periodo,
				   atr.ic_ciencia_diretor,
				   atr.ic_ciencia_professor
			from atribuicao atr
			join instituicao i on atr.nm_email_instituicao = i.nm_email_instituicao
			join disciplina d on atr.sg_disciplina = d.sg_disciplina
			join turma t on atr.sg_turma = t.sg_turma
			join tipo_periodo tp on t.cd_tipo_periodo = tp.cd_tipo_periodo
			where atr.cd_professor = pCodigo
			  and year(atr.dt_atribuicao) = pAno
			group by i.nm_instituicao, d.nm_disciplina, atr.sg_turma
		) as subquery;
	end$$
	
	call buscarDadosTurmasAnexos(2024, 6691)$$

	Drop Procedure if exists buscarDadosAtasPEBI$$
	Create Procedure buscarDadosAtasPEBI(pFiltroTipo varchar(100), pFiltroDisciplina Varchar(200), pFiltroInstituicao varchar(200), pAno int)
	begin 
		declare siglaDisciplina varchar(100) default null;
		declare tipoEnsino varchar(100) default null;
		declare nomeInstituicao varchar(200) default null;
		
		if (pFiltroTipo is not null) then
			select cd_tipo_ensino into tipoEnsino from tipo_ensino where nm_tipo_ensino = pFiltroTipo;
		end if;

		if (pFiltroDisciplina is not null) then
			select distinct(sg_disciplina) into siglaDisciplina from disciplina where nm_disciplina = pFiltroDisciplina;
		end if;
		
		select nm_email_instituicao into nomeInstituicao from instituicao where nm_email_instituicao = pFiltroInstituicao;
		
		if (nomeInstituicao is null) then
			signal sqlstate '45000' set message_text = 'A instituição desejada não existe!';
		else 
			set @contador = 0;
			
			select Concat((@contador := @contador + 1),'°') as Ordem,
			nm_professor,
			cd_professor,
			sg_turma,
			nm_tipo_periodo, 
			SituacaoAula,
			SituacaoProfessor,
			dt_atribuicao,
			ic_ciencia_diretor,
			ic_ciencia_professor
			from (
				select distinct p.nm_professor,
				p.cd_professor,
				atr.sg_turma,
				tp.nm_tipo_periodo,
                p.qt_pontuacao,
				atr.ic_ciencia_diretor,
				atr.ic_ciencia_professor,
				case
					when (atr.ic_aula_substituicao = true) 
					then 'Substitutiva'
					else 'Livre'
				end as SituacaoAula,
				case 
					when (p.ic_ativo = true) 
					then 'Ativo'
					else 'Afastado'
				end as SituacaoProfessor,
				atr.dt_atribuicao
				from atribuicao atr 
				join professor p on (p.cd_professor = atr.cd_professor)
				join instituicao_professor ip on (p.cd_professor = ip.cd_professor)
				join instituicao i on (i.nm_email_instituicao = ip.nm_email_instituicao)
				join turma tu on (i.nm_email_instituicao = tu.nm_email_instituicao and tipoEnsino = tu.cd_tipo_ensino)
				join tipo_periodo tp on (tu.cd_tipo_periodo = tp.cd_tipo_periodo)
				where (ip.nm_email_instituicao = pFiltroInstituicao)
				and (siglaDisciplina is null or p.sg_disciplina = siglaDisciplina)
				and (tipoEnsino is null or p.cd_tipo_ensino = tipoEnsino)
				and (year(atr.dt_atribuicao) = pAno) 
				order by p.qt_pontuacao desc
			) as subquery;
			
		end if;
	end$$

	Drop Procedure if exists buscarDadosProfessoresAtasPEBIII$$
	Create Procedure buscarDadosProfessoresAtasPEBIII(pFiltroTipo varchar(100), pFiltroDisciplina Varchar(200), pFiltroInstituicao varchar(200), pAno int)
	begin 
		declare siglaDisciplina varchar(100) default null;
		declare tipoEnsino varchar(100) default null;
		declare nomeInstituicao varchar(200) default null;
		
		if (pFiltroTipo is not null) then
			select cd_tipo_ensino into tipoEnsino from tipo_ensino where nm_tipo_ensino = pFiltroTipo;
		end if;

		if (pFiltroDisciplina is not null) then
			select distinct(sg_disciplina) into siglaDisciplina from disciplina where nm_disciplina = pFiltroDisciplina;
		end if;
		
		select nm_email_instituicao into nomeInstituicao from instituicao where nm_email_instituicao = pFiltroInstituicao;
		
		if (nomeInstituicao is null) then
			signal sqlstate '45000' set message_text = 'A instituição desejada não existe!';
		else 
			set @contador = 0;
			
			select Concat((@contador := @contador + 1),'°') as Ordem,
			nm_professor,
			cd_professor,
			qt_hta,
			SituacaoProfessor,
			dt_atribuicao,
			ic_ciencia_professor
			from (
				select distinct p.nm_professor,
				p.cd_professor,
				je.qt_hta,
                p.qt_pontuacao,
				case 
					when (p.ic_ativo = true) 
					then 'Ativo'
					else 'Afastado'
				end as SituacaoProfessor,
				atr.dt_atribuicao,
				atr.ic_ciencia_professor
				from atribuicao atr 
				join professor p on (p.cd_professor = atr.cd_professor)
				join jornada_escolhida je on (p.cd_professor = je.cd_professor and aa_jornada = pAno)
				join instituicao_professor ip on (p.cd_professor = ip.cd_professor)
				where (ip.nm_email_instituicao = pFiltroInstituicao)
				and (siglaDisciplina is null or p.sg_disciplina = siglaDisciplina)
				and (tipoEnsino is null or p.cd_tipo_ensino = tipoEnsino)
				and (year(atr.dt_atribuicao) = pAno) 
				order by p.qt_pontuacao desc
			) as subquery;
			
		end if;
	end$$

	call buscarDadosProfessoresAtasPEBIII('PEB III','História', 'ary.souza@gmail.com', 2024)$$

	drop procedure if exists VerificarSeTemQueAtribuirTudo$$
	create procedure VerificarSeTemQueAtribuirTudo(pProfessor int, pInstituicao varchar(200))
	begin
		
		Declare qtTurmasJornadaProfessor int default 0;
		Declare qtTotal int default 0;
		Declare qtAtribuidas int default 0;
		Declare qtFaltam int default 0;

		declare disciplinaProfessor varchar(15) default null;

		select sg_disciplina into disciplinaProfessor from professor where cd_professor = pProfessor;

		Select (je.qt_HTA / d.cd_multiplicador) into qtTurmasJornadaProfessor from jornada_escolhida je join disciplina d on(d.sg_disciplina = je.sg_disciplina) where cd_professor = pProfessor and aa_jornada = year(now());

		select count(distinct a.sg_turma) into qtTotal from aula a where a.sg_turma and a.sg_disciplina = disciplinaProfessor and a.nm_email_instituicao = pInstituicao;
		select count(distinct atr.sg_turma) into qtAtribuidas from atribuicao atr where atr.sg_disciplina = disciplinaProfessor and atr.nm_email_instituicao = pInstituicao;
		select qtAtribuidas - qtTotal into qtFaltam;

		if ((Select count(*) from instituicao_professor where cd_professor = pProfessor) = 1) then
			Select true;
		else
			if (qtTurmasJornadaProfessor > qtFaltam) then
				select false;
			else 
				if exists (Select * from atribuicao where cd_professor = pProfessor and now() between dt_inicio_fase and dt_fim_fase) then
					Select true;
				else 
					Select false;
				end if;
			end if;
			
		end if;		
	end$$

DELIMITER ;

call VerificarSeTemQueAtribuirTudo(6119, 'ary.souza@gmail.com');

call buscarDadosProfessoresAtasPEBIII('PEB III', 'História', 'ary.souza@gmail.com', 2019);
