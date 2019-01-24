     Public Overrides Sub VerifyRenderingInServerForm(ByVal control As System.Web.UI.Control)
        Return
    End Sub
	
	Protected Sub testy_Click(sender As Object, e As EventArgs) Handles testy.Click
	
        Response.ContentType = "application/pdf"
        Response.AddHeader("Content-Disposition", "attachment; filename=print.pdf")
        Response.Cache.SetCacheability(HttpCacheability.NoCache)
        Dim sw As New StringWriter
        Dim hw As New HtmlTextWriter(sw)
		'GridView1 oder panel oder div kann man nutzen
        GridView1.RenderControl(hw)
        Dim sr As New StringReader(sw.ToString())
        Dim pdfdoc As New Document(PageSize.A4)
        Dim htmlpreaser As New HTMLWorker(pdfdoc)
        PdfWriter.GetInstance(pdfdoc, Response.OutputStream)
        pdfdoc.Open()
        htmlpreaser.Parse(sr)
        pdfdoc.Close()
        Response.Write(pdfdoc)
        Response.End()
			
    End Sub