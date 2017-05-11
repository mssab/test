    
  // *** Prüfung, ob die Person in der Datenbank existiert ***
  
  protected void Page_Init(object sender, System.EventArgs e) {
      
        string Command;
        string dummy = "";
        int id = 0;
        Command = ("SELECT rolle FROM promotion_login WHERE id = " + HttpContext.Current.User.Identity.Name);
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("promotion").ConnectionString);
        con.Open();
        try {
            SqlCommand commando = new SqlCommand(Command, con);
            dummy = commando.ExecuteScalar;
        }
        catch (Exception ex) {
        }
        
        con.Close();
        con.Dispose();
        // *** Bei fehlendem Eintrag, Fehlermeldung, ansonsten Füllen der Session ***
        switch (dummy) {
            case "extern":
                break;
            case "gate":
                Response.Redirect("deko_2015_intern_projekte_alle.aspx");
                break;
            case "kunde":
                Response.Redirect("deko_2015_kunde_home.aspx");
                break;
            default:
                FormsAuthentication.SignOut();
                Response.Redirect("Default.aspx");
                break;
        }
    }