﻿using System;

using System.Net;
using System.Net.Mail;
using TimberjackWebsite.Models;

namespace TimberjackWebsite.Services
{
    public class EmailService : IEmailService
    {
        public EmailService() { }
        public bool SendEmail(ContactForm formToSend)
        {
            MailAddress to = new MailAddress("jleya95@gmail.com");
            MailAddress from = new MailAddress("jleya95@gmail.com");

            MailMessage email = new MailMessage(from, to);
            email.Subject = $"Message from {formToSend.Name.First} {formToSend.Name.Last}";
            email.Body = GenerateEmailBody(formToSend);
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new NetworkCredential("jleya95@gmail.com", "plje adtv ksmm xyih");
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.EnableSsl = true;

            try
            {
                /* Send method called below is what will send off our email 
                 * unless an exception is thrown.
                 */
                smtp.Send(email);
                return true;
            }
            catch (SmtpException ex)
            {
                return false;
            }

        }

        public ContactForm GenerateContactForm(string firstName, string lastName, string addressLine1, string addressLine2, string city,
            string state, string zipCode, string country, string email, string phone, string comments, string preference, string service, string heardAbout)
        {
            ContactForm contactForm = new ContactForm();
            contactForm.Name.First = firstName;
            contactForm.Name.Last = lastName;
            contactForm.Address.Line1 = addressLine1;
            contactForm.Address.Line2 = addressLine2;
            contactForm.Address.City = city;
            contactForm.Address.State = state;
            contactForm.Address.ZipCode = zipCode;
            contactForm.Address.Country = country;
            contactForm.Email = email;
            contactForm.PhoneNumber = phone;
            contactForm.Comments = comments;
            contactForm.ContactPreference = preference;
            contactForm.ServiceNeeded = service;
            contactForm.HowHeard = heardAbout;

            return contactForm;
        }

        public string GenerateEmailBody(ContactForm formForEmail)
        {
            string emailBody = $"Name: {formForEmail.Name.First} {formForEmail.Name.Last} " +
                $"Address: {formForEmail.Address.Line1} {formForEmail.Address.Line2} " +
                $"{formForEmail.Address.City}, {formForEmail.Address.State} {formForEmail.Address.ZipCode} {formForEmail.Address.Country}" +
                $"Email: {formForEmail.Email} " +
                $"Phone: {formForEmail.PhoneNumber} " +
                $"Comments: {formForEmail.Comments} " +
                $"Contact Preference: {formForEmail.ContactPreference} " +
                $"Service Needed: {formForEmail.ServiceNeeded} " +
                $"How did you hear about us?: {formForEmail.HowHeard}";

            return emailBody;
        }
    }
}
