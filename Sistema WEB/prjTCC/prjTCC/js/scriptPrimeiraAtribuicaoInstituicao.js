 let popup = document.querySelector('.areaPopUp');

const nome = document.querySelector('#areaAtribuirProfessor h1');
const email = document.querySelector('#areaAtribuirProfessor h2');
const codigo = document.querySelector('#areaAtribuirProfessor h3');
const cargaHoraria = document.querySelector('#areaAtribuirProfessor p');
const situacaoAula = document.querySelector('#situacaoAula');
const nomeInstituicao = document.querySelector('#nomeInstituicao');
const nomeDisciplina = document.querySelector('#nomeDisciplina');
const periodo = document.querySelector('#periodo');
const siglaTurma = document.querySelector('#siglaTurma');

const pnlIniciais = document.querySelector('.pnlIniciais');
const pnlImgPerfil = document.querySelector('.pnlImgPerfil');
const txtIniciais = document.querySelector('.txtIniciais');
const imagemPerfil = document.querySelector('.imagemPerfil');

const tabelaTurmas = document.querySelector('#tabelaTurmas');

const tituloH3 = document.querySelector('#tituloH3');
const botaoChamar = document.querySelector('.botaoChamar');

let linhaTurma;
let foi = false;
let podeChamar = false;

if (botaoChamar) {
    botaoChamar.addEventListener('click', function () {
        console.log("oi");
    })

    async function verificarAtribuicao() {

        if (botaoChamar.value == "Aguardar") {
            console.log("espera");
            if (popup.classList.contains('escondido')) {
                if (podeChamar === false) {
                    const formdata = new FormData;

                    fetch('../lib/verificarSePodeAtribuirPEBIII.aspx', {
                        method: 'post',
                        body: formdata
                    })
                        .then(function (response) {
                            return response.json();
                        })
                        .then(function (data) {

                            if (data['situacao'] == 'true') {
                                botaoChamar.value = "Chamar próximo";
                                tituloH3.textContent = "Chamar próximo professor";
                                botaoChamar.disabled = false;
                                podeChamar = true;
                            }
                            else {
                                botaoChamar.value = "Aguardar";
                                tituloH3.textContent = "Aguarde o professor atribuir em outra instituição";
                                botaoChamar.disabled = true;
                                podeChamar = false;
                            }
                        })
                        .catch(function (error) {
                            console.error('erro ao buscar os dados:', error);
                        });
                }
            }
        }

        if (botaoChamar.value == "Aguardando") {
            if (popup.classList.contains('escondido')) {
                if (foi == false) {
                    const formdata = new FormData;

                    fetch('../lib/verificarAtribuicaoProfessorInstituicao.aspx', {
                        method: 'post',
                        body: formdata
                    })
                        .then(function (response) {
                            return response.json();
                        })
                        .then(function (data) {

                            if (data['professor']) {
                                body.classList.add("semScroll");
                                telaBloqueioResposta.classList.remove('escondido');

                                if (data['usuario'].ImgPerfil != null) {
                                    pnlImgPerfil.classList.remove("escondido");
                                    pnlIniciais.classList.add("escondido");
                                    imagemPerfil.innerHTML = "<asp:Image ID='imgPerfilHeader' runat='server' />";
                                }
                                else {
                                    let nome = data['professor'].Nome;
                                    let separacoes = nome.split(' ');
                                    let iniciais = separacoes[0].substring(0, 1) + separacoes[separacoes.length - 1].substring(0, 1);

                                    pnlImgPerfil.classList.add("escondido");
                                    pnlIniciais.classList.remove("escondido");

                                    console.log(iniciais);
                                    txtIniciais.innerText = iniciais;
                                }

                                console.log(data['atribuicao'].length);
                                console.log(data['atribuicao']);
                                popup.classList.remove('escondido');
                                nome.innerHTML = data['professor'].Nome;
                                email.innerHTML = data['professor'].Email;
                                codigo.innerHTML = 'Prontuário: ' + data['professor'].Codigo;
                                cargaHoraria.innerHTML = 'Carga horária: ' + data['jornada'].CargaHoraria.HTA + 'h';

                                console.log(tabelaTurmas.querySelectorAll('tr').length);
                                tabelaTurmas.innerHTML = "";
                                for (var i = 0; i < data['atribuicao'].length; i++) {
                                    tabelaTurmas.innerHTML += `<tr>
                                                <td class='Centro' id="siglaTurma">${data['atribuicao'][i][0]}</td>
                                                <td class='Centro' id="periodo">${data['atribuicao'][i][1]}</td>
                                                <td id="nomeDisciplina">${data['atribuicao'][i][2]}</td>
                                                <td id="nomeInstituicao">${data['atribuicao'][i][3]}</td>
                                                <td id="situacaoAula">${data['atribuicao'][i][4]}</td>
                                            </tr>`;
                                }
                                foi = true;
                            }
                        })
                        .catch(function (error) {
                            console.error('erro ao buscar os dados:', error);
                        });
                }
            }
        }
    }
    setInterval(verificarAtribuicao, 2500);

}


