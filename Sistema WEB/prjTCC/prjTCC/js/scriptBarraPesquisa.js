//Esse script serve para todas as páginas com pesquisa em tabelas
const BarraPesquisa = document.querySelector(".barraPesquisa");//Adicione essa classe no input de pesquisa
const BotaoPesquisar = document.querySelector("#BotaoBuscar");// Adicione um botão na imagem de pesquisa e coloque esse ID
const tabela = document.querySelector("#tabela");// Adicione esse ID na tabela
const linhas = document.querySelectorAll("#tabela tr");

BotaoPesquisar.addEventListener("click", e => {
    e.preventDefault();
    console.log("clicou");

    linhas.forEach(function (Linha) {
        Linha.classList.remove("escondido");
    });

    let cont2 = 0;

    linhas.forEach(function (Linha) {
        let cont = 0;
        const celulas = Linha.querySelectorAll("td");
        console.log(celulas.length);
        celulas.forEach(function (Celula) {
            if (!Celula.textContent.toLowerCase().includes(BarraPesquisa.value.toLowerCase()))
                    cont++;
        })
        if (cont == celulas.length) {
            Linha.classList.add("escondido");
            cont2++;
            console.log("Escondeu");
        }
    });

    if (cont2 == linhas.length) {
        tabela.innerHTML += `<tr>
            <td class="Ano Centro">-</td>
            <td class="Tipo Centro">-</td>
            <td class="Periodo Centro">-</td>
            <td class="Disciplina">-</td>
            <td class="Escola">-</td>
        </tr>`
    }
})

window.addEventListener("load", e => {
    e.preventDefault();
    console.log("clicou");

    linhas.forEach(function (Linha) {
        Linha.classList.remove("escondido");
    });

    let cont2 = 0;

    linhas.forEach(function (Linha) {
        let cont = 0;
        const celulas = Linha.querySelectorAll("td");
        console.log(celulas.length);
        celulas.forEach(function (Celula) {
            if (!Celula.textContent.toLowerCase().includes(BarraPesquisa.value.toLowerCase()))
                cont++;
        })
        if (cont == celulas.length) {
            Linha.classList.add("escondido");
            cont2++;
            console.log("Escondeu");
        }
    });

    if (cont2 == linhas.length) {
        tabela.innerHTML += `<tr>
            <td class="Ano Centro">-</td>
            <td class="Tipo Centro">-</td>
            <td class="Periodo Centro">-</td>
            <td class="Disciplina">-</td>
            <td class="Escola">-</td>
        </tr>`
    }
})
