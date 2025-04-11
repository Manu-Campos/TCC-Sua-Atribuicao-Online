const graficoArea = document.querySelector('#faseDashboard');
let porcentagemAtribuicao = 0;
let porcentagemResto = 0;

console.log(graficoArea)

document.addEventListener("DOMContentLoaded", function () {
    fetch('../lib/buscarPorcentagemFases.aspx')
        .then(response => {
            return response.json();
        })
        .then(data => {
            if (data['erro']) {
                console.log(data['erro'])
            }
            else {
                porcentagemAtribuicao = parseFloat(data['faseAtual'].Porcentagem.replace('%', ''));
                porcentagemResto = 100 - porcentagemAtribuicao;

                console.log(data['faseAtual'])

                let corEscura = getComputedStyle(document.documentElement).getPropertyValue(data['corEscura']).trim();
                let corClara = getComputedStyle(document.documentElement).getPropertyValue(data['corClara']).trim();

                Highcharts.chart('faseDashboard', {
                    chart: {
                        type: 'pie',
                        options3d: {
                            enabled: false,
                            alpha: 20,
                            beta: 0
                        },
                        animation: 0,
                        spacing: [10, 10, 10, 10],
                        margin: [0, 0, 0, 0],
                    },

                    title: {
                        text: data['faseAtual'].Nome,
                        style: {
                            fontSize: '18px',
                            align: 'left'
                        }
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
                                distance: 10,
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
                        innerSize: '40%',
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
});

const graficoAndamento = document.querySelector('#andamentoDashboard');

console.log(graficoAndamento)

document.addEventListener("DOMContentLoaded", function () {
    fetch('../lib/andamentoDashboard.aspx')
        .then(response => {
            if (!response.ok) {
                throw new Error('Erro ao carregar os dados');
            }
            return response.json();
        })
        .then(data => {
            if (data['erro']) {
                console.log(data['erro']);
            } else {
                const escolas = data.map(item => item.escola);
                const porcentagens = data.map(item => {
                    const porcentagem = parseFloat(item.porcentagem);
                    return !isNaN(porcentagem) ? porcentagem : 0;
                });
                const cores = data.map(item => item.situacaoCor);

                cores.forEach((cor, index) => {
                    if (!/^#[0-9A-F]{6}$/i.test(cor) && !/^([a-zA-Z]+)$/i.test(cor)) {
                        console.error(`Cor inválida no índice ${index}: ${cor}`);
                    }
                });

                Highcharts.chart('andamentoDashboard', {
                    chart: {
                        type: 'bar'
                    },
                    title: {
                        text: "Andamento das Instituições",
                        align: 'left',
                        style: {
                            fontSize: '18px'
                        }
                    },
                    xAxis: {
                        categories: escolas,
                    },
                    yAxis: {
                        min: 0,
                        title: {
                            text: ''
                        }
                    },
                    series: [{
                        name: 'Atribuído',
                        data: porcentagens,
                        colorByPoint: true,
                        colors: cores
                    }],
                    plotOptions: {
                        series: {
                            dataLabels: {
                                enabled: true,
                                formatter: function () {
                                    return this.y.toFixed(2).replace('.', ',') + '%';
                                },
                                style: {
                                    fontSize: '14px',
                                    fill: 'none',
                                    stroke: 'none',
                                }
                            }
                        }
                    },
                    events: {
                        render: function () {
                            const labels = document.querySelectorAll('.highcharts-data-label text');
                            labels.forEach(label => {
                                label.setAttribute('fill', 'none');
                                label.setAttribute('stroke', 'none');
                            });
                        }
                    }
                });
            }
        })
        .catch(error => {
            console.error('Erro ao buscar os dados:', error);
        });
});

const graficoProfessores = document.querySelector('#professoresDashboard');

console.log(graficoProfessores)

document.addEventListener("DOMContentLoaded", function () {
    let corEscura;

    fetch('../lib/buscarPorcentagemFases.aspx')
        .then(response => response.json())
        .then(data => {
            if (data.erro) {
                console.log(data.erro);
            } else {
                
                corEscura = getComputedStyle(document.documentElement).getPropertyValue(data.corEscura).trim();

                fetch('../lib/professoresDashboard.aspx')
                    .then(response => response.json())
                    .then(data => {
                        if (data.erro) {
                            console.log(data.erro);
                        } else {
                            const Ativos = parseInt(data.ativos, 10);
                            const Substitutos = parseInt(data.substitutos, 10);
                            const Afastados = parseInt(data.afastados, 10);

                            Highcharts.chart('professoresDashboard', {
                                chart: {
                                    type: 'column'
                                },
                                exporting: {
                                    enabled: false
                                },
                                accessibility: {
                                    point: {
                                        descriptionFormatter: function () {
                                            return '';
                                        }
                                    }
                                },
                                title: {
                                    text: 'Professores',
                                    align: 'left',
                                    style: {
                                        fontSize: '18px'
                                    }
                                },
                                exporting: {
                                    enabled: false
                                },
                                xAxis: {
                                    categories: ['Efetivos', 'Substitutos', 'Afastados'],
                                    crosshair: true,
                                    accessibility: {
                                        description: 'Tipos de professores'
                                    }
                                },
                                yAxis: {
                                    min: 0,
                                    title: {
                                        text: 'Quantidade de Professores'
                                    }
                                },
                                tooltip: {
                                    valueSuffix: ' professores'
                                },
                                plotOptions: {
                                    column: {
                                        pointPadding: 0.2,
                                        borderWidth: 0
                                    }
                                },
                                series: [
                                    {
                                        name: 'Professores',
                                        data: [Ativos, Substitutos, Afastados],
                                        color: corEscura 
                                    }
                                ]
                            });
                        }
                    })
                    .catch(error => {
                        console.error('Erro ao buscar os dados:', error);
                    });
            }
        })
        .catch(error => {
            console.error('Erro ao buscar as cores da fase atual:', error);
        });
});