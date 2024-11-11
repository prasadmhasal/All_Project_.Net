using Microsoft.EntityFrameworkCore;

namespace Repomvc.Models
{
	public class ApplicationDbContext : DbContext
	{
		public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options)
		{ 
		}
		public DbSet<Emp> Emps { get; set; }
	}
}
