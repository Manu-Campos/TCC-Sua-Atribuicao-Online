/*Tratamento de erros */

const txtLogin = document.getElementById('txtEmail');
const txtSenha = document.getElementById('txtSenha');
const botao = document.querySelector('.botaoEntrar');
const pAlertaSenha = document.querySelector('.pAlertaSenha');
const pAlertaEmail = document.querySelector('.pAlertaEmail');


function TirarErro()
{
    if (txtLogin.classList.contains('caixaErro') || txtSenha.classList.contains('caixaErro'))
    {
        txtLogin.classList.remove('caixaErro');
        txtSenha.classList.remove('caixaErro');
        pAlertaSenha.innerHTML = '';
        pAlertaEmail.innerHTML = '';

    }
}
txtLogin.addEventListener('click', TirarErro);
txtSenha.addEventListener('click', TirarErro);

function TirarAvisoLogin()
{
    if (txtLogin.classList.contains('caixaAviso'))
    {
        txtLogin.classList.remove('caixaAviso')
        pAlertaEmail.innerHTML = '';
    }
}
txtLogin.addEventListener('click', TirarAvisoLogin);

function TirarAvisoSenha()
{
    if (txtSenha.classList.contains('caixaAviso'))
    {
        txtSenha.classList.remove('caixaAviso')
        pAlertaSenha.innerHTML = '';
    }
}
txtSenha.addEventListener('click', TirarAvisoSenha);








