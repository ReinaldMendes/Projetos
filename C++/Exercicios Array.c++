using System;

internal class Program
{
    static void Main(string[] args)
    {
        //Exercício 1
        int[] arrayInteiros = new int[10];        
        double soma, media;

        Console.WriteLine("Vamos exibir a soma de 10 números inteiros e sua média?\n");
        soma = 0;

        for (int i = 0; i < arrayInteiros.Length; i++)
        {
            Console.Write($"{i + 1}º número: ");
            arrayInteiros[i] = int.Parse(Console.ReadLine());
            soma += arrayInteiros[i];
        }
        media = soma / arrayInteiros.Length;
        Console.WriteLine("===================");
        Console.WriteLine($"\nSoma: {soma}\nMédia: {media}");

        ProximoExercicio();

        //Exercício 2
        int[,] matriz = new int[3, 3];

        Console.WriteLine("Escolha 9 números para preencher uma matriz 3x3: \n");

        for (int linhas = 0; linhas < 3; linhas++)
        {
            for (int colunas = 0; colunas < 3; colunas++)
            {
                Console.Write($"Digite um número para a linha {linhas + 1} e coluna {colunas + 1}: ");
                matriz[linhas, colunas] = int.Parse(Console.ReadLine());
            }
            Console.Write("\n");
        }

        Console.WriteLine("===========================");
        Console.WriteLine($"A matriz resultante foi:\n");
        for (int linha = 0; linha < 3; linha++)
        {
            for (int coluna = 0; coluna < 3; coluna++)
            {
                Console.Write(matriz[linha, coluna] + " ");
            }
            Console.Write("\n");
        }

        ProximoExercicio();

        //Exercício 3
        string[] nomePessoas = new string[5];        

        Console.WriteLine("Vamos organizar 5 nomes por ordem alfabética? \n");

        for (int i = 0; i < nomePessoas.Length; i++)
        {
            Console.Write($"Pessoa {i + 1}: ");
            nomePessoas[i] = Console.ReadLine();            
        }

        Array.Sort(nomePessoas);
        Console.Write("\nA ordem alfabética é: \n\n");
        for (int i = 0; i < nomePessoas.Length; i++)
        {
            Console.WriteLine($"{i + 1} - " + nomePessoas[i]);
        }       
        ProximoExercicio();

        //Exercício 4
        int[] inteiros = new int[10];
        int[] frequencia = new int[10];
        int[] verificador = new int[10];        
        int contador, index;

        Console.WriteLine("Entre dez números, qual aparece com a maior frequência? Vamos descobrir? \n");
        
        for (int i = 0; i < 10; i++)
        {
            Console.Write($"Digite o {i + 1}º número: ");
            inteiros[i] = int.Parse(Console.ReadLine());
            verificador[i] = inteiros[i];
        }
        
        for (int i = 0; i < 10; i++)
        {
            contador = 0;
            for (int j = 0; j < 10; j++)
            {
                if (inteiros[i] == verificador[j])
                {
                    contador++;
                }      
            }
            frequencia[i] = contador;            
        }
        index = Array.IndexOf(frequencia, frequencia.Max());

        Console.WriteLine($"\nA maior frequência é do número {inteiros[index]} aparecendo {frequencia.Max()} vezes");
        Console.Write("\nAperte qualquer tecla para finalizar... ");
        Console.ReadKey(true);

        //Método para passar para o próximo exercício
        void ProximoExercicio()
        {
            Console.Write("\nAperte qualquer tecla para continuar... ");
            Console.ReadKey(true);
            Console.Clear();
        }
    } 
}