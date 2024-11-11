using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.Mail;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace calculater
{
    public partial class EmailSending : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void sendMail(string to , string subject , string body, List<string> attachmentPaths)
        {
            MailMessage mail = new MailMessage();
            mail.From = new MailAddress("prasadmhasal@gmail.com");

            mail.To.Add(to);
            mail.Subject = subject;
            mail.Body = body;

            foreach (string attachmentPath in attachmentPaths)
            {
                Attachment attachment = new Attachment(attachmentPath);
                mail.Attachments.Add(attachment);
            }

            SmtpClient smtp = new SmtpClient("smtp.gmail.com"); 
            smtp.Port = 587;
            smtp.Credentials = new NetworkCredential("prasadmhasal@gmail.com", "acgzkibvythynsla");
            smtp.EnableSsl = true;
            smtp.Send(mail);
            Response.Write("<script>alert('email send successfully')</script>");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string to, subject, body;
            List<string> attachmentPaths = new List<string>();
            to =TextBox1.Text;
            subject=TextBox1.Text;
            body=TextBox1.Text;
            sendMail(to, subject, body, attachmentPaths);   
        }
    }
}