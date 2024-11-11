using System.ComponentModel.DataAnnotations;
using System.Numerics;

namespace TaskYadav.Models
{
    public class Emp
    {
        [Key]
        public int Id { get; set; }

        public string Name { get; set; }

        public string Email { get; set; }

        public string Phone { get; set; }

        public string Address { get; set; }
    }
}
