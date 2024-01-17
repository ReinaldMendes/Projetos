#Funçoes
#print()
#input()
#len()
#max()

#Criar Função
#Funçao inicial

def saudacao():
    print('Seja bem vindo(a)')
    print('É um prazer ter vc aqui')    
saudacao()

#função com paramentro

def saudacao(nome,curso):
    print(f'Seja bem vindo(a), {nome}!')
    print(f'É um prazer ter vc aqui no curso, {curso}!')
saudacao('Reinald', 'Python')

#Funçaõ com parametro Default

def saudacao(nome='Reinald',curso='Python'):
    print(f'Seja bem vindo(a), {nome}!')
    print(f'É um prazer ter vc aqui no curso, {curso}!')
saudacao

#Funçao de retorno

def soma( num1, num2):
    return num1+num2
resultado = soma (5,7)
print('O resultado da soma é', resultado)   

def calculadora(num1, num2, operacao ='+'):
    if operacao == '+':
        return num1 + num2
    elif operacao == '-':
        return num1-num2  

resultado = calculadora(10,20,'-')  
print(resultado)