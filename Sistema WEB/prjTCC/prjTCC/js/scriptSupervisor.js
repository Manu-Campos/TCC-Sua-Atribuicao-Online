const AreaNotificacoes = document.querySelector('.notificacoes');
let QtNotificacoesNaoLidas = 0;
let fetching = false;
let primeiraChamada = true;

window.onload = async function BuscarNotificacoes() {
    const formdata = new FormData;
    let Notificacoes = Array.from(document.querySelectorAll(".notificacao"));

    formdata.append("i", Notificacoes.length);
    if (fetching == false) {
        fetching = true;
        fetch('../lib/buscarNotificacoesSupervisor.aspx', {
            method: 'post',
            body: formdata
        })
            .then(function (response) {
                return response.json();
            })
            .then(function (data) {
                let Mensagem = "";

                const DivNumerosNotificacoes = document.querySelector("#NumeroDeNotificacoesNaoLida");

                console.log(data);
                if (data["TemAvisos"] == 'false') {
                    if (primeiraChamada == true) {
                        AreaNotificacoes.innerHTML = "<p class='NaoTemNotif'>Não há notificações no momento...<br>Verifique mais tarde</p>";
                    }
                    DivNumerosNotificacoes.classList.add("escondido");
                    return;
                }
                else {
                    for (let i = 0; i < data.length; i++) {

                        console.log(data[i]);

                        let AvisoLido = "";

                        if (data[i]["lido"] != true) {
                            AvisoLido = "<div class='visualizacaoNotificacao'></div>";
                            QtNotificacoesNaoLidas++;
                            console.log(data[i]);
                        }

                        Mensagem = `${data[i].Descricao}`;

                        AreaNotificacoes.innerHTML += `<div class='notificacao' lido='${data[i]["lido"]}'>
                                                    <div class='fotoUsuarioNotificacao' ></div >
                                                    <div class='conteudoNotificacao'>
                                                        <p class='textoNotificacao SemMargin'>${Mensagem}</p>
                                                        <div>
                                                            <p class='horaNotificacao SemMargin' DataNotificacao='${data[i].DataAviso}'>${data[i].DiaDaSemana},${data[i].DataAviso.slice(10, 16)}</p>
                                                            <p class='diaNotificacao SemMargin'>${data[i].DataPorExtenso}</p>
                                                        </div>
                                                    </div>
                                                    ${AvisoLido}
                                               </div >`;
                    }
                }


                let Notificacoes = document.querySelectorAll(".notificacao");
                let BotaoFechar = document.querySelector("#chis");

                BotaoFechar.addEventListener('click', function () {
                    DivNumerosNotificacoes.classList.add("escondido");
                    Notificacoes.forEach(function (item) {

                        if (item.getAttribute("lido") == 'false') {

                            const formdata2 = new FormData;

                            formdata2.append("Data", item.querySelector(".horaNotificacao").getAttribute("DataNotificacao"));
                            formdata2.append("Tipo", "supervisor");

                            fetch('../lib/MarcarNotificacaoSistemaComoLido.aspx', {
                                method: 'post',
                                body: formdata2
                            })
                                .then(function (response) {
                                    return response.json();
                                })
                                .then(function (data) {
                                    console.log(data["situacao"]);
                                    if (data["situacao"] == 'true') {
                                        console.log("Foi")
                                        item.setAttribute("lido", 'true');
                                        //item.classList.add("lido");
                                        item.querySelector(".visualizacaoNotificacao").remove()
                                    }
                                    else
                                        console.log("Não foi")
                                })
                                .catch(function (error) {
                                    console.error('erro ao buscar os dados:', error);
                                })
                        }
                    })
                });

                telaBloqueio.addEventListener('click', function () {

                    DivNumerosNotificacoes.classList.add("escondido");
                    Notificacoes.forEach(function (item) {

                        if (item.getAttribute("lido") == 'false') {

                            const formdata2 = new FormData;

                            formdata2.append("Data", item.querySelector(".horaNotificacao").getAttribute("DataNotificacao"));
                            formdata2.append("Tipo", "supervisor");

                            fetch('../lib/MarcarNotificacaoSistemaComoLido.aspx', {
                                method: 'post',
                                body: formdata2
                            })
                                .then(function (response) {
                                    return response.json();
                                })
                                .then(function (data) {
                                    fetching = false;
                                    console.log(data["situacao"]);
                                    if (data["situacao"] == 'true') {
                                        console.log("Foi")
                                        item.setAttribute("lido", 'true');
                                        item.querySelector(".visualizacaoNotificacao").remove()
                                    }
                                    else
                                        console.log("Não foi")
                                })
                                .catch(function (error) {
                                    console.error('erro ao buscar os dados:', error);
                                })
                        }
                    })
                    fecharTelaBloqueio()
                });

                //Notificacoes.forEach(function (Notificacao) {
                //    if (Notificacao.getAttribute("lido") == "true") {
                //        Notificacao.classList.add("lido")
                //    }
                //})

                if (QtNotificacoesNaoLidas == 0)
                    DivNumerosNotificacoes.classList.add("escondido");
                else {
                    DivNumerosNotificacoes.textContent = QtNotificacoesNaoLidas;
                }

                /*
                let Notificacoes = document.querySelectorAll(".notificacao");
    
                Notificacoes.forEach(function (Notificacao) {
                    if (Notificacao.getAttribute("lido") == "true") {
                        Notificacao.classList.add("lido");
                    }
                });
    
                if (QtNotificacoesNaoLidas == 0)
                    DivNumerosNotificacoes.classList.add("escondido");
                else {
                    DivNumerosNotificacoes.textContent = QtNotificacoesNaoLidas;
                }
    
                console.log(Notificacoes);
                Notificacoes.forEach(function (item) {
                    item.addEventListener("click", function () {
                        if (item.getAttribute("lido") == 'false') {
    
                            const formdata2 = new FormData;
    
                            formdata2.append("Data", item.querySelector(".horaNotificacao").getAttribute("DataNotificacao"));
                            formdata2.append("Tipo", "professor");
    
                            fetch('../lib/MarcarNotificacaoSistemaComoLido.aspx', {
                                method: 'post',
                                body: formdata2
                            })
                                .then(function (response) {
                                    return response.json();
                                })
                                .then(function (data) {
                                    console.log(data["situacao"]);
                                    if (data["situacao"] == 'true') {
                                        console.log("Foi");
                                        item.setAttribute("lido", 'true');
                                        item.classList.add("lido");
                                    }
    
                                    else
                                        console.log("Não foi");
                                })
                                .catch(function (error) {
                                    console.error('erro ao buscar os dados:', error);
                                });
                        }
                    });
                });
                */
            })
            .catch(function (error) {
                console.error('erro ao buscar os dados:', error);
            });
    }
    setInterval(BuscarNotificacoes, 11000);
};