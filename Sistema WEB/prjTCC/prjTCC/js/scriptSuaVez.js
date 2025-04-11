const areaSuaVez = document.querySelector('#areaSuaVez');
const telaBloqueioSuaVez = document.querySelector('.bloqueioResposta');
let foi = false;
console.log(areaSuaVez);

async function verificarSuaVez() {

    fetch('../lib/verificarVezProfessor.aspx', {
        method: 'post',
    })
        .then(function (response) {
            return response.json();
        })
        .then(function (data) {
            console.log(data);

            if (data['situacao'] == 'true') {
                areaSuaVez.classList.remove('escondido');
                telaBloqueioSuaVez.classList.remove('escondido');
                body.classList.add("semScroll");
                foi = true;
            }

        })
        .catch(function (error) {
            console.error('erro ao buscar os dados:', error);
        });
}
setInterval(verificarSuaVez, 2500);

console.log(foi);

