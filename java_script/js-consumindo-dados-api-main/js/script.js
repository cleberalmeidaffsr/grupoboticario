async function buscaEndereco(cep) {
    try {
        var consultarCEP = await fetch(`https://viacep.com.br/ws/${cep}/json/'`);
        var consultaCEPConvertida = await consultarCEP.json();
        if (consultaCEPConvertida.erro) {
            throw Error('CPF não existe.');
        }
        var cidade = document.getElementById('cidade');
        var logradouro = document.getElementById('logradouro');
        var estado = document.getElementById('estado');

        cidade.value = consultaCEPConvertida.localidade;
        logradouro.value = consultaCEPConvertida.logradouro;
        estado.value = consultaCEPConvertida.uf;

        console.log(consultaCEPConvertida);
    } catch (erro) {
        console.log(erro)
    }
}

var cep = document.getElementById('cep');

cep.addEventListener("focusout", () => buscaEndereco(cep.value));




