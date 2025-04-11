const txtSenhaAtual = document.querySelector('.txtSenhaAtual');
const txtNovaSenha = document.querySelector('.txtNovaSenha');
const txtConfirmaSenha = document.querySelector('.txtConfirmaSenha');
const txtTelefone = document.querySelector('.txtTelefoneC');
const avisoSenha = document.querySelector('.pAviso');
const avisoTelefone = document.querySelector('.pAvisoTel');

function TirarErro()
{
    if (txtSenhaAtual.classList.contains('caixaErro') || txtNovaSenha.classList.contains('caixaErro') || txtConfirmaSenha.classList.contains('caixaErro'))
    {
        txtSenhaAtual.classList.remove('caixaErro');
        txtNovaSenha.classList.remove('caixaErro');
        txtConfirmaSenha.classList.remove('caixaErro');
        avisoSenha.innerHTML = "";
    }
}

txtSenhaAtual.addEventListener('click', TirarErro);

txtNovaSenha.addEventListener('click', TirarErro);
txtConfirmaSenha.addEventListener('click', TirarErro);

function TirarErroTelefone()
{
    if (txtTelefone.classList.contains('caixaErro'))
    {
        txtTelefone.classList.remove('caixaErro');
        avisoTelefone.innerHTML = "";
    }
}
txtTelefone.addEventListener('click', TirarErroTelefone);


function TirarAvisoSenhaAtual() {
    if (txtSenhaAtual.classList.contains('caixaAviso')) {
        txtSenhaAtual.classList.remove('caixaAviso')
        avisoSenha.innerHTML = "";
    }
}
txtSenhaAtual.addEventListener('click', TirarAvisoSenhaAtual);

function TirarAvisoNovaSenha() {
    if (txtNovaSenha.classList.contains('caixaAviso')) {
        txtNovaSenha.classList.remove('caixaAviso')
        avisoSenha.innerHTML = "";
    }
}
txtNovaSenha.addEventListener('click', TirarAvisoNovaSenha);

function TirarAvisoConfirmaSenha() {
    if (txtConfirmaSenha.classList.contains('caixaAviso')) {
        txtConfirmaSenha.classList.remove('caixaAviso')
        avisoSenha.innerHTML = "";
    }
}
txtConfirmaSenha.addEventListener('click', TirarAvisoConfirmaSenha);

function TirarAvisoTelefone() {
    if (txtTelefone.classList.contains('caixaAviso')) {
        txtTelefone.classList.remove('caixaAviso')
        avisoTelefone.innerHTML = "";
    }
}
txtTelefone.addEventListener('click', TirarAvisoTelefone);




