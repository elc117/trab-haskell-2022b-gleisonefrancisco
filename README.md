# Gerando vetores com posição, cores e dimensões aleatórias utilizando Haskell e Python.

# Haskell
![Haskell](https://user-images.githubusercontent.com/74078237/215369757-32c7f039-ba71-4f8f-9c1b-91135b8e6d83.png)

## Descrição 
O código em Haskell gera um arquivo SVG (Scalable Vector Graphics) com círculos de cores aleatórias. O tamanho, a posição e a cor dos círculos são determinados aleatoriamente. A função main cria dois geradores de números aleatórios, um para determinar as cores e outro para determinar a posição e o tamanho. Em seguida, ele gera as strings de círculos e estilos  pseudo-aleatórios, e escreve o resultado em um arquivo chamado "output.svg".

## O código
- maxRGB e maxSize: definem o valor máximo das cores (255) e o tamanho dos círculos (300), respectivamente.

- type Circ: é um tipo de dados que representa uma tupla de três inteiros (r, cx, cy), que representam as características do círculo (cor, posição x e y).

- svgBegin: inicia a string de saída SVG com a definição de largura e altura.

- svgEnd: termina a string de saída SVG.

- svgCircle: gera a string de saída SVG que representa um círculo, com base nas informações de cor e posição.

- svgStyle: gera a string de atributos de estilo para o círculo.

- randomPalette: gera uma lista de tuplas de três inteiros que representam cores aleatórias.

- slice: extrai um subconjunto de uma lista.

- genRandomCirc: gera uma lista de tuplas de três inteiros que representam posições aleatórias e tamanhos de círculos.

main: é a função principal que inicia a geração aleatória de cores e posições de círculos, gera a string de saída SVG e a escreve em um arquivo "output.svg".

## Saída
A saída possui um padrão definido, uma imagem com fundo preto contendo 5 circulos com cores que podem ou não ser distindas. A seguir, 2 exemplos de saída.

### Saída 1:
![image](https://user-images.githubusercontent.com/74078237/215368515-e48f1f23-13ef-4f94-a373-19147b02b71d.png)

### Saída 2:
![image](https://user-images.githubusercontent.com/74078237/215368589-b6ea1bdb-6b3e-45ac-b7eb-528243a50931.png)

# Python
![cover-0402-an-introduction-to-mocking-in-python-Waldek_Newsletter-fdc7cce1eda95aee17e25b769a2bd183](https://user-images.githubusercontent.com/74078237/215369345-4951c1fa-4ab3-4356-a76e-a58ce55a8579.png)

## Descrição

O código em Python gera um arquivo SVG (Scalable Vector Graphics) que representa um desenho aleatório de círculos. O tamanho do canvas é definido como 500 x 500, e as propriedades dos círculos (tamanho, posição, cor) são geradas aleatoriamente. As funções svgBegin(), svgEnd(), svgCircle() e svgStyle() são responsáveis por construir as strings que representam o código SVG. A função randomPalette() gera uma lista de cores aleatórias e a função genRandomCirc() gera uma lista de círculos aleatórios. O resultado é salvo em um arquivo de saída chamado "output.svg".

## O código:
- svgBegin: Recebe como entrada o comprimento (w) e a altura (h) do canvas e retorna uma string no formato de início de uma imagem SVG, com as dimensões e cor de fundo especificadas.

- svgEnd: Não recebe nenhuma entrada e retorna uma string no formato de fechamento de uma imagem SVG.

- svgCircle: Recebe as coordenadas (cx, cy) do centro do círculo, o raio (r) e o estilo (style) e retorna uma string no formato de tag para um círculo SVG.

- svgStyle: Recebe as intensidades dos canais vermelho (r), verde (g) e azul (b) e retorna uma string com o estilo (cor) em formato de uma string SVG.

- randomPalette: Recebe o número de cores (n) e retorna uma lista de tuplas com intensidades aleatórias dos canais vermelho, verde e azul.

- genRandomCirc: Recebe o número de círculos (n) e retorna uma lista de tuplas com coordenadas aleatórias (cx, cy) do centro e raio aleatório (r) para cada círculo.

- main: Não recebe nenhuma entrada, gera paletas e círculos aleatórios, cria a string final da imagem SVG, escreve a string em um arquivo "output.svg".

- if __name__ == "__main__":: Verifica se o código está sendo executado como programa principal, se sim, chama a função main.


## Saída
A saída possui um padrão definido, uma imagem com fundo preto contendo 5 circulos com cores que podem ou não ser distindas. A seguir, 2 exemplos de saída.

### Saída 1:
![image](https://user-images.githubusercontent.com/74078237/215368633-8677be67-c2c9-4b03-ab9d-afc7f4967d76.png)

### Saída 2:
![image](https://user-images.githubusercontent.com/74078237/215368884-63a2e4f9-a93d-440d-b7da-7dc23948618e.png)

# O Time:

Gleison Antonio Pires da Silva
Francisco Albrecht Ribas

# Referências
[1] https://liascript.github.io/course/?https://raw.githubusercontent.com/AndreaInfUFSM/elc117-2022b/main/praticas/haskell01/README.md#22 <br>
[2] https://liascript.github.io/course/?https://raw.githubusercontent.com/AndreaInfUFSM/elc117-2022b/main/trabalhos/haskell/README.md#7 <br>
[3] https://liascript.github.io/course/?https://raw.githubusercontent.com/AndreaInfUFSM/elc117-2022b/main/praticas/haskell02/README.md#1 <br>
[4] https://pt.stackoverflow.com/questions/288003/duvida-erro-haskell <br>
[5] https://www.haskell.org/documentation/
