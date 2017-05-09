try {

	MailMessage msg = new MailMessage();
	msg.From = new MailAddress(email.Text);
	//msg.[To].Add("mussab.obeado@gate.de")
	msg.To.Add("fahrerlebnisse@skoda-event.de");
	msg.Body = beschreib.Text;
	msg.IsBodyHtml = true;
	SmtpClient smtp = new SmtpClient();
	smtp.Host = ("smtp.und.de");
	System.Net.NetworkCredential networcard = new System.Net.NetworkCredential();
	networcard.UserName = "postausgangsservice@gate-internet.de";
	networcard.Password = "password";
	smtp.UseDefaultCredentials = true;
	smtp.Credentials = networcard;
	smtp.Port = 587;
	smtp.EnableSsl = true;
	smtp.Send(msg);
	lblTxt.ForeColor = System.Drawing.Color.Green;
	lblTxt.Text = " E-Mail has been succesfully sent....!";

	email.Text = "";

	beschreib.Text = "";
} catch (Exception ex) {
	lblTxt.Text = "Error in sending...";
}
