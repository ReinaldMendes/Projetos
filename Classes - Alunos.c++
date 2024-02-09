using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exercicios
{
    public  class Aluno
    {
        private string Nome { get; set; }

        private int Idade { get; set; }

        private string Matricula { get; set; }

        public Aluno(string nome, int idade, string matricula)
        {
            Nome = nome;
            Idade = idade;
            Matricula = matricula;
        }

        public void AlterarNome(string nomeNovo)
        {
            Nome = nomeNovo;
        }

        public string ExibirNome()
        {
            return Nome;
        }
    }
}


---------------------------------------------

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exercicios
{
    public class Turma
    {
        private string Nome { get; set; }

        private int QuantidadeMaximaAlunos { get; set; }

        private List<Aluno> ListaAlunos { get; set; }

        public Turma(string nome, int quantidadeMaximaAlunos)
        {
            Nome = nome;
            QuantidadeMaximaAlunos = quantidadeMaximaAlunos;
        }

   
        public void AdicionarAluno(Aluno aluno)
        {
            if (ListaAlunos == null)
                ListaAlunos = new List<Aluno>();
            ListaAlunos.Add(aluno);
        }
        public void RemoverAluno(Aluno aluno)
        {
            ListaAlunos.Remove(aluno);
        }
        public int ObterQuantidadeAlunos()
        {
            if (ListaAlunos.Count() <= QuantidadeMaximaAlunos)
            {
                return ListaAlunos.Count();
            }
            else
            {
                Console.WriteLine("Essa turma está cheia");
                return 0;
            }
        }
    }
}


----------------------------------

using Exercicios;
using System;

internal class Program
{
    static void Main(string[] args)
    {
        int quantidadeAlunos = 0;
        Turma turma = new Turma("Turma de C#", 30);

        Aluno aluno1 = new Aluno("Phelipe", 32, "1111");
        Aluno aluno2 = new Aluno("Carol", 30, "2222");
        Aluno aluno3 = new Aluno("Marcos", 31, "3333");

        turma.AdicionarAluno(aluno1);
        turma.AdicionarAluno(aluno2);
        turma.AdicionarAluno(aluno3);

        quantidadeAlunos = turma.ObterQuantidadeAlunos();
        Console.WriteLine(quantidadeAlunos);

        turma.RemoverAluno(aluno3);
        quantidadeAlunos = turma.ObterQuantidadeAlunos();
        Console.WriteLine(quantidadeAlunos);

        aluno1.AlterarNome("Barbara");
        
        Console.WriteLine(aluno1.ExibirNome());
    }
}