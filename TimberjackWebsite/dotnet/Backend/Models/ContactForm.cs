using System.ComponentModel.DataAnnotations;

namespace TimberjackWebsite.Models
{
    public class ContactForm
    {
        public Name Name { get; set; } = new Name();
        public Address Address { get; set; } = new Address();
        [Required]
        [EmailAddress(ErrorMessage = "Please enter a valid email address.")]
        public string Email { get; set; }
        [Required]
        public string PhoneNumber { get; set; }
        public string Comments { get; set; }
        public string ContactPreference { get; set; }
        [Required]
        public string ServiceNeeded { get; set; }
        public string HowHeard { get; set; }
    }

    public class Name
    {
        [Required]
        public string First { get; set;}
        public string Last { get; set;}
    }

    public class Address
    {
        public string Line1 { get; set; }
        public string Line2 { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string ZipCode { get; set; }
        public string Country { get; set; }
    }
}
