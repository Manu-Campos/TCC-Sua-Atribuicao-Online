const btnExportar = document.querySelector(".btnExportar");
const btnVisualizar = document.querySelector(".btnVisualizar");
const txtAviso = document.querySelector(".pAviso");

console.log(btnVisualizar);

if (btnExportar) {
    btnExportar.addEventListener('click', function (e) {
        e.preventDefault();

        const formdata = new FormData;

        let i = 0;
        checkbox.forEach((item, a) => {
            if (item.checked) {
                formdata.append(`anos[${i}]`, linhaTabela[a].cells[2].innerText);
                i++;
            }
        });

        txtAviso.classList.remove("erro");
        txtAviso.classList.add("sucesso");
        txtAviso.innerText = "Aguarde o carregamento completo...";

        if (Array.from(formdata.entries()).length === 0) {
            txtAviso.classList.add("erro");
            txtAviso.classList.remove("sucesso");
            txtAviso.innerText = "Selecione ao menos um arquivo!"
        }
        else {
            fetch('../lib/exportarAnexos.aspx', {
                method: 'post',
                body: formdata
            })
                .then(response => {
                    const contentType = response.headers.get("content-type");

                    if (contentType && contentType.includes("application/json")) {
                        return response.json().then(data => ({ isJson: true, data }));

                    } else if (contentType && contentType.includes("application/zip")) {
                        return response.blob().then(blob => ({ isJson: false, isZip: true, blob }));

                    } else {
                        return response.blob().then(blob => ({ isJson: false, isZip: false, blob }));
                    }
                })
                .then(result => {
                    if (result.isJson && result.data.situacao === 'false') {
                        txtAviso.classList.add("erro");
                        txtAviso.classList.remove("sucesso");
                        txtAviso.innerText = "Não foi possível exportar o arquivo!"
                    } else {
                        txtAviso.innerText = ""
                        const url = URL.createObjectURL(result.blob);
                        if (result.isZip) {
                            const a = document.createElement('a');
                            a.href = url;
                            a.download = "anexos.zip";
                            document.body.appendChild(a);
                            a.click();
                            document.body.removeChild(a);
                        } else {

                            txtAviso.innerText = "";
                            window.open(url);
                        }
                    }
                })
                .catch(function (error) {
                    console.error('erro ao exportar o pdf:', error);
                });
        }
    })
}

if (btnVisualizar) {
    btnVisualizar.addEventListener('click', function (e) {
        e.preventDefault();

        const anoAtual = new Date().getFullYear();
        console.log("oi");

        const formdata = new FormData;

        formdata.append(`anos[${0}]`, anoAtual);

        fetch('../lib/exportarAnexos.aspx', {
            method: 'post',
            body: formdata
        })
            .then(response => {
                const contentType = response.headers.get("content-type");

                if (contentType && contentType.includes("application/json")) {
                    return response.json().then(data => ({ isJson: true, data }));

                } else {
                    return response.blob().then(blob => ({ isJson: false, blob }));
                }
            })
            .then(result => {
                const areaConfirmacaoTurmas = document.querySelector('.popUpProfessor');
                const txtH2 = document.querySelector('.popUpProfessor h2');

                const telaBloqueioResposta = document.querySelector('.bloqueioResposta');
                const areaVisualizarAnexo = document.querySelector('#visualizarAnexo');

                if (result.isJson && result.data.situacao === 'false') {

                    areaVisualizarAnexo.classList.add('escondido');
                    areaConfirmacaoTurmas.classList.remove('escondido');
                    body.classList.add("semScroll");

                    txtH2.innerText = "Não foi possível visualizar o anexo!";

                    setTimeout(function () {
                        location.reload(true);
                    }, 5000);
                } else {
                    const url = URL.createObjectURL(result.blob);
                    window.open(url);
                    location.reload(true);

                    areaVisualizarAnexo.classList.add('escondido');
                    areaConfirmacaoTurmas.classList.add('escondido');
                    telaBloqueioResposta.classList.add('escondido');
                    body.classList.remove("semScroll");
                }
            })
            .catch(function (error) {
                console.error('erro ao exportar o pdf:', error);
            });
    })
}