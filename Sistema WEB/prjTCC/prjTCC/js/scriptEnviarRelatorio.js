const btnEnviar = document.querySelector(".btnEnviar");
const txtAviso = document.querySelector(".pAviso");

console.log(btnEnviar);

if (btnEnviar) {
    console.log("foi");
    btnEnviar.addEventListener('click', function (e) {
        e.preventDefault();

        txtAviso.classList.remove("erro");
        txtAviso.classList.add("sucesso");
        txtAviso.innerText = "Aguarde o envio do relatório completo..."

        fetch('../lib/enviarRelatorio.aspx', {
            method: 'post',
        })
            .then(function (response) {
                return response.json();
            })
            .then(function (data) {

                if (data['situacao'] == 'false') {
                    txtAviso.classList.add("erro");
                    txtAviso.classList.remove("sucesso");
                    txtAviso.innerText = "Não foi possível enviar o relatório!"
                }
                else {
                    txtAviso.classList.remove("erro");
                    txtAviso.classList.add("sucesso");
                    txtAviso.innerText = "Relatório enviado ao RH com sucesso!"
                }
            })
            .catch(function (error) {
                console.error('erro ao enviar email:', error);
            });
    })
}