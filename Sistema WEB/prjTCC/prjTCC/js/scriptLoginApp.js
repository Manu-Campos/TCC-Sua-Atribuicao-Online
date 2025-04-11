const txtLogin = document.getElementById('txtLogin');
const txtSenha = document.getElementById('txtSenha');
const localMensagem = document.querySelector('.mensagem');
const textoMensagem = document.getElementById('mensagemTexto');

const btnEntrar = document.getElementById('btnEntrar');
if (btnEntrar)
    btnEntrar.addEventListener('click', function (e) {
        e.preventDefault();

        const formData = new FormData;
        formData.append("l", txtLogin.value);
        formData.append("s", txtSenha.value);

        fetch('lib/acessar.aspx', {
            method: 'post',
            body: formData
        })
            .then(function (response) {
                return response.json();
            })
            .then(function (data) {
                console.log(data);
                if (data['situacao'] == 'false') {
                    textoMensagem.innerHTML = "Login e/ou Senha Inválida!";
                }
                else {
                    // Mudar de página
                    window.location.href = "inicio.html";
                }
            })
            .catch(function (error) {
                console.error('Erro ao buscar os dados:', error);
            });
    });