# Declaração de variáveis
a=7
b=2

# Soma 7 + 2 == 9
print(a+b)
print(type(a+b))

# Subtração 7 - 2 == 5
print(a-b)

# Multiplicação 7 * 2 == 14
print(a*b)

# Divisão 7 / 2 == 3.5 -> Observe que o resultado final é uma variável do tipo float
print(a / b)

# potência 7 ** 2 == 7 * 7 == 49
print(7 ** 2)

# divisão inteira e resto da divisão
# 7 dividido por 2 é 3 inteiros mais 1 de resto. 3 * 2 + 1 == 7
print(a//b)
print(a%b)

# Concatenação de 2 textos
print('Reinald ' + 'Gato')

# Repetir a palavra 'Olá' 5 vezes
print ('Olá ' * 5)

# print com repetição
print('_' *105)
print()
print(' '*30,'Seja Bem Vindo ao curso de Python da DNC')
print('_'*105)

"""Ordem de Precedência Aritmética
Parênteses: ( )
Potência: **
Multiplicação, Divisão, Resto, Divisão inteira: *, /, %, //
Soma e Subtração: +, -
Exercícios
Para as contas abaixo utilize as variáveis:
a = 5

b = 7

c = 3.45

d = 5.50"""

# Declarando as variáveis:
a = 5
b = 7
c = 3.45
d = 5.50

# Quanto é: a + b * d
print(a + b * d)

# Quanto é: (a + b) * d
print((a + b) * d)

# Quanto é: b ** a * c
print(b ** a * c)

# Quanto é: b ** (a * c)
print(b ** (a * c))

"""Problema 1
Fui numa hamburgueria e comprei 2 lanches de 10,90 cada, 3 refris de 4,50 cada e 1 batata por 8,45.

O pagamento foi no dinheiro com uma notas de 10 reais e 5 reais. Pergunta-se:

Qual foi o valor total da conta?
Quantas notas de 10 reais eu usei?
Quantas notas de 5 reais eu usei?
Quanto voltou de troco pra mim em notas?
Quanto voltou de troco pra mim em moedas?

"""
# Declarando as variáveis
lanchePreco = 10.90
lancheQtd = 2
refriPreco = 4.50
refriQtd = 3
batataPreco = 8.45
batataQtd = 1
contaTotal = lanchePreco*lancheQtd + refriPreco*refriQtd + batataPreco*batataQtd

# Respondendo item 1:
print('O valor total da conta foi de: R$',contaTotal)

# Calculando item 2:
nota10Qtd = contaTotal // 10
valorFaltante = contaTotal - nota10Qtd*10

print(nota10Qtd)
print(valorFaltante)

# Respondendo item 2:
# Já que o valorFaltante é menor que 5 reais, então não preciso gastar outra nota de 10

print('Usei', nota10Qtd,'notas de 10 reais')

# Calculando item 3:
nota5Qtd = valorFaltante // 5 + 1
valorFaltante = valorFaltante - nota5Qtd * 5

print(nota5Qtd)
print(valorFaltante)

# Respondendo item 3:
# Já que o novo valorFaltante é menor do que 0 reias, então já paguei o que eu precisava. Não estou devendo

print('Usei', nota5Qtd,'notas de 5 reais')

# Calculando item 4:
# Já que a única nota menor que 5 reais é a nota de 2 reais, temos que ver se ela é maior do que o Valor Faltante.

nota2Qtd = (-valorFaltante) // 2
valorFaltante = valorFaltante + nota2Qtd * 2

print(nota2Qtd)
print(valorFaltante)



# Respondendo item 4:
print('Recebi', nota2Qtd,'notas de 2 reais')


#Transformando Variáveis
'''Utilizamos as seguintes funções para transformar os tipos das variáveis:

Para transformar para string: str( )

Para transformar para inteiro: int( )

Para transformar para real: float( )'''

'''Essa funcionalidade é muito utilizada para tratar os dados de
 inputs de usuários e/ou para tratar dados importados de outras fontes
  e bancos de dados.

Exemplos
Vamos utilizar as seguintes variáveis:

a = 1.857

b = '4'

c = True

d = False

e = 'tex34'

Usando o int( )
Transforme as variáveis acima para int'''


# Declarando as variáveis
a = 1.857
b = '4'
c = True
d = False
e = 'tex34'

# int(a) 

print(int(a)) #fazer para todos



# float(a) 
float(a) #fazer para todos



# str(a) 
str(a) #fazer para todos

#O mesmo acontece com as variáveis Booleanas.


"""Impressão personalizada
print( ) com .format( )
[ ]
↳ 5 células ocultas
Exercícios
Exercício 1:
Vamos testar os comportamentos dos diferentes operadores aritméticos.
 Para isso vamos montar uma calculadora, eai? Bora, vamos nessa?

Criar variáveis n1 e n2 que receberão inputs do tipo INT do usuário.
 (não se esqueça de tratar o que está sendo recebido rsrs)
  Exibir o resultado da Adição dessas 2 variáveis.
   Exibir o resultado da Subtração dessas variáveis. 
   Exibir o resultado da Multiplicação dessas variáveis. 
   Exibir o resultado da Divisão dessas variáveis. 
   Exibir o resultado do Módulo (Resto da divisão) entre essas variáveis.
    Exibir o resultado de uma variável Exponenciando a outra. [ ]
"""
"""Resultado Esperado

account_circle
N1: 7
N2: 5
12
2
35
1.4
2
16807"""

N1=int(input())
N2=int (input())

print(N1+N2)
print(N1-N2)
print(N1*N2)
print(N1/N2)
print(N1%N2)
print(N1**N2)

E"""xercício 2:
Faça um programa que o usuário digita um valor inteiro e nós mostramos toda a tabuada daquele número.

Resultado Esperado
image.png

[ ]

account_circle
Digite um número inteiro: 13
-----------------
 13 *  0 =     0
 13 *  1 =    13
 13 *  2 =    26
 13 *  3 =    39
 13 *  4 =    52
 13 *  5 =    65
 13 *  6 =    78
 13 *  7 =    91
 13 *  8 =   104
 13 *  9 =   117
 13 * 10 =   130"""

entrada=int(input('Digite um valor de inteiro '))
operador=0
for operador in range (11) :

  resultado=entrada*operador
  print(entrada,' * ',operador,' = ', resultado)

"""Exercício 3:
Faça um programa no qual o usuário digite a distância percorrida
 por um carro e a qtd de litros de combustível gasto.

Calcule e mostre para o usuário quantos km/l o seu carro faz.

Resultado Esperado
image.png

[ ]
account_circle
Quantos km você rodou com seu carro? 200
Quantos litros de combustível foi gasto? 12
O seu carro faz: 16.67km/l"""

Distancia=float(input("Qual a distacia rodou com seu carro?"))
Combustivel=float(input("Quantos litros de combustível foi gasto?"))
resultado=Distancia/Combustivel
print("O seu carro faz {:.2f} km/l".format(resultado))


