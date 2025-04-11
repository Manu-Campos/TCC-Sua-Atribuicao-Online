const btnAtribuirProfessorSemTempo = document.querySelector("#btnAtribuirProfessorSemTempo");

if (btnAtribuirProfessorSemTempo) {

    const codigoProfessor = document.querySelector(".infoProfessorPerdeuTempo h3").textContent.split(' ')[1];

    btnAtribuirProfessorSemTempo.addEventListener('click', function (e) {
        console.log("clicou");
        e.preventDefault();

        window.scrollTo({
            top: 0,
            behavior: 'smooth'
        });

        const turmasSelecionadas = document.querySelectorAll('#turmasSelecionadas tr');

        if (turmasSelecionadas.length === 0) {
            aviso.textContent = "Selecione ao menos uma aula para atribuir!";
            return;
        }

        const formdata = new FormData;

        formdata.append("codigoProfessor", codigoProfessor);

        for (var i = 0; i < turmasSelecionadas.length; i++) {
            formdata.append(`turmas[${i}]`, turmasSelecionadas[i].cells[0].innerText);
        }

        fetch('../lib/adicionarAtribuicaoProfessorAcabouTempo.aspx', {
            method: 'post',
            body: formdata
        })
            .then(function (response) {
                return response.json();
            })
            .then(function (data) {
                console.log(data);

                if (data['erro']) {
                    aviso.textContent = data['erro'];
                }
                else {
                    const areaAtribuicaoConcluida = document.querySelector('#atribuicaoConcluida');
                    const telaBloqueioResposta = document.querySelector('.bloqueioResposta');

                    telaBloqueioResposta.classList.remove('escondido');
                    areaAtribuicaoConcluida.classList.remove('escondido');
                    body.classList.add("semScroll");

                    setTimeout(function () {
                        location.reload(true);
                    }, 3000);
                }
            })
            .catch(function (error) {
                console.error('erro ao buscar os dados:', error);
            });

    })

}