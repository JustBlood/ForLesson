using System.ComponentModel.DataAnnotations;

namespace aspAttempt.Models
{
    public class Vars
    {
        public Int64 Id { get; set; }
        [Required]
        public string? Name { get; set; }
        [Required]
        public string? Value { get; set; }
    }
}