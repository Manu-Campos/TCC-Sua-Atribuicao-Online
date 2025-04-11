const turmaSelecionada = document.querySelectorAll('#todasTurmas .checkbox'); //checkbox da tabela da esquerda

if (turmaSelecionada.length != 0) {

    console.log("aaa");

    const tabelaSelecionada = document.querySelector('#turmasSelecionadas'); //tabela da direita com as que o professor quer

    const tabelaSelecao = document.querySelector('#todasTurmas'); //tabela da esquerda com as opções
    const linhasTabelaSelecao = tabelaSelecao.querySelectorAll('tr'); //linhas da tabela da esquerda com as opções

    const qtSelecionadas = document.querySelector('#qtSelecionadas'); //txt da quantidade de aulas pré selecionadas
    const qtSelecaoTotal = document.querySelector('#qtSelecionadas').textContent.split("/")[1]; //txt da quantidade de aulas totais a serems selecionadas

    let linhasTabelaSelecionada = tabelaSelecionada.querySelectorAll('tr'); //linhas da tabela da direita com as opções
    let quantidade = 0;

    quantidade = tabelaSelecionada.querySelectorAll('tr').length;
    qtSelecionadas.innerText = "Turmas selecionadas: " + quantidade + "/" + qtSelecaoTotal;

    if (quantidade >= qtSelecaoTotal) {

        linhasTabelaSelecionada = tabelaSelecionada.querySelectorAll('tr');

        for (var c = 0; c < turmaSelecionada.length; c++) {

            if (turmaSelecionada[c].checked == false) {
                linhasTabelaSelecao[c].cells[0].querySelector('input[type="checkbox"]').setAttribute("disabled", true);
            }

        }

    }
    else {

        for (var c = 0; c < turmaSelecionada.length; c++) {

            if (turmaSelecionada[c].checked == false) {
                linhasTabelaSelecao[c].cells[0].querySelector('input[type="checkbox"]').removeAttribute("disabled");
            }

        }

    }

    for (let i = 0; i < turmaSelecionada.length; i++) {

        turmaSelecionada[i].addEventListener('click', function () {

            const linhaTabelaSelecionada = turmaSelecionada[i].parentElement.parentElement;
            const linhaClonada = linhaTabelaSelecionada.cloneNode(true);

            linhaClonada.querySelector('input[type="checkbox"]').parentElement.remove();

            if (turmaSelecionada[i].checked == true) {
                tabelaSelecionada.appendChild(linhaClonada);
            }
            else {

                linhasTabelaSelecionada = tabelaSelecionada.querySelectorAll('tr');

                linhasTabelaSelecionada.forEach(r => {
                    if (r.cells[0].innerText === linhaClonada.cells[0].innerText) {
                        tabelaSelecionada.removeChild(r);
                    }
                });
            }

            quantidade = tabelaSelecionada.querySelectorAll('tr').length;
            qtSelecionadas.innerText = "Turmas selecionadas: " + quantidade + "/" + qtSelecaoTotal;

            if (quantidade >= qtSelecaoTotal) {

                linhasTabelaSelecionada = tabelaSelecionada.querySelectorAll('tr');

                for (var c = 0; c < turmaSelecionada.length; c++) {

                    if (turmaSelecionada[c].checked == false) {
                        linhasTabelaSelecao[c].cells[0].querySelector('input[type="checkbox"]').setAttribute("disabled", true);
                    }

                }

            }
            else {

                for (var c = 0; c < turmaSelecionada.length; c++) {

                    if (turmaSelecionada[c].checked == false) {
                        linhasTabelaSelecao[c].cells[0].querySelector('input[type="checkbox"]').removeAttribute("disabled");
                    }

                }

            }

        })
    }
}