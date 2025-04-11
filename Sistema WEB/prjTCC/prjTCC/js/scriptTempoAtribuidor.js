const tempoRestante = document.querySelector('.tempo');
//const tituloH3 = document.querySelector('#tituloH3');
const btnAtribuicao = document.querySelector(".botaoChamar");

if (btnAtribuicao) {
    window.addEventListener('DOMContentLoaded', function () {

        console.log(btnAtribuicao.value)

        if (tituloH3.innerHTML == 'Aguardando o professor atribuir...' && btnAtribuicao.value == 'Aguardando') {

            console.log(tituloH3);
            console.log(btnAtribuicao.value)

            console.log('aqui tem que buscar tempo');
            const formdata2 = new FormData;
            fetch('../lib/verificarTempoAtribuidor.aspx', {
                method: 'post',
                body: formdata2
            })
                .then(function (response) {
                    {
                        return response.text();
                    }
                })
                .then(function (data) {
                    {
                        console.log(data);
                        let jsonData = JSON.parse(data.trim().replace('-', ''));
                        let tempoTotal = jsonData['tempoRestante'];
                        temporizador(tempoTotal);
                    }
                })
                .catch(function (error) {
                    {
                        console.error('erro ao buscar os dados:', error);
                    }
                });
        }
    });
}

var tempo = 0;
var working = false;
var intervaloID = 0;

function exibeTempo() {
    console.log(tempo);
    let min = Math.floor(tempo / 60);
    let seg = tempo % 60;
    let smin = min.toString().padStart(2, '0');
    let sseg = seg.toString().padStart(2, '0');

    let tempoTela = `${smin}:${sseg}`;
    tempoRestante.innerHTML = "Tempo restante: " + tempoTela;
    tempo--;
    console.log(tempoTela)

    if (tempo < 0) {
        working = false;
        clearInterval(intervaloID);
        tempoRestante.style.color = '#ccc';
        location.reload(true);
    }
    else if (tempo < 15) {
        tempoRestante.style.color = 'red';
    }
}

function temporizador(t)
{
    if (working == false) {
        working = true;
        tempo = t;
        console.log(tempo);
        exibeTempo();
        intervaloID = setInterval(exibeTempo, 1000); // 1s                  
    }
}
function tempoEmSegundos(tempoStr)
{
    let partes = tempoStr.split(':');

    let horas = parseInt(partes[0]) || 0;

    let minutos = parseInt(partes[1]) || 0;

    let segundos = parseInt(partes[2]) || 0;

    return (horas * 3600) + (minutos * 60) + segundos;
}
