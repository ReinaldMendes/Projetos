using ListaTarefas.Models;
using Microsoft.EntityFrameworkCore;

namespace ListaTarefas.Data
{
    public class AppDbContext : DbContext
    {        public DbSet<Tarefa> Tarefas { get; set; }
        protected override void OnConfiguring(
            DbContextOptionsBuilder optionsBuilder)
            => optionsBuilder.UseSqlite(connectionString: "DataSource=app.db;Cache=Shared");
    }
}




using ListaTarefas.Data;
using ListaTarefas.Repository;
using ListaTarefas.Repository.Interfaces;

namespace ListaTarefas
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var builder = WebApplication.CreateBuilder(args);

            builder.Services.AddControllersWithViews();
            builder.Services.AddControllers();

            builder.Services.AddDbContext<AppDbContext>();
            builder.Services.AddTransient<ITarefaRepository, TarefaRepository>();

            builder.Services.AddEndpointsApiExplorer();
            builder.Services.AddSwaggerGen();

            var app = builder.Build();

            if (app.Environment.IsDevelopment())
            {
                app.UseSwagger();
                app.UseSwaggerUI();
            }

            app.UseHttpsRedirection();
            app.UseAuthorization();
            app.MapControllers();

            app.Run();
        }
    }
}



using System.ComponentModel.DataAnnotations.Schema;

namespace ListaTarefas.Models
{
    [Table("Tarefa")]
    public class Tarefa
    {
        [Column("id")]
        public int Id { get; set; }
        [Column("descricao")]
        public string Descricao { get; set; }
        [Column("dataCriacao")]
        public DateTime DataCriacao { get; set; }
        [Column("responsavel")]
        public string Responsavel { get; set; }
        [Column("isConcluido")]
        public bool IsConcluido { get; set; }
    }
}



using ListaTarefas.Data;
using ListaTarefas.Models;
using ListaTarefas.Repository.Interfaces;

namespace ListaTarefas.Repository
{
    public class TarefaRepository : ITarefaRepository
    {
        private readonly AppDbContext _context;

        public TarefaRepository(AppDbContext context)
        {
            _context = context;
        }

        public List<Tarefa> ConsultarTodasTarefas()
        {
            return _context.Tarefas.ToList();
        }

        public List<Tarefa> ConsultarTarefasConcluidas()
        {
            return _context.Tarefas.Where(tarefa => tarefa.IsConcluido == true).ToList();
        }

        public List<Tarefa> ConsultarTarefasEmAberto()
        {
            return _context.Tarefas.Where(tarefa => tarefa.IsConcluido == false).ToList();
        }

        public Tarefa IncluirTarefa(Tarefa tarefa)
        {
            _context.Tarefas.Add(tarefa);
            _context.SaveChanges();
            return tarefa;
        }

        public Tarefa AtualizarDescricao(Tarefa tarefa)
        {
            _context.Tarefas.Update(tarefa);
            _context.SaveChanges();
            return tarefa;
        }

        public void ExcluirTarefa(int id)
        {
            var tarefa = ObterTarefaById(id);
            if (tarefa != null)
            {
                _context.Tarefas.Remove(tarefa);
                _context.SaveChanges();
            }
        }

        public Tarefa ObterTarefaById(int id)
        {
            return _context.Tarefas.Find(id);
        }
    }
}



using ListaTarefas.Models;

namespace ListaTarefas.Repository.Interfaces
{
    public interface ITarefaRepository
    {
        List<Tarefa> ConsultarTodasTarefas();
        List<Tarefa> ConsultarTarefasConcluidas();
        List<Tarefa> ConsultarTarefasEmAberto();
        Tarefa IncluirTarefa(Tarefa tarefa);
        Tarefa AtualizarDescricao(Tarefa tarefa);
        void ExcluirTarefa(int id);
    }
}



using ListaTarefas.Models;
using ListaTarefas.Repository.Interfaces;
using Microsoft.AspNetCore.Mvc;

namespace ListaTarefas.Controllers
{
    [Route("[controller]")]
    public class ListaTarefasController : Controller
    {
        private readonly ITarefaRepository _tarefa;

        public ListaTarefasController(ITarefaRepository tarefa)
        {
            _tarefa = tarefa;
        }

        [HttpGet("[action]")]
        public List<Tarefa> ConsultarTodasTarefas()
        {
            return _tarefa.ConsultarTodasTarefas();
        }

        [HttpGet("[action]")]
        public List<Tarefa> ConsultarTarefasConcluidas()
        {
            return _tarefa.ConsultarTarefasConcluidas();
        }

        [HttpGet("[action]")]
        public List<Tarefa> ConsultarTarefasEmAberto()
        {
            return _tarefa.ConsultarTarefasEmAberto();
        }

        [HttpPost("[action]/{tarefa}")]
        public Tarefa IncluirTarefa([FromQuery] Tarefa tarefa)
        {
            return _tarefa.IncluirTarefa(tarefa);
        }

        [HttpPut("[action]")]
        public Tarefa AtualizarDescricao([FromQuery] Tarefa tarefa)
        {
            return _tarefa.AtualizarDescricao(tarefa);
        }

        [HttpDelete("[action]/{id}")]
        public void ExcluirTarefa(int id)
        {
            _tarefa.ExcluirTarefa(id);
        }
    }
}
