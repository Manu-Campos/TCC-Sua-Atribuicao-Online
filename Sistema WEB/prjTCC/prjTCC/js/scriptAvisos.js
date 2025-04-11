const iconeUpload = document.getElementById('uploadIcon');
const fundoUpload = document.getElementById('fundoUpload');
const fileUpload = document.querySelector('.fileUpload');
const areaDigitarAviso = document.querySelector('.mensagemAviso');
const qtdCaracteres = document.querySelector('#qtdCaracteres');
const arquivosEscolhidos = document.querySelector('#arquivosEscolhidos');
const BotaoEscolherArquivos = document.querySelector('.BotaoEscolherArquivo');
const btnRemoverArquivo = document.querySelector('.btnRemoverArquivos');
const areaAviso = document.querySelector('.alertas');

let arquivosSelecionados = [];

let contador = 0;
let nome = "";
console.log(fileUpload);

fundoUpload.addEventListener('click', function () {
    fileUpload.click();
});
fileUpload.addEventListener('change', function () {
    BotaoEscolherArquivos.click();
})

//        fileUpload.addEventListener("change", function () {

//            const maxSize = 4 * 1024 * 1024

//            arquivosEscolhidos.classList.remove('escondido');


//            if (fileUpload.files.length > 0) {

//                BotaoEscolherArquivos.click();
                //for (let i = 0; i < fileUpload.files.length; i++) {

                //    contador++;
                //    console.log(contador);
                //    console.log(fileUpload.files[i])

                //    if (contador == 1) {
                //        arquivosSelecionados.push(fileUpload.files[i]);
                //    }

                //    if (fileUpload.files[i].name !== nome && contador >= 2) {
                //        arquivosSelecionados.push(fileUpload.files[i]);
                //    }

                //    nome = fileUpload.files[i].name;

                //    if (fileUpload.files[i].size > maxSize) {
                //        pAlertas.classList.remove('escondido');
                //        pAlertas.innerHTML = `O arquivo "${fileUpload.files[i].name}" excede o tamanho máximo de 4MB.`;
                //        arquivosSelecionados.pop();
                //        return;
                //    }
                //    console.log(arquivosSelecionados.length);
                //    if (arquivosSelecionados.length > 2) {
                //        pAlertas.classList.remove('escondido');
                //        pAlertas.innerHTML = 's.';
                //        arquivosSelecionados.pop();
                //        return;
                //    }

                //    arquivosEscolhidos.innerHTML += `<div codigo='${i}'>
                //                                    <p class='SemMargin'>${fileUpload.files[i].webkitRelativePath}</p>
                //                                    <img src='../imagens/icones/x.png' id='removerArquivo'></img>
                //                                </div>`;
                //}

        //    }


        //});



console.log(arquivosSelecionados);


areaDigitarAviso.addEventListener('input', function () {
    qtdCaracteres.innerHTML = areaDigitarAviso.value.length + '/240';
});



//async function fecharArquivo() {

//    const areaArquivos = document.querySelectorAll('#arquivosEscolhidos div');

//    for (let c = 0; c < areaArquivos.length; c++) {

//        let remover = areaArquivos[c].querySelector('.removerArquivo');
//        console.log(remover)

//        remover.addEventListener('click', function () {

//            areaArquivos[c].classList.add('escondido');
//            areaArquivos[c].remove();
//            arquivosSelecionados.splice(c, 1);

//            const formdata = new FormData;

//            formdata.append("codigo", c);

//            fetch('../lib/removerArquivos.aspx', {
//                method: 'post',
//                body: formdata
//            })
//                .then(function (response) {
//                    return response.json();
//                })
//                .then(function (data) {
//                    console.log(data);

//                    if (data['erro'])
//                    {
//                        aviso.textContent = 'Ocorreu um erro ao deletar o arquivo!';
//                    }
//                })
//                .catch(function (error) {
//                    console.error('erro ao buscar os dados:', error);
//                });

//        })

//    }     

//}


//setInterval(fecharArquivo, 1000);