const telaBloqueio = document.querySelector('.bloqueio');

telaBloqueio.style.backgroundColor = "#031D44";
const telaBloqueioResposta = document.querySelector('.bloqueioResposta');

const botaoMenu = document.querySelector("#botaoMenu");
const menu = document.querySelector(".menu");
const body = document.querySelector("body");

const iconeNotificacao = document.querySelector('#notificacao img');
const areaNotificacoes = document.querySelector('#areaNotificacoes');
const sairAreaNotificacoes = document.querySelector('#areaNotificacoes img');

function fecharTelaBloqueio() {
    telaBloqueio.classList.add("escondido");
    
    areaNotificacoes.classList.add('escondido');
    
    menu.classList.remove("menuAberto");
    botaoMenu.classList.remove("botaoMenuAberto");
    botaoMenu.setAttribute("src","../imagens/icones/menu.png");
    body.classList.remove("semScroll");
    console.log("fechou");
}

/*telaBloqueio.addEventListener('click', fecharTelaBloqueio);*/

/* Abrir menus */
function menuMobile() {
    menu.classList.toggle("menuAberto");
    telaBloqueio.classList.toggle("escondido");
    body.classList.toggle("semScroll");

    botaoMenu.classList.toggle("botaoMenuAberto");
    if (botaoMenu.getAttribute("class","botaoMenuAberto")) {
        botaoMenu.setAttribute("src","../imagens/icones/x.png");
    }
    else {
        botaoMenu.setAttribute("src","../imagens/icones/menu.png");
    }
}
botaoMenu.addEventListener('click', menuMobile);

/* Abrir aba notificações */ 
function abaNotificacoes() {
    window.scrollTo({
        top: 0,
        behavior: 'smooth'
    });

    areaNotificacoes.classList.toggle('escondido');
    telaBloqueio.classList.toggle('escondido');
    body.classList.toggle('semScroll');
}
iconeNotificacao.addEventListener('click', abaNotificacoes);
sairAreaNotificacoes.addEventListener('click', abaNotificacoes);

/* Visualizar texto de aviso e virar a seta */
const setaAvisoNotificacao = document.querySelector('.areaAviso div label');
const textoAvisoNotificacao = document.querySelector('#textoAviso');

function AlterarTexto() {
    if (textoAvisoNotificacao.classList.contains('textoUmaLinha')) {
        textoAvisoNotificacao.classList.add('quebrandoLinha');
        textoAvisoNotificacao.classList.remove('textoUmaLinha');

        setaAvisoNotificacao.classList.remove('setaBaixo');
        setaAvisoNotificacao.classList.add('setaCima');
    }
    else {
        textoAvisoNotificacao.classList.add('textoUmaLinha');
        textoAvisoNotificacao.classList.remove('quebrandoLinha');

        setaAvisoNotificacao.classList.remove('setaCima');
        setaAvisoNotificacao.classList.add('setaBaixo');
    }
}

if (setaAvisoNotificacao) {
    setaAvisoNotificacao.addEventListener('click', AlterarTexto);
}

/* Verificar selecionado da tabela */
const checkbox = document.querySelectorAll('.checkbox');
const linhaTabela = document.querySelectorAll('#linhaTabela');

for (let i = 0; i < checkbox.length; i++) {
    
    if (checkbox) {
        checkbox[i].addEventListener('click', function(){
            linhaTabela[i].classList.toggle('linhaSelecionada');
        })
    }
}