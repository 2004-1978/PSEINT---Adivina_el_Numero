Algoritmo AdivinarNumero
    Definir numero_secreto, intento, intentos_usados Como Entero
    Definir max_intentos Como Entero
    max_intentos <- 5
    intentos_usados <- 0
    
    numero_secreto <- Azar(100) + 1  // Número aleatorio entre 1 y 100
	
    Escribir "¡Bienvenido al juego de adivinar el número!"
    Escribir "Estoy pensando en un número del 1 al 100. Tienes ", max_intentos, " intentos."
	
    Repetir
        Escribir "Introduce tu intento: "
        Leer intento
        intentos_usados <- intentos_usados + 1
		
        Si intento = numero_secreto Entonces
            Escribir "¡Felicidades! Has adivinado el número en ", intentos_usados, " intento(s)."
        Sino
            Si intento < numero_secreto Entonces
                Escribir "Demasiado bajo."
            Sino
                Escribir "Demasiado alto."
            FinSi
        FinSi
    Hasta Que intento = numero_secreto O intentos_usados = max_intentos
	
    Si intento <> numero_secreto Entonces
        Escribir "Lo siento, se te acabaron los intentos. El número era: ", numero_secreto
    FinSi
FinAlgoritmo