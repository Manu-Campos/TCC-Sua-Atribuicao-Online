const telaBloqueioPrimeiraAtribuicao = document.querySelector(".bloqueioResposta");

telaBloqueioPrimeiraAtribuicao.style.backgroundColor = "#FA9F42";

/* Menu - Submenus */
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
/*
selecao.addEventListener('click', function () {

    if (atribuicao.classList.contains('escondido')) {
        atribuicao.classList.remove('escondido');

        imgSeta.classList.add('setaCimaMenu');
        imgSeta.classList.remove('setaBaixoMenu');
    }
    else {
        atribuicao.classList.add('escondido');

        imgSeta.classList.add('setaBaixoMenu');
        imgSeta.classList.remove('setaCimaMenu');
    }

})
*/