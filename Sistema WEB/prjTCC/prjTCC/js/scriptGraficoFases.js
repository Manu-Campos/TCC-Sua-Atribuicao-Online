const graficoArea = document.querySelector('#graficoAtribuicao');
let porcentagemAtribuicao = 0;
let porcentagemResto = 0;

console.log(graficoArea)

fetch('../lib/buscarPorcentagemFases.aspx')
    .then(response => {
        return response.json();
    })
    .then(data => {
        if (data['erro']) {
            console.log(data['erro'])
        }
        else
        {
            porcentagemAtribuicao = parseFloat(data['faseAtual'].Porcentagem.replace('%', ''));
            porcentagemResto = 100 - porcentagemAtribuicao;

            console.log(data['faseAtual'])

         
            let corEscura = getComputedStyle(document.documentElement).getPropertyValue(data['corEscura']).trim();
            let corClara = getComputedStyle(document.documentElement).getPropertyValue(data['corClara']).trim();

            


            Highcharts.chart('graficoAtribuicao', {
                chart: {
                    type: 'pie',
                    options3d: {
                        enabled: false,
                        alpha: 20,
                        beta: 0
                    },
                    animation: 0,
                    spacing: [0, 0, 0, 0],
                    margin: [0, 0, 0, 0],
                },
              
                title: {
                    text: null
                },
                subtitle: {
                    text: null
                },
                accessibility: {
                    point: {
                        valueSuffix: '%'
                    }
                },
                plotOptions: {
                    pie: {
                        innerSize: 10,
                        dataLabels: {
                            style: {
                                fontSize: '14px'
                            }
                        }
                    },
                    series: {
                        allowPointSelect: false,
                        cursor: 'pointer',
                        borderRadius: 0,
                        dataLabels: [{
                            enabled: true,
                            distance: 20,
                            format: '{point.name}'
                        }],
                        states: {
                            hover: {
                                halo: null,
                                brightness: 0

                            }
                        }
                    },
                },
                series: [{
                    name: 'Registrations',
                    colorByPoint: true,
                    innerSize: '60%',
                    data: [{
                        name: 'Não atribuído',
                        y: porcentagemResto,
                        color: corClara
                    }, {
                        name: 'Atribuído',
                        y: porcentagemAtribuicao,
                        color: corEscura
                    }],
                }],
                tooltip: {
                    formatter: function () {
                        return '<b>' + this.point.name + ': ' + this.y.toFixed(2).replace('.', ',') + '%</b>';
                    },
                    shared: true,
                    backgroundColor: '#ffffff',
                    borderColor: '#AAA',
                },
                exporting: {
                    enabled: false
                },
                credits: {
                    enabled: false
                }

            })

        }
    })
    .catch(error => {
        console.error('Erro ao buscar os dados:', error);
    });

