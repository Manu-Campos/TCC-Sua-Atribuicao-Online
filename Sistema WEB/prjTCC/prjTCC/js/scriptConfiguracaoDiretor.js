const abrirConfigDiretor = document.querySelector('#abrirInfoDiretor');
const areaDadosDiretor = document.querySelector('#areaDadosDiretor');
const telaBloqueioDadosDiretor = document.querySelector('.bloqueio');
const removerDadosDiretor = document.querySelector('#removerDadosDiretor');

console.log(removerDadosDiretor)

document.body.classList.remove('semScroll');

function AbrirDadosDiretor()
{
    window.scrollTo({
        top: 0,
        behavior: 'smooth'
    });

    areaDadosDiretor.classList.remove('escondido');
    telaBloqueioDadosDiretor.classList.remove('escondido');
    body.classList.add("semScroll");
    document.body.classList.add('semScroll');
}

if (abrirConfigDiretor)
{
    abrirConfigDiretor.addEventListener('click', AbrirDadosDiretor);
}

function FecharDadosDiretor()
{
    areaDadosDiretor.classList.add('escondido');
    telaBloqueioDadosDiretor.classList.add('escondido');
    document.body.classList.remove('semScroll')
}

if (abrirConfigDiretor)
{
    telaBloqueioDadosDiretor.addEventListener('click', FecharDadosDiretor);
    abrirConfigDiretor.addEventListener('click', FecharDadosDiretor());
    removerDadosDiretor.addEventListener('click', FecharDadosDiretor);
    console.log(removerDadosDiretor)
}