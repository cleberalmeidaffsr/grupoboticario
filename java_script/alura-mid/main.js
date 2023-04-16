function tocaSom(idElemento) {
    const elemento = document.querySelector(idElemento)

    if (elemento && elemento.localName === 'audio') {
        elemento.play();
    } else {
        console.log('Elemento não encontrado ou seletor não encontrado.');
    }
}

const listaTeclas = document.querySelectorAll('.tecla');

for (let contador = 0; contador < listaTeclas.length; contador++) {
    const tecla = listaTeclas[contador];

    const tipoInstrumento = tecla.classList[1];

    const idAudio = `#som_${tipoInstrumento}`;

    tecla.onclick = function () {
        tocaSom(idAudio);
    };

    tecla.onkeydown = function(evento) {
        if (evento.code === 'Space' || evento.code === 'Enter') {
            tecla.classList.add('ativa');
        }     
    }

    tecla.onkeyup = function() {
        tecla.classList.remove('ativa');
    }
    
}
