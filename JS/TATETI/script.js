document.addEventListener('DOMContentLoaded', () => {
  console.log('script.js cargado');

  const jugador1Input = document.getElementById('jugador1');
  const jugador2Input = document.getElementById('jugador2');
  const simboloSelect = document.getElementById('simbolo');
  const iniciarBtn = document.getElementById('iniciar');
  const reiniciarBtn = document.getElementById('reiniciar');
  const tableroEl = document.getElementById('tablero');
  const estadoEl = document.getElementById('estado');
  const modoIACheck = document.getElementById('modoIA');

  if (!tableroEl) {
    console.error('No se encontró el elemento #tablero en el DOM');
    return;
  }

  let tablero = Array(9).fill("");
  let turno = "X";
  let jugador1 = "";
  let jugador2 = "";
  let simbolos = { j1: "X", j2: "O" };
  let juegoActivo = false;
  let contraComputadora = false;

  // actualizar estado en pantalla
  function actualizarEstado(mensaje) {
    estadoEl.textContent = mensaje || '';
  }

  function resetearTablero() {
    tablero = Array(9).fill("");
    document.querySelectorAll('#tablero td').forEach(td => {
      td.textContent = "";
      td.classList.remove('ganador'); // quitar resaltado previo
    });
  }

  // habilitar/deshabilitar tablero (usa clase CSS existente)
  function habilitarTablero(habilitar) {
    if (habilitar) {
      tableroEl.classList.remove('deshabilitado');
    } else {
      tableroEl.classList.add('deshabilitado');
    }
  }

  // controlar campo jugador2 según checkbox
  modoIACheck.addEventListener('change', () => {
    if (modoIACheck.checked) {
      jugador2Input.value = '';
      jugador2Input.disabled = true;
    } else {
      jugador2Input.disabled = false;
    }
  });

  // iniciar juego
  function iniciarJuego() {
    jugador1 = jugador1Input.value.trim();
    jugador2 = jugador2Input.value.trim();
    const simboloJugador1 = simboloSelect.value;

    if (!jugador1 || !simboloJugador1) {
      alert('Por favor completa el nombre del Jugador 1 y selecciona el símbolo.');
      return;
    }

    contraComputadora = modoIACheck.checked;

    if (contraComputadora) {
      jugador2 = 'Computadora';
    } else {
      if (!jugador2) {
        alert('Por favor completa el nombre del Jugador 2 o activa "Jugar contra IA".');
        return;
      }
    }

    simbolos.j1 = simboloJugador1;
    simbolos.j2 = simboloJugador1 === 'X' ? 'O' : 'X';

    // X siempre comienza
    turno = 'X';
    juegoActivo = true;

    resetearTablero();
    habilitarTablero(true);
    actualizarEstado(`Turno: ${turno} (${turno === simbolos.j1 ? jugador1 : jugador2})`);

    // si la IA debe empezar (p. ej. si jugador1 eligió O), hacer su jugada
    if (contraComputadora && turno === simbolos.j2) {
      setTimeout(jugarComputadora, 400);
    }
  }

  // obtener combinación ganadora (devuelve array de índices o null)
  function obtenerCombinacionGanadora() {
    const combinaciones = [
        [0,1,2],[3,4,5],[6,7,8],
        [0,3,6],[1,4,7],[2,5,8],
        [0,4,8],[2,4,6]
    ];
    for (let combo of combinaciones) {
      const [a,b,c] = combo;
      if (tablero[a] && tablero[a] === tablero[b] && tablero[a] === tablero[c]) {
        return combo;
      }
    }
    return null;
  }

  // resaltar celdas ganadoras
  function resaltarCombinacion(combo) {
    combo.forEach(i => {
      const celda = document.querySelector(`#tablero td[data-index="${i}"]`);
      if (celda) celda.classList.add('ganador');
    });
  }

  // manejar clic en celdas
  function jugar(e) {
    if (!juegoActivo) return;
    const celda = e.target;
    const index = Number(celda.dataset.index);

    if (isNaN(index)) return;
    if (tablero[index] !== "") return;

    // Si es turno de la IA, bloquear clicks humanos
    if (contraComputadora && turno === simbolos.j2) return;

    tablero[index] = turno;
    celda.textContent = turno;

    // verificar ganador tras movimiento
    const comboGanador = obtenerCombinacionGanadora();
    if (comboGanador) {
      resaltarCombinacion(comboGanador);
      const ganador = turno === simbolos.j1 ? jugador1 : jugador2;
      actualizarEstado(`Ganó ${ganador}`);
      alert(`Ganó ${ganador}`);
      juegoActivo = false;
      return;
    }

    // empate
    if (!tablero.includes("")){
      actualizarEstado("Empate");
      alert("Empate !");
      juegoActivo = false;
      return;
    }

    // cambiar turno
    turno = turno === "X" ? "O" : "X";
    actualizarEstado(`Turno: ${turno} (${turno === simbolos.j1 ? jugador1 : jugador2})`);

    // si ahora es turno de IA, ejecutarla
    if (contraComputadora && turno === simbolos.j2) {
      setTimeout(jugarComputadora, 400);
    }
  }

  // jugada de la computadora (IA simple)
  function jugarComputadora () {
    if (!juegoActivo) return;

    // asegurar turno IA
    turno = simbolos.j2;

    let index = null;

    // intenta ganar
    index = encontrarMejorMovimientos(simbolos.j2);

    // bloquear al humano
    if (index === null) {
      index = encontrarMejorMovimientos(simbolos.j1);
    }

    // centro
    if (index === null && tablero[4] === "") {
      index = 4;
    }

    // esquina
    const esquinas = [0,2,6,8];
    if (index === null) {
      index = esquinas.find(i => tablero[i] === "") ?? null;
    }

    // cualquier libre
    if (index === null) {
      const libres = tablero.map((v,i) => v === "" ? i : null).filter(i => i !== null);
      index = libres[0] ?? null;
    }

    if (index === null) return;

    tablero[index] = turno;
    const celda = document.querySelector(`#tablero td[data-index="${index}"]`);
    if (celda) celda.textContent = turno;

    // verificar si la IA ganó
    const comboGanador = obtenerCombinacionGanadora();
    if (comboGanador) {
      resaltarCombinacion(comboGanador);
      actualizarEstado("Ganó la IA");
      alert("Ganó la IA");
      juegoActivo = false;
      return;
    }

    // empate
    if (!tablero.includes("")){
      actualizarEstado("Empate");
      alert("Empate !");
      juegoActivo = false;
      return;
    }

    // pasar turno al humano
    turno = simbolos.j1;
    actualizarEstado(`Turno: ${jugador1}`);
  }

  // busca movimientos donde hay 2 del mismo símbolo y un vacío
  function encontrarMejorMovimientos(simbolo) {
    const combinaciones = [
        [0,1,2],[3,4,5],[6,7,8],
        [0,3,6],[1,4,7],[2,5,8],
        [0,4,8],[2,4,6]
    ];

    for (let combo of combinaciones) {
      const [a,b,c] = combo;
      const valores = [tablero[a], tablero[b], tablero[c]];
      if (valores.filter(v => v === simbolo).length === 2 && valores.includes("")) {
        return combo[valores.indexOf("")];
      }
    }
    return null;
  }

  // verifica si hay ganador (se mantiene por compatibilidad)
  function verificarGanador(){
    return obtenerCombinacionGanadora() !== null;
  }

  // DEBUG: confirmar que se crearon los elementos
  console.log({ jugador1Input: !!jugador1Input, simboloSelect: !!simboloSelect, iniciarBtn: !!iniciarBtn, reiniciarBtn: !!reiniciarBtn });

  // Añadir logs en eventos para depuración
  iniciarBtn.addEventListener('click', (e) => {
    console.log('Botón Iniciar pulsado', { jugador1: jugador1Input.value, simbolo: simboloSelect.value, modoIA: modoIACheck.checked });
    iniciarJuego();
  });

  reiniciarBtn.addEventListener('click', (e) => {
    console.log('Botón Reiniciar pulsado');
    reiniciarJuego();
  });

  // log cada click en celdas (ya hay listener que llama a jugar)
  document.querySelectorAll('#tablero td').forEach(td => {
    td.addEventListener('click', (ev) => {
      const idx = ev.target.dataset.index;
      console.log('click celda', idx, 'contenido previo:', tablero[idx]);
      // llamar al handler existente
      jugar(ev);
    });
  });

  console.log('Inicialización completa');
});