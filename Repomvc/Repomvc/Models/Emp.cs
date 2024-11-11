﻿using System.ComponentModel.DataAnnotations;

namespace Repomvc.Models
{
	public class Emp
	{
		[Key]
		public int Id { get; set; }

		public string? Name { get; set; }

		public string? Email { get; set; }

		public double salary { get; set; }
	}
}
