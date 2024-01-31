using Microsoft.AspNetCore.Mvc;
using TimberjackWebsite.Models;
using TimberjackWebsite.Services;

namespace TimberjackWebsite.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class EmailController : ControllerBase
    {
        private readonly IEmailService _emailService;

        public EmailController(IEmailService emailService)
        {
            _emailService = emailService;

        }

        [HttpGet]
        public ActionResult<ContactForm> CreateFormObject(string firstName, string lastName, string addressLine1, string addressLine2, string city,
            string state, string zipCode, string country, string email, string phone, string comments,
            string preference, string service, string heardAbout)
        {
            ContactForm newForm = _emailService.GenerateContactForm(firstName, lastName, addressLine1, addressLine2, city, state, zipCode, country, email, phone, comments, preference, service, heardAbout);

            bool emailSent = _emailService.SendEmail(newForm);

            if (!emailSent)
            {
                return BadRequest();
            }
            return Ok(newForm);
        }
    }
}