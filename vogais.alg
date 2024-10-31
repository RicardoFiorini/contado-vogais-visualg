algoritmo "Contador de Vogais"
variáveis
    frase : caractere[100]  // Array para armazenar a frase
    i, contador : inteiro
início
    // Inicializa o contador de vogais
    contador ← 0

    escreva("Digite uma frase: ")
    leia(frase)

    // Loop para contar as vogais
    para i de 1 até comprimento(frase) faça
        se (frase[i] = 'a' ou frase[i] = 'e' ou frase[i] = 'i' ou frase[i] = 'o' ou frase[i] = 'u' ou
            frase[i] = 'A' ou frase[i] = 'E' ou frase[i] = 'I' ou frase[i] = 'O' ou frase[i] = 'U') então
            contador ← contador + 1  // Incrementa o contador se for uma vogal
        fimse
    fimpara

    // Exibe o resultado
    escreva("O número de vogais na frase é: ", contador)
fimenquanto
