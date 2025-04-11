/* Abrir aba assinatura */
const btnEditarAssinatura = document.querySelector('#btnEditarAssinatura');
const areaEditarAssinatura = document.querySelector('#areaEditarAssinatura');
const btnCancelarAssinatura = document.querySelector('#btnCancelar');

function AbrirAbaAssinatura()
{
    areaEditarAssinatura.classList.toggle('escondido');
}

if (btnEditarAssinatura) {
    btnEditarAssinatura.addEventListener('click',AbrirAbaAssinatura);
}

function FecharAbaAssinatura()
{
    areaEditarAssinatura.classList.add('escondido');  
    telaBloqueio.classList.toggle("escondido");
    body.classList.toggle("semScroll");
}

if (btnCancelarAssinatura && telaBloqueio) {
    telaBloqueio.addEventListener('click', FecharAbaAssinatura);
    btnCancelarAssinatura.addEventListener('click', FecharAbaAssinatura);
}

const botaoEditarFoto = document.querySelector('.alterarFoto');
const fUpload = document.querySelector('.fupFoto');

if (botaoEditarFoto) { 
    botaoEditarFoto.addEventListener('click', function (e) {
        e.preventDefault();
        fUpload.click();
    });
}

fUpload.addEventListener('change', function (e) {
    e.preventDefault();
    enviarArquivo();
});

function enviarArquivo() {
    const botaoEnviar = document.querySelector('.btnFoto');
    console.log(botaoEnviar)
    botaoEnviar.click();
}