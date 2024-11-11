using Microsoft.EntityFrameworkCore;
using TaskYadav.Models;

namespace TaskYadav.Context
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext>options):base (options)
        { }

        public DbSet<Emp> Emps { get; set; }
    }
}
