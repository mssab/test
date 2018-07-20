

     
		' call javascript 
		Page.Controls.Add(New LiteralControl("<script type='text/javascript'>OpenGalerie();</script>"))
		
		' after 5 sec forward to google.de
		   Response.AddHeader("REFRESH", "5;URL=http://google.de")