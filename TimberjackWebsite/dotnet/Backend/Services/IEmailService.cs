using TimberjackWebsite.Models;

namespace TimberjackWebsite.Services
{
    public interface IEmailService
    {
        public bool SendEmail(ContactForm formToSend);
        public bool SendContactUsEmail(ContactUsForm formToSend);
        public ContactForm GenerateContactForm(string firstName, string lastName, string addressLine1, string addressLine2, string city,
            string state, string zipCode, string country, string email, string phone, string comments, string preference, string service, string heardAbout);
        public ContactUsForm GenerateContactUsForm(string name, string email, string phone, string subject, string body);
    }
}
