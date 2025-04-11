const btnConfirmar = document.querySelector(".btnConfirmar");
const aviso = document.querySelector('#aviso');

const PEBIII = document.querySelector("#areaConteudoinferior_pnlSegundaEscola");

if (btnConfirmar) {
    btnConfirmar.addEventListener('click', function (e) {
        e.preventDefault();
            
        const ddlJornada = document.querySelector(".ddlJornada");
        const jornada = ddlJornada.children[ddlJornada.selectedIndex].textContent.replace("h","");

        const ddlEscolaSede = document.querySelector(".ddlEscolaSede");
        const escolaSede = ddlEscolaSede.children[ddlEscolaSede.selectedIndex].textContent;

        const ddlSegundaEscola = document.querySelector(".ddlSegundaEscola");
        const segundaEscola = ddlSegundaEscola ? ddlSegundaEscola.children[ddlSegundaEscola.selectedIndex].textContent : null;

        const turmasSelecionadas = document.querySelectorAll('#turmasSelecionadas tr');
        const qtSelecaoTotal = document.querySelector('#qtSelecionadas').textContent.split("/")[1];

        if (ddlJornada.children[ddlJornada.selectedIndex].textContent == "Escolha a jornada") {
            aviso.textContent = 'Selecione sua jornada!';
            return;
        }

        if (ddlEscolaSede.children[ddlEscolaSede.selectedIndex].textContent == "Escolha a instituição sede") {
            aviso.textContent = 'Selecione sua instituição sede!';
            return;
        }

        if (turmasSelecionadas.length < qtSelecaoTotal) {
            aviso.textContent = 'É necessário selecionar a quantidade de turmas suficientes para completar sua jornada!';
            return;
        }

        const formdata = new FormData;

        if (PEBIII) {
            formdata.append("tipoEnsino", 2);
        }
        else {
            formdata.append("tipoEnsino", 1);
        }

        formdata.append("jornada", jornada);
        formdata.append("escolaSede", escolaSede);
        formdata.append("segundaEscola", segundaEscola);

        for (var i = 0; i < turmasSelecionadas.length; i++) {
            formdata.append(`turmas[${i}]`, turmasSelecionadas[i].cells[0].innerText);
            formdata.append(`instituicaoTurma[${i}]`, turmasSelecionadas[i].cells[2].innerText);
        }

        fetch('../lib/adicionarPreferencias.aspx', {
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
                    // Pré-Atribuição Confirmada 
                    const areaConfirmacaoAulas = document.querySelector('.areaPopUp');
                    const telaBloqueioResposta = document.querySelector('.bloqueioResposta');

                    areaConfirmacaoAulas.classList.remove('escondido');
                    telaBloqueioResposta.classList.remove('escondido');
                    body.classList.add("semScroll");

                    // Mudar de página

                    setTimeout(function () {
                        areaConfirmacaoAulas.classList.add('escondido');
                        telaBloqueioResposta.classList.add('escondido');
                        body.classList.remove("semScroll");
                        window.location.href = "primeiraAtribuicao.aspx";
                    }, 1500);

                }
            })
            .catch(function (error) {
                console.error('erro ao buscar os dados:', error);
            });

    })
  
}