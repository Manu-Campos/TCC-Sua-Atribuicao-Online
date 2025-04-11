// Tratamento de datas

const calendarioInicio = document.querySelector('.dataInicio');
const horarioInicio = document.querySelector('.hrInicio');
const calendarioFim = document.querySelector('.dataFim');
const horarioFim = document.querySelector('.hrFim');
const aviso = document.querySelector('#aviso');
const txtFases = document.querySelector('.txtFases');
const areaDatas = document.querySelector('.dtsFases');

const areaCriarFases = document.querySelector('.areaCriarFase');
const areaAguardandoFase = document.querySelector('.areaAguardandoFase');
const aguardandoFase = document.querySelector('.areaAguardandoFase p');

console.log(aguardandoFase);

const btnSalvar = document.querySelector('.btnSalvarFases');

let dataInicio = '';
let dataFim = '';
let teste = '';


if (txtFases)
{
    if (txtFases.value == null || txtFases.value == undefined || txtFases.value == '') {
        if (areaAguardandoFase.classList.contains('escondido')) {
            areaCriarFases.classList.add('escondido');
            areaAguardandoFase.classList.remove('escondido');
        }
    }
    else {
        if (areaCriarFases.classList.contains('escondido')) {
            areaCriarFases.classList.remove('escondido');
            areaAguardandoFase.classList.add('escondido')
        };
    }
}



if (btnSalvar)
    btnSalvar.addEventListener('click', function (e) {
        e.preventDefault();

        if (calendarioInicio.value == '')
        {
            aviso.textContent = 'É necessário escolher a data de início!';
            return;
        }
        if (horarioInicio.value == '')
        {
            aviso.textContent = 'É necessário escolher o horário de início!';
            return;
        }
        if (calendarioFim.value == '')
        {
            aviso.textContent = 'É necessário escolher a data de fim!';
            return;
        }
        if (horarioFim.value == '') {
            aviso.textContent = 'É necessário escolher o horário de fim!';
            return;
        }

        dataInicio = calendarioInicio.value + ' ' + horarioInicio.value;
        dataFim = calendarioFim.value + ' ' + horarioFim.value;
        aviso.textContent = '';

        const data = new Date(calendarioInicio.value + "T00:00:00"); 
        const dia = String(data.getUTCDate()).padStart(2, '0');
        const mes = String(data.getUTCMonth() + 1).padStart(2, '0'); 
        const dataFormatadaInicio = `${dia}/${mes}`;

        const dataF = new Date(calendarioFim.value + "T00:00:00");
        const diaF = String(dataF.getUTCDate()).padStart(2, '0');
        const mesF = String(dataF.getUTCMonth() + 1).padStart(2, '0');
        const dataFormatadaFim = `${diaF}/${mesF}`;

        console.log(dataFormatadaFim);

        const formdata = new FormData;

        formdata.append("datainicio", dataInicio);
        formdata.append("datafim", dataFim);

        fetch('../lib/gravarFases.aspx', {
            method: 'post',
            body: formdata
        })
            .then(function (response) {
                return response.json();
            })
            .then(function (data) {
                console.log(data);

                if (data['erro'])
                {
                    aviso.textContent = data['erro'];
                }
                else
                {

                    txtFases.value = data['nmfase'];
                    calendarioInicio.setAttribute('min', data['ultimaDtFim']);
                    calendarioFim.setAttribute('min', data['ultimaDtFim']);



                    areaDatas.innerHTML += `<div class='DatasCdFase'>
                                            <p class='SemMargin'>`
                        + dataFormatadaInicio +
                                            `</p>
                                            <p class='SemMargin'> `
                        + dataFormatadaFim +
                                            `  
                                            </p>
                                            </div>`


                    calendarioFim.value = "";
                    calendarioInicio.value = "";
                    horarioFim.value = "";
                    horarioInicio.value = "";



                    if (data['proximaFase'])
                    {
                        if (areaAguardandoFase.classList.contains('escondido')) {
                            areaCriarFases.classList.add('escondido');
                            areaAguardandoFase.classList.remove('escondido');

                            const dataI = new Date(data['dtInicio']);

                            const diaI = String(dataI.getDate()).padStart(2, '0');
                            const mesI = String(dataI.getMonth() + 1).padStart(2, '0');
                            const horaI = String(dataI.getHours()).padStart(2, '0');
                            const minutoI = String(dataI.getMinutes()).padStart(2, '0');

                            const dataProximaI = `${diaI}/${mesI}`;
                            const hrProximaI = `${horaI}:${minutoI}`;

                            console.log(dataProximaI);

                            let cor = '';

                            if (data['proximaFase'].Nome == '1º Atribuição')
                            {
                                cor = 'primeiraAtribuicao';
                            }
                            if (data['proximaFase'].Nome == '2º Atribuição')
                            {
                                cor = 'segundaAtribuicao';
                            }
                            if (data['proximaFase'].Nome == 'Remoção')
                            {
                                cor = 'remocao';
                            }
                            if (data['proximaFase'].Nome == 'Carga complementar')
                            {
                                cor = 'cargaComplementar';
                            }
                            if (data['proximaFase'].Nome == 'Trocas')
                            {
                                cor = 'trocas';
                            }
                            if (data['proximaFase'].Nome == 'Pré-Atribuição')
                            {
                                cor = 'preAtribuicao';
                            }

                            aguardandoFase.innerHTML = `Aguardando a próxima fase - <span class='${cor} span''> ${data['proximaFase'].Nome} - ${dataProximaI} - ${hrProximaI}h </span>`;
                        }
                    }
                    else {
                        if (areaCriarFases.classList.contains('escondido')) {
                            areaCriarFases.classList.remove('escondido');
                            areaAguardandoFase.classList.add('escondido')
                        };
                    }

                }
            })
            .catch(function (error) {
                console.error('erro ao buscar os dados:', error);
            });
    });
