using TimberjackWebsite.Models;

namespace TimberjackWebsite.Services
{
    public interface IEmailService
    {
        public bool SendEmail(ContactForm formToSend);
        public ContactForm GenerateContactForm(string firstName, string lastName, string addressLine1, string addressLine2, string city,
            string state, string zipCode, string country, string email, string phone, string comments, string preference, string service, string heardAbout);
    }
}
