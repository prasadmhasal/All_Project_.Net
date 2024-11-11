using System.ComponentModel.DataAnnotations;

namespace test.Models
{
	public class Student
	{
		[Key]
		public int Id { get; set; }
		[Required]
		public string Name { get; set; }
		[Required]

		public string Standard  { get; set; }
		[Required]

		public string Email { get; set; }
	}
}
