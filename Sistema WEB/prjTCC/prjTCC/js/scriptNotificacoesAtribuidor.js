
let QtNotificacoes = 0;
let TempoNotificacao = 7000;
let emailAtribuidor = "";
let Data = "";
let QtNotificacoesNaoLidas = 0;
let fetching = false;
let primeiraChamada = true;
const AreaNotificacoes = document.querySelector('.notificacoes');

window.onload = async function BuscarNotificacoes() {
    const formdata = new FormData;
    let ArrayNotificacoes = Array.from(document.querySelectorAll(".notificacao"));
    console.log(ArrayNotificacoes.length)

    formdata.append("i", QtNotificacoes);
    QtNotificacoes += 30;
    if (fetching == false) {
        fetching = true;
        await fetch('../lib/buscarNotificacoesAtribuidor.aspx', {
            method: 'post',
            body: formdata
        })
            .then(function (response) {
                return response.json();
            })
            .then(function (data) {
                fetching = false;
                let Mensagem = "";

                const DivNumerosNotificacoes = document.querySelector("#NumeroDeNotificacoesNaoLida");

                if (data["TemAvisos"] == 'false') {
                    if (ArrayNotificacoes.length === 0) {
                        console.log("Não tem avisos de primeira")
                        AreaNotificacoes.innerHTML = "<p class='NaoTemNotif'>Não há notificações no momento...<br>Verifique mais tarde</p>";
                        DivNumerosNotificacoes.classList.add("escondido");
                    }
                    return;
                }
                else {
                    emailAtribuidor = data[0]["Atribuidor"].Email;
                    emailInstituicao = data[0]["Instituicao"].Email;
                    for (let i = 0; i < data.length; i++) {
                        let AvisoLido = "";

                        if (data[i]["lido"] != true) {
                            AvisoLido = "<div class='visualizacaoNotificacao'></div>";
                            QtNotificacoesNaoLidas++;
                            console.log(data[i]);
                        }

                        if (data[i]["Tipo"] == "professor") {
                            Mensagem = `${data[i]["Professor"].Nome} solicitou ${data[i].Assunto}`;
                            AreaNotificacoes.innerHTML += `
                                                <div class='notificacao' codigo='${data[i]["Professor"].Codigo}' tipo='${data[i]["Tipo"]}' lido='${data[i]["lido"]}'>
                                                    <div class='fotoUsuarioNotificacao' ></div >
                                                    <div class='conteudoNotificacao'>
                                                        <p class='textoNotificacao SemMargin'>${Mensagem}</p>
                                                        <div>
                                                            <p class='horaNotificacao SemMargin' DataAviso='${data[i].DataAviso}'>${data[i].DiaDaSemana},${data[i].DataAviso.slice(10, 16)}</p>
                                                            <p class='diaNotificacao SemMargin'> ${data[i].DataPorExtenso}</p>
                                                        </div>
                                                    </div>
                                                    ${AvisoLido}
                                                </div >`;
                        }
                        else {
                            Mensagem = `${data[i]["Instituicao"].Nome} enviou um aviso`;
                            AreaNotificacoes.innerHTML += `<div class='notificacao' email='${data[i]["Instituicao"].Email}' tipo='${data[i]["Tipo"]}' lido='${data[i]["lido"]}'>
                                                    
                                                       <div class='fotoUsuarioNotificacao'></div >
                                                    
                                                       <div class='conteudoNotificacao'>

                                                           <p class='textoNotificacao SemMargin'>${Mensagem}</p>
                                                           <p class="SemMargin textoUmaLinha" id="textoAviso">${data[i].Descricao}</p>
                                                           <div>
                                                               <p class='horaNotificacao SemMargin' DataAviso='${data[i].DataAviso}'>${data[i].DiaDaSemana},${data[i].DataAviso.slice(10, 16)}</p>
                                                               <p class='diaNotificacao SemMargin'> ${data[i].DataPorExtenso}</p>
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

                                const Tipo = item.getAttribute("tipo");
                                const formdata2 = new FormData;

                                if (Tipo == "professor") {
                                    formdata2.append("Remetente", item.getAttribute("codigo"));
                                }
                                else {
                                    formdata2.append("Remetente", item.getAttribute("email"));
                                }

                                formdata2.append("Data", item.querySelector(".horaNotificacao").getAttribute("DataAviso"));
                                formdata2.append("Tipo", Tipo);

                                fetch('../lib/MarcarNotificacaoComoLido.aspx', {
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
                        if (!areaNotificacoes.classList.contains("escondido")) {
                            DivNumerosNotificacoes.classList.add("escondido");
                            Notificacoes.forEach(function (item) {

                                if (item.getAttribute("lido") == 'false') {

                                    const Tipo = item.getAttribute("tipo");
                                    const formdata2 = new FormData;

                                    if (Tipo == "professor") {
                                        formdata2.append("Remetente", item.getAttribute("codigo"));
                                    }
                                    else {
                                        formdata2.append("Remetente", item.getAttribute("email"));
                                    }

                                    formdata2.append("Data", item.querySelector(".horaNotificacao").getAttribute("DataAviso"));
                                    formdata2.append("Tipo", Tipo);

                                    fetch('../lib/MarcarNotificacaoComoLido.aspx', {
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
                        }
                        fecharTelaBloqueio();
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


                    //console.log(Notificacoes)
                    //Notificacoes.forEach(function (item) {
                    //    item.addEventListener("click", function () {
                    //        if (item.getAttribute("lido") == 'false') {

                    //            const Tipo = item.getAttribute("tipo");
                    //            const formdata2 = new FormData;

                    //            if (Tipo == "professor") {
                    //                formdata2.append("Remetente", item.getAttribute("codigo"));
                    //            }
                    //            else {
                    //                formdata2.append("Remetente", item.getAttribute("email"));
                    //            }

                    //            formdata2.append("Data", item.querySelector(".horaNotificacao").getAttribute("DataAviso"));
                    //            formdata2.append("Tipo", Tipo);

                    //            fetch('../lib/MarcarNotificacaoComoLido.aspx', {
                    //                method: 'post',
                    //                body: formdata2
                    //            })
                    //                .then(function (response) {
                    //                    return response.json();
                    //                })
                    //                .then(function (data) {
                    //                    console.log(data["situacao"]);
                    //                    if (data["situacao"] == 'true') {
                    //                        console.log("Foi")
                    //                        item.setAttribute("lido", 'true');
                    //                        item.querySelector(".visualizacaoNotificacao").remove()
                    //                    }
                    //                    else
                    //                        console.log("Não foi")
                    //                })
                    //                .catch(function (error) {
                    //                    console.error('erro ao buscar os dados:', error);
                    //                })
                    //        }
                    //    })
                    //})
                }
            })
            .catch(function (error) {
                console.error('erro ao buscar os dados:', error);
            })
    }

    setInterval(BuscarNotificacoes, 11000);
}
