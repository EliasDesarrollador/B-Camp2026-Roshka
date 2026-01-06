package poker;

/* Clase principal que contiene la logica , analiza las cartas  y determina
   que tipo de jugadas representan */
import java.util.*;

public class ManoPoker {
	
	private final List<Carta> cartas = new  ArrayList<>();
	
	// Constructor  que valida  y crea  la mano 
	public ManoPoker(String[] codigoCartas) {
		if (codigosCartas.length != 5 ) {
			throw new IllegalArgumentException("Debe haber 5 cartas ");
		}
		Set<String> sinDuplicados = new HashSet<>();
		for (String codigo : codigosCartas) {
			if (!sinDuplicados.add(codigo)) {
				throw new IllegalArgumentException("Cartas duplicadas ");
			}
			cartas.add(new Carta(codigo));
		}
	}
	

}
