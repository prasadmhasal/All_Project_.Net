using Microsoft.EntityFrameworkCore;
using test.Models;

namespace test.Context
{
	public class ApplicationDbContext : DbContext
	{
		public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options) 
		{ 
		}

		public DbSet<Student> students { get; set; }
	}
}
