"""Você deverá utilizar o que aprendeu nas aulas de condicionais para
desenvolver os desafios a seguir:
1. Seu primeiro desafio é desenvolver um programa para um depósito de
bebidas que valide venda de bebidas para maiores de idade (maior ou
igual 18 anos) no mercado, o programa deve receber do usuário os
valores do nome e ano que ele nasceu e retornar se ele pode comprar
bebidas.
2. Esse bimestre na faculdade você precisa tirar nota 8 de média para
passar na matéria, desenvolva um script que leia a nota de suas
últimas 3 provas, tire a média delas e verifique se você passou.
3. A fisioterapeuta que você vai gosta muito de brincar com números, e
pediu para você criar um sistema que verifique se a altura inserida é
par ou impar.
4. Faça um script que você coloque a quantidade de dias e descubra em
qual trimestre esse dia está no ano.
5. Desenvolva um sistema que leia 3 números e diga qual é o maior (se
houver empate, exiba os empatados)."""

#################1

"""nome=input('Qual seu nome? ')
ano=int(input('Qual ano você nasceu? '))
ano_Atual=2023
Idade= ano_Atual - ano
if Idade>=18:
    print('Olá {}. Você é maior de idade e tem {} anos, sendo assim, pode comprar a bebida'.format(nome,Idade))
else:
    print('Olá {}. Você é menor de idade e tem {} anos, sendo assim, não pode comprar a bebida'.format(nome,Idade))    
"""

##################2

"""nota1=float(input('digite sua primeira nota  '))
nota2=float(input('digite sua segunda nota  '))
nota3=float(input('digite sua terceira nota  '))

media=(nota1+nota2+nota3)/3

if media >= 8.0 :
    print('Parabéns você esta aprovado por média')
else:
    print('Infelizmente você está reprovado por média')    """

###################3

"""altura=float(input('Insira sua altura: '))

if altura%2 == 0 :
    print("Sua altura é {} e ela é par".format(altura))
else:  
    print("Sua altura é {} e ela é impar".format(altura))"""

##################4

"""ano = 360
dia = int(input('Digite quantos dias já se passaram desse ano : '))

if dia <=180 :
    print('Esse ano tem {} dias e estamos no 1º trimestre'.format(ano))
else:
    print('Esse ano tem {} dias e estamos no 2º trimestre'.format(ano))    
"""

##################5
a = int(input('Digite o primeiro numero: '))
b = int(input('Digite o segundo numero: '))
c = int(input('Digite o terceiro numero: '))

if a > b and a > c :
    print("O numero {} que pertence a variavel a é maior que o numero {} que pertence a variavel b e que o numero {} que pertence a variavel c".format(a,b,c))
elif b < a and b < c:
    print("O numero {} que pertence  variavel b é menor que o numero {} que pertence a variavel a e que o numero {} que pertence a variavel c".format(b,a,c))    
elif c>a and c>b:
    print("O numero {} que pertence a variavel c é maior que o numero {} que pertence a variavel b  e que o numero {} que pertence a variavel a".format(c,b,a)) 
elif c==a and c==b:
    print('Os numeros são iguais')       
else: 
    print("O numero{}  que pertence a variavel b é o maior numero".format(b))    