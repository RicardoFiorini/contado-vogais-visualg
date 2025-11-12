# 🗣️ Contador de Vogais em Portugol

Este é um algoritmo robusto em Portugol (dialeto **Portugol Studio**) que conta o número total de vogais em uma frase fornecida pelo usuário.

Este projeto vai além do básico, sendo otimizado para **desempenho, legibilidade e precisão** para a língua portuguesa, contando não apenas `a, e, i, o, u`, mas também todas as suas variações acentuadas.

## ✨ Funcionalidades

* **Contagem Precisa:** O contador identifica vogais independentemente de serem maiúsculas ou minúsculas (ex: 'a' e 'A' são contadas).
* **Suporte Total a Acentos:** Diferente da maioria dos exemplos básicos, este código é "maximizado" para o português e conta todas as variações acentuadas (ex: 'a', 'á', 'à', 'â', 'ã' são todas contadas).
* **Código Limpo e Modular:** A lógica de contagem é isolada em uma função `contarVogais()`, tornando o código principal (`inicio`) limpo e focado na interação com o usuário.
* **Eficiência com `escolha/caso`:** Em vez de usar um `se` (if) massivo com dezenas de `ou` (OR), o algoritmo usa a estrutura `escolha` (switch), que é mais rápida, limpa e legível.
* **Loop de Replay:** O usuário pode analisar múltiplas frases sem precisar reiniciar o programa.

## 🛠️ A Lógica da Otimização

O código original possuía uma longa e ineficiente estrutura `se`:

> `se (frase[i] = 'a' ou frase[i] = 'e' ... ou frase[i] = 'U')`

A versão melhorada resolve isso em três etapas:

1.  **Normalização:** A cada letra, o programa primeiro a converte para minúscula usando `Caracter.para_minusculo()`. Isso corta o número de verificações pela metade.
2.  **Agrupamento:** O programa usa `escolha/caso` para agrupar todas as variações de uma vogal em um único bloco.
3.  **Exemplo (A Vogal 'A'):**
    ```portugol
    escolha (letra_minuscula)
    {
       // Todas essas são tratadas como a vogal 'a'
       caso 'a', 'á', 'à', 'â', 'ã':
          totalVogais = totalVogais + 1
       
       //... casos para 'e', 'i', 'o', 'u' ...
    }
    ```

## 🚀 Como Executar

Este código foi escrito para o **Portugol Studio**.

1.  **Baixe e instale** o [Portugol Studio](https://portugol-studio.github.io/).
2.  **Copie** o código do arquivo.
3.  **Cole** o código no editor. As bibliotecas `Texto` e `Caracter` serão incluídas automaticamente.
4.  **Execute** o programa pressionando `F9`.
