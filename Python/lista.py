notas = [7.9, 9.7, 8.2]
lista=[]
lista = list()
lista = [26,"Reinald", 3.14159, False]
lista_de_listas = [10,[1,2,3]]

#indexação e slices (fatiamento)

lista = [10,"Reinald", 3.14159, True]
print(lista[0])
print(lista[1])
print(lista[2])
print(lista[3])
#-1 é para acessar o ultimo elemento

lista = [10,50,30,40,25,60,5]
print(lista[0:3])
print(lista[3:6])
print(lista[3:])
print(lista[2:6:2])

for elemento in lista:
    print(elemento)
#Utilizando os indices
print("Comprimento da lista 7",len(lista))

for i in range(len(lista)):
    print(i)
#> Metodos de Listas

lista = [1,2,12,8,2]

#appende adciona o elemento no final da lista

lista.append(3)
print('Depois do apend' , lista)

#insert adciona elemento na posiçao de preferencia
 
lista.insert(2,10)
print('Depois do Insert',insert)

#extend junta duas lista

lista2=[1,2,3]

lista.extend(lista2)
print('Depois do extend', extend)

#pop remove o elemento na ultima posição ou o que vc especificar
lista.pop()
print('Lista apos o pop', pop)

lista.pop(0)
print('Lista apos o pop', pop)

#remove digo qual valor quero retirar, ele remove o primeiro encontrado

lista.remove(3)
print('Lista depois do remove')

#count metodo para contar quantos elementos na lista
print('quantos 2 tem na lista:', count(2))

#index procura o indice de um determinado elemento dentro da lista
print('Indice do elemento 2', lista.index(2))

#sort ordenar a lista

lista.sort()
print(lista)

lista.sort(reverse=True)
print(lista)

#Funcoes para lista

#len informa qtd de elementos da lista
print(len(lista))

#sum soma de lista, soma todos os elementos da lista
print(sum(lista))

#min retorna o menor valor

print('Menor elemento da lista', min)

#maior retorna o maior valor

print('Maior elemento da lista', max)


