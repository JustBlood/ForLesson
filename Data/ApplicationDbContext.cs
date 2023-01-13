using Microsoft.EntityFrameworkCore;
using aspAttempt.Models;

namespace aspAttempt.Data
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options)
        {
        }

        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);
        }

        public DbSet<Vars> Vars { get; set; }

    }
}