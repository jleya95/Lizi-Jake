using System.ComponentModel.DataAnnotations;

namespace TimberjackWebsite.Models
{
    public class ContactUsForm
    {
        [Required]
        public string Name { get; set; }
        [Required]
        [EmailAddress(ErrorMessage = "Please enter a valid email address.")]
        public string Email { get; set; }
        [Required]
        public string Phone { get; set; }
        [Required]
        public string Subject { get; set; }
        [Required]
        public string Message { get; set; }
    }
}
