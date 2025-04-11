
﻿/* Menu - Submenus */
const FiltroInstituicao = document.getElementById('FInstituicao');
const FiltroProfessor = document.getElementById('FProfessor');
const FiltroTodos = document.getElementById('FTodos');
const selecao = document.querySelectorAll('.selectMenu');
const imgSeta = document.querySelectorAll('.setaMenu');
const atribuicao = document.getElementById('atribuicao');
const andamento = document.getElementById('andamento');

for (let i = 0; i < selecao.length; i++) {
    selecao[i].addEventListener('click', function () {
        if (i == 0) {
            if (atribuicao.classList.contains('escondido')) {
                atribuicao.classList.remove('escondido');
                imgSeta[i].classList.add('setaCimaMenu');
                imgSeta[i].classList.remove('setaBaixoMenu');
            }
            else {
                atribuicao.classList.add('escondido');
                imgSeta[i].classList.add('setaBaixoMenu');
                imgSeta[i].classList.remove('setaCimaMenu');
            }
        }
        else {
            if (andamento.classList.contains('escondido')) {
                andamento.classList.remove('escondido');
                imgSeta[i].classList.add('setaCimaMenu');
                imgSeta[i].classList.remove('setaBaixoMenu');
            }
            else {
                andamento.classList.add('escondido');
                imgSeta[i].classList.add('setaBaixoMenu');
                imgSeta[i].classList.remove('setaCimaMenu');
            }
        }
    })
}
function FiltrarNotificacoes(filtro) {
    let Notificacoes = document.querySelectorAll(".notificacao");
    console.log(filtro)
    if (filtro == "todos") {
        Notificacoes.forEach(function (item) {
            console.log(item);
            item.classList.remove("escondido")
        })
    }
    else {
        Notificacoes.forEach(function (item) {
            if (item.getAttribute("tipo") != filtro) {
                item.classList.add("escondido");
                console.log(item);
            }
            else {
                item.classList.remove("escondido")
                console.log(item);
            }
        })
    }
}
