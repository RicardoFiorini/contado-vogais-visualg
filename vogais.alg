algoritmo "Contador_de_Vogais_Melhorado"
// Autor: Ricardo Fiorini Cuato
// Data: 12/11/2025
// Descrição: Conta vogais em uma frase, incluindo acentos,
//            de forma eficiente e modular.

// (Requer a biblioteca 'Caracter' e 'Texto' do Portugol Studio)
inclua biblioteca Texto
inclua biblioteca Caracter

//-------------------------------------------------------------
// FUNÇÃO: contarVogais
// Objetivo: Recebe uma frase e retorna o número total de vogais.
//           Conta maiúsculas, minúsculas e acentuadas.
//-------------------------------------------------------------
funcao contarVogais(frase: cadeia): inteiro
   var
      totalVogais: inteiro = 0
      i: inteiro
      letra: caractere

   // Loop 0-indexado do Portugol Studio
   para (i = 0; i < Texto.numero_caracteres(frase); i++)
   {
      // 1. Pega a letra na posição 'i'
      letra = Texto.obter_caracter(frase, i)
      
      // 2. Converte para minúscula para simplificar a verificação
      letra = Caracter.para_minusculo(letra)
      
      // 3. Usa 'escolha' (switch) por ser mais limpo e eficiente
      escolha (letra)
      {
         // Agrupa todas as formas da vogal 'A'
         caso 'a', 'á', 'à', 'â', 'ã':
            totalVogais = totalVogais + 1
            pare // (Opcional no Portugol Studio, mas boa prática)
            
         // Agrupa todas as formas da vogal 'E'
         caso 'e', 'é', 'ê':
            totalVogais = totalVogais + 1
            pare
            
         // Agrupa todas as formas da vogal 'I'
         caso 'i', 'í':
            totalVogais = totalVogais + 1
            pare
            
         // Agrupa todas as formas da vogal 'O'
         caso 'o', 'ó', 'ô', 'õ':
            totalVogais = totalVogais + 1
            pare
            
         // Agrupa todas as formas da vogal 'U'
         caso 'u', 'ú', 'ü':
            totalVogais = totalVogais + 1
            pare
      }
   }
   
   retorne totalVogais
fimfuncao

//-------------------------------------------------------------
// BLOCO PRINCIPAL
// Objetivo: Controlar a interação com o usuário.
//-------------------------------------------------------------
inicio
   var
      fraseUsuario: cadeia
      continuar: caractere

   repita
      limpatela()
      escreval("--- Contador de Vogais (com acentos) ---")
      escreva("Digite uma frase: ")
      leia(fraseUsuario)
      
      escreval
      escreval("Analisando a frase...")
      escreval("Resultado: A frase tem ", contarVogais(fraseUsuario), " vogais.")
      escreval
      
      escreva("Deseja contar outra frase? (S/N): ")
      leia(continuar)
      
   ate (maiusc(continuar) = "N")
   
   limpatela()
   escreval("Obrigado por usar o contador.")
   
fimalgoritmo
