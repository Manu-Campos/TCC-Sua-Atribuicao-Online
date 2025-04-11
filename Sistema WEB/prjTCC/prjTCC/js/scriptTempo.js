const tempoRestante = document.querySelector('#tabela2 h3');
const areaAtribuicao = document.querySelector('.pnlAtribuicao');


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

function temporizador(t) {
    if (working == false) {
        working = true;
        tempo = t;
        console.log(tempo);
        exibeTempo();
        intervaloID = setInterval(exibeTempo, 1000);            
    }
}

window.addEventListener('DOMContentLoaded', function () {

    if (areaAtribuicao)
    {
        console.log('aqui tem que buscar tempo');
        const formdata2 = new FormData;
        fetch('../lib/verificarTempoAtribuicao.aspx', {
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
                    let tempoTotal = Number(jsonData['tempoRestante']);
                    console.log(tempoTotal)
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
