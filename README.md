# Gerando vetores com posição, cores e dimensões aleatórias utilizando Haskell e Python.

# Haskell

## Descrição 
O código em Haskell gera um arquivo SVG (Scalable Vector Graphics) com círculos de cores aleatórias. O tamanho, a posição e a cor dos círculos são determinados aleatoriamente. A função main cria dois geradores de números aleatórios, um para determinar as cores e outro para determinar a posição e o tamanho. Em seguida, ele gera as strings de círculos e estilos aleatórios, e escreve o resultado em um arquivo chamado "output.svg".

## Saída
A saída possui um padrão definido, uma imagem com fundo preto contendo 5 circulos com cores que podem ou não ser distindas. A seguir, 2 exemplos de saída.

### Saída 1:
![image](https://user-images.githubusercontent.com/74078237/215368515-e48f1f23-13ef-4f94-a373-19147b02b71d.png)

### Saída 2:
![image](https://user-images.githubusercontent.com/74078237/215368589-b6ea1bdb-6b3e-45ac-b7eb-528243a50931.png)

# Python

## Descrição

O código em Python gera um arquivo SVG (Scalable Vector Graphics) que representa um desenho aleatório de círculos. O tamanho do canvas é definido como 500 x 500, e as propriedades dos círculos (tamanho, posição, cor) são geradas aleatoriamente. As funções svgBegin(), svgEnd(), svgCircle() e svgStyle() são responsáveis por construir as strings que representam o código SVG. A função randomPalette() gera uma lista de cores aleatórias e a função genRandomCirc() gera uma lista de círculos aleatórios. O resultado é salvo em um arquivo de saída chamado "output.svg".

## Saída
A saída possui um padrão definido, uma imagem com fundo preto contendo 5 circulos com cores que podem ou não ser distindas. A seguir, 2 exemplos de saída.

### Saída 1:
![image](https://user-images.githubusercontent.com/74078237/215368633-8677be67-c2c9-4b03-ab9d-afc7f4967d76.png)

### Saída 2:
![image](https://user-images.githubusercontent.com/74078237/215368884-63a2e4f9-a93d-440d-b7da-7dc23948618e.png)
