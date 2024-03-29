# -*- coding: utf-8 -*-
"""Lista Compostas [prática].ipynb

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/17RqYgMD7o7kNdokWCq1uNw8eGVP-27z3

![dnc.png](data:image/png;base64,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)

<br>Consultor: Everton Menezes </br>

# Listas dentro de Listas

As listas aceitam qualquer tipo de dados, até outras listas.

## Declarando uma lista composta

Para declarar uma lista composta é só colocar uma lista dentro da outra

<h2> Entendendo como as listas compostas funcionam </h2>

Imagina que eu tenho um cardápio. Dentro dele eu tenho vários comidas com seus respectivos preços.

O cardápio seria então uma lista com todas as comidas

Cada comida vai ser uma lista com o Nome da Comida e o seu Preço.

```
comida1 = ['Lanche', 10.9]
comida2 = ['Batata',  5.5]
comida3 = ['Refri' ,  3.9]
cardapio = [comida1, comida2, comida3]
```
Então acessando os termos temos:
```
cardapio[0]    == comida1 == ['Lanche', 10.9]
cardapio[0][1] == comida1[1] == 10.0
cardapio[2]    == comida3 == ['Refri' ,  3.9]
cardapio[2][0] == comida3[0] == 'Refri'
```
Vamos pegar uma lista dentro de outra lista já declarada e vamos entender como funciona acessar seus termos.

<h3> Exemplo 1 </h3>

Dado a lista abaixo:
```
cardapio = [['Lanche', 10.9], ['Batata',  5.5], ['Refri' ,  3.9]]
```
Acesse os valores:
1. `cardapio[0]`, `cardapio[1]` e `cardapio[2]`
2. `cardapio[0][0]`, `cardapio[0][1]`, `cardapio[1][0]`, `cardapio[1][1]`
Repare nos tipos de cada variável
"""

# Declarando a lista de listas:
cardapio = [['Lanche', 10.9], ['Batata',  5.5], ['Refri' ,  3.9]]
print(cardapio)
# Imprimindo os valores:
print(f'cardapio[0] = {cardapio[0]}')
print(f'cardapio[1] = {cardapio[1]}')
print(f'cardapio[2] = {cardapio[2]}')
print()
print(f'cardapio[1][0] = {cardapio[1][0]}')

"""Repare que sempre que estamos acessando os valores dentro da lista: o **primeiro** `[ ]` vai acessar as posições mais externas da lista, o **segundo** `[ ]` vai acessar as posição da lista referente à lista do **primeiro** `[ ]` e assim em diante.

Agora que já entendemos como acessar seus valores vamos ver como declarar uma lista composta.

<h2> Declarando por partes </h2>

Neste caso declara-se cada item de dentro da lista principal e depois colocam-se seus valores dentro da lista principal. Para quem está começando é a forma mais simples de entender:

```
lanche = ['Lanche', 10.9]
batata = ['Batata',  5.5]
refri  = ['Refri' ,  3.9]
cardapio = [lanche, batata, refri]
```
No exemplo acima foram criadas 3 variáveis para armazenar listas com as informações de cada comida. A seguir essas listas foram colocadas dentro da lista principal: cardapio.

<h3> Exemplo 2 </h3>

* Declare a lista do exemplo acima.
* Imprima o valor da posição: `cardapio[1][0]`
* Compare os valores: `lanche == cardapio[0]`
"""

# Declarando a lista de listas:
lanche = ['Lanche', 10.9]
batata = ['Batata',  5.5]
refri  = ['Refri' ,  3.9]
cardapio = [lanche, batata, refri]
# Imprimindo os valores:
print(cardapio[1][0])
print(f'lanche = {lanche} e cardapio[0] =  {cardapio[0]}')
print( lanche)

"""<h2> Declaração direta </h2>

Nesse caso declara-se tudo de uma só vez.

```
cardapio = [['Lanche', 10.9], ['Batata',  5.5], ['Refri' ,  3.9]]
```
Já neste exemplo, nós temos o `[]` mais externo que é a lista mais externa, no qual cada posição dela vai acessar uma das 3 listas dentro do cardápio.

Os `[]` mais internos são listas de cada uma das comidas do cardápio mostrando os nomes e preços de cada item do cardápio.

<h3> Exemplo 3 </h3>

* Declare a lista do exemplo acima.
* Imprima o valor da posição: `cardapio[2]` e `cardapio[2][1]`
"""

# Declarando a lista de listas:
cardapio= [['lanche', 10.90], ['batata', 5.5], ['Refri', 3.5]]

# Imprimindo os valores:
print(cardapio)

"""<h2> Declaração com .append() </h2>

Como vimos nas aulas anteriores podemos usar o append para inserir um novo item a uma lista.

No caso de lista composta podemos usar o `.append()` para inserir uma nova lista dentro da lista mais externa.

```
cardapio = []
comida = []
comida.append('Lanche')
comida.append(10.9)
cardapio.append(comida[:])
```
Verifique que primeiro temos que declarar nossa lista externa cardapio como uma lista vazia.

A seguir criamos uma lista com os itens `comida`

Finalmente usamos o `.append()` para colocarmos esses valores dentro da lista externa: `cardapio`

<h3> Exemplo 4 </h3>

* Declare a lista cardapio inteira usando o `append()`
* Imprima o valor da posição: `cardapio[0]` e `cardapio[0][1]`
"""

# Declarando a lista de listas:
cardapio= []
comida=[]

# Imprimindo os valores:

comida.append('Batata')
comida.append(5.5)
cardapio.append(comida[:])
comida.clear()

comida.append('Refri')
comida.append(3.5)
cardapio.append(comida[:])
comida.clear()

print(f'cardapio[0] = {cardapio[0]}')
print(f'cardapio[0][1] = {cardapio[0][1]}')

"""Observe que tivemos que usar um método novo:

```
var.clear()
```
Esse método limpa a memória da variável eliminando todos os valores que existam dentro dela.

Esse é um método muito útil para quando criamos algumas variáveis temporárias.

<h2> Exercício 1 </h2>

Usando o método do `append()` e `loops` crie uma lista composta na qual o usuário irá fornecer os termos

* A lista externa deve ter 3 itens
* A lista interna deve ter 2 itens cada.
"""

# Declarando as listas vazias
cardapio = []
comida = []

# Pedindo para o usuário fornecer os valores
for c in range(0,3):
  comida.append(str(input('Nome da comida: ')))
  comida.append(float(input('Preço da comida: ')))
  cardapio.append(comida[:])
  comida.clear()    #limpando a memória da variável
print(cardapio)

"""## Acessando os valores de uma lista composta

Para acessar os valores de uma lista composta é só usar os `[ ]`.

Sempre é acessada a lista mais externa para a mais interna

<h2> Acesso direto </h2>

Para acessar as listas é só colocar a posição da lista desejada no primeiro `[ ]`

```
cardapio[0]    == ['Lanche', 10.9]
cardapio[1]    == ['Batata',  5.5]
cardapio[2]    == ['Refri' ,  3.9]
```
Para acessar os valores dentro das listas é só colocar a posição do valor da lista desejada no segundo `[ ]`

```
cardapio[0][1] == 10.9
cardapio[1][0] == 'Batata'
cardapio[2][0] == 'Refri'
```

<h3> Exemplo 5 </h3>

Dado a lista anterior: `cardapio` acesse os valores listados acima.
"""

# Acessando as listas:
print(cardapio[0])
print(cardapio[1])
print(cardapio[2])

# Acessando os valores dentro das listas:
print(cardapio[0][1])
print(cardapio[1][0])
print(cardapio[2][0])

"""<h2> Acessando valores dentro de um for </h2>

Assim como podemos declarar os valores dentro de loopings também podemos acessá-los.
```
for c in cardapio:
  print(f'c = {c}, c[0] = {c[0]}, c[1] = {c[1]}')
```
Basicamente o funcionamento do for é: Para cada `lista c` dentro de `cardapio`, plote a posição `[pos]` dessa lista.

<h3> Exemplo 6 </h3>

Dado a lista anterior: `cardapio`, acesse:
* Todos os nomes no cardápio
* Todos os preços no cardápio
"""

# Imprimindo todas as listas c
for c in cardapio:
  print(f'c = {c}')
print('-'*20)

# Imprimindo todos os nomes
for c in cardapio:
  print(f'c[0] = nome = {c[0]}')
print('-'*20)

# Imprimindo todos os preços
for c in cardapio:
  print(f'c[1] = preço = {c[1]}')
print('-'*20)

"""# Exercícios

<h2> Exercício 1 </h2>

Dada a lista:
```
cardapio = [['Lanche', 10.9], ['Batata',  5.5], ['Refri' ,  3.9]]
```
Faça um programa que irá mostrar o cardápio do restaurante de forma organizada.
"""



"""<h2> Exercício 2 </h2>

Faça um programa que irá mostrar item a item do cardápio para o usuário e irá perguntar quantos daquele item a pessoa quer comprar.

No final mostre a quantidade de cada item comprado e também o valor total da compra.
"""



"""<h2> Exercício 3 </h2>
Faça um programa que o usuário cadastre algumas informações sobre clientes:

* nome
* email
* telefone
* idade

A seguir faça um sistema de pesquisa no qual o usuário digita o email e o sistema mostra todas as informações deste usuário.

"""

