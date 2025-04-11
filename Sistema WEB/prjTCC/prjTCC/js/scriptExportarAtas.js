const btnExportar = document.querySelector(".btnExportar");
const txtAviso = document.querySelector(".pAviso");

console.log(txtAviso);

if (btnExportar) {
    btnExportar.addEventListener('click', function (e) {
        e.preventDefault();

        const formdata = new FormData;

        let i = 0;
        checkbox.forEach((item, a) => {
            if (item.checked) {
                formdata.append(`anos[${i}]`, linhaTabela[a].cells[2].innerText);
                formdata.append(`tipos[${i}]`, linhaTabela[a].cells[3].innerText);
                formdata.append(`disciplinas[${i}]`, linhaTabela[a].cells[4].innerText);
                formdata.append(`instituicoes[${i}]`, linhaTabela[a].cells[5].innerText);
                i++;
            }
        });

        txtAviso.classList.remove("erro");
        txtAviso.classList.add("sucesso");
        txtAviso.innerText = "Aguarde o carregamento completo...";

        if (Array.from(formdata.entries()).length === 0) {

            txtAviso.innerText = "Selecione ao menos um arquivo!"
            txtAviso.classList.add("erro");
            txtAviso.classList.remove("sucesso");
        }
        else {
            fetch('../lib/exportarAtas.aspx', {
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
                            a.download = "atas.zip";
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