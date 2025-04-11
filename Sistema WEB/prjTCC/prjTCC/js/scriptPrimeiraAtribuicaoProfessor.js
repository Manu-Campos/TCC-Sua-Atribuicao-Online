﻿const telaBloqueioPrimeiraAtribuicao = document.querySelector(".bloqueioResposta");

telaBloqueioPrimeiraAtribuicao.style.backgroundColor = "#FA9F42";

const btnAtribuir = document.querySelector(".btnAtribuir");
const aviso = document.querySelector('#aviso');
let btnConfirma = document.querySelector(".btnConfirma");
let qtCerta = false;

if (btnAtribuir) {
    btnAtribuir.addEventListener('click', async function (e) {
        e.preventDefault();

        window.scrollTo({
            top: 0,
            behavior: 'smooth'
        });

        const turmasSelecionadas = document.querySelectorAll('#turmasSelecionadas tr');
        const qtSelecaoTotal = document.querySelector('#qtSelecionadas').textContent.split("/")[1];

        if (turmasSelecionadas.length != qtSelecaoTotal) {
            try {
                const response = await fetch('../lib/VerificarSeAtribuiTudo.aspx', { method: 'post' });
                const data = await response.json();
                console.log(data);

                if (data['erro']) {
                    aviso.textContent = data['erro'];
                    return;
                } else if (data['situacao'] == 'true') {
                    aviso.textContent = 'É necessário selecionar a quantidade exata de turmas para completar sua jornada!';
                    return;
                } else {
                    qtCerta = true;
                }
            } catch (error) {
                console.error('erro ao buscar os dados:', error);
                return;
            }
        } else {
            aviso.textContent = '';
            qtCerta = true;
        }

        if (qtCerta === true) {
            const areaPopUp = document.querySelector('#popUpBase');
            const telaBloqueioResposta = document.querySelector('.bloqueioResposta');

            areaPopUp.classList.remove('escondido');
            telaBloqueioResposta.classList.remove('escondido');
            body.classList.add("semScroll");

            if (turmasSelecionadas.length < Number.parseInt(qtSelecaoTotal)) {
                areaPopUp.innerHTML = "<h2 class='textCiencia'> Se você não selecionar todas as aulas que pode na sede, existirá o risco de não atribuí-las por completo. Deseja continuar? </h2>" +
                    "<div>" +
                    "<input type='submit' class='btnAtribuir btnCancelar' value='Cancelar'>" +
                    "<input type='submit' class='btnAtribuir btnContinuar' value='Continuar'>" +
                    "</div>";

                const btnContinuar = document.querySelector(".btnContinuar");
                const btnCancelar = document.querySelector(".btnCancelar");

                btnContinuar.addEventListener('click', ConfirmacaoAtribuicao);

                btnCancelar.addEventListener('click', function () {
                    areaPopUp.classList.remove('escondido');
                    telaBloqueioResposta.classList.remove('escondido');
                    body.classList.add("semScroll");
                });
            } else {
                ConfirmacaoAtribuicao();
            }

            function ConfirmacaoAtribuicao() {
                areaPopUp.innerHTML = "<h2 class='textCiencia'>'Declaro que de acordo com o decreto nº 15.848, estou ciente da atribuição realizada.'</h2>" +
                    "<div>" +
                    "<input type='submit' class='btnAtribuir btnConfirma' value='Concordo'>" +
                    "</div>";

                btnConfirma = document.querySelector(".btnConfirma");
                console.log(btnConfirma);

                btnConfirma.addEventListener('click', async function (e) {
                    e.preventDefault();

                    window.scrollTo({
                        top: 0,
                        behavior: 'smooth'
                    });

                    const formdata = new FormData();

                    for (let i = 0; i < turmasSelecionadas.length; i++) {
                        formdata.append(`turmas[${i}]`, turmasSelecionadas[i].cells[0].innerText);
                        formdata.append(`instituicaoTurma[${i}]`, turmasSelecionadas[i].cells[2].innerText);
                    }

                    try {
                        const response = await fetch('../lib/adicionarAtribuicaoProfessor.aspx', {
                            method: 'post',
                            body: formdata
                        });
                        const data = await response.json();
                        console.log(data);

                        if (data['erro']) {
                            aviso.textContent = data['erro'];
                        } else {
                            //Atribuição Confirmada
                            const areaConfirmacaoTurmas = document.querySelector('.popUpProfessor');

                            const telaBloqueioResposta = document.querySelector('.bloqueioResposta');

                            areaConfirmacaoTurmas.classList.remove('escondido');
                            telaBloqueioResposta.classList.remove('escondido');
                            body.classList.add("semScroll");

                            areaConfirmacaoTurmas.innerHTML = "<h2>Aguardando a confirmação do atribuidor...</h2>";

                            // Verificar se já foi atribuída
                            let intervalId;

                            async function verificarAtribuicao() {
                                try {
                                    const response = await fetch('../lib/verificarAtribuicaoProfessor.aspx', {
                                        method: 'POST',
                                        body: formdata
                                    });
                                    const data = await response.json();

                                    console.log(data);

                                    if (data['situacao'] == 'true') {
                                        const areaVisualizarAnexo = document.querySelector('#visualizarAnexo');

                                        areaVisualizarAnexo.classList.remove('escondido');

                                        //setTimeout(function () {
                                        //    window.location.reload();
                                        //}, 5000);

                                        //clearInterval(intervalId);
                                    }
                                } catch (error) {
                                    console.error('Erro ao buscar os dados:', error);
                                }
                            }

                            intervalId = setInterval(verificarAtribuicao, 5000);
                        }
                    } catch (error) {
                        console.error('erro ao buscar os dados:', error);
                    }
                });
            }
        }
    });
}




