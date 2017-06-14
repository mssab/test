  
  
  '*** Prüfung, ob die Person in der Datenbank existiert ***
        Dim anreisetext, unterbringungstext, bemerkung As String
        anreisetext = ""
        unterbringungstext = ""
        bemerkung = ""
        Dim Command As String

        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("vodafone").ConnectionString)
        con.Open()
        Dim anrede, vorname, nachname, email, location, teilnahmeart, teilnahmeliste, shuttle As String
        anrede = ""
        vorname = ""
        nachname = ""
        email = ""
        location = ""
        teilnahmeart = ""
        teilnahmeliste = ""
        shuttle = ""

        Command = "SELECT anrede FROM CTO_Tour_2017 WHERE id = " & Request.QueryString.Item("id")
        Try
            Dim commando As New SqlCommand(Command, con)
            anrede = commando.ExecuteScalar
        Catch ex As Exception

        End Try
        Command = "SELECT vorname FROM CTO_Tour_2017 WHERE id = " & Request.QueryString.Item("id")
        Try
            Dim commando As New SqlCommand(Command, con)
            vorname = commando.ExecuteScalar
        Catch ex As Exception

        End Try
        Try
            Command = "SELECT nachname FROM CTO_Tour_2017 WHERE id = " & Request.QueryString.Item("id")
            Dim commando As New SqlCommand(Command, con)
            nachname = commando.ExecuteScalar
        Catch ex As Exception

        End Try
        Command = "SELECT email FROM CTO_Tour_2017 WHERE id = " & Request.QueryString.Item("id")
        Try
            Dim commando As New SqlCommand(Command, con)
            email = commando.ExecuteScalar
        Catch ex As Exception

        End Try


        Command = "SELECT location FROM CTO_Tour_2017 WHERE id = " & Request.QueryString.Item("id")
        Try
            Dim commando As New SqlCommand(Command, con)
            location = commando.ExecuteScalar
        Catch ex As Exception

        End Try
        Command = "SELECT Teilnahmeart FROM CTO_Tour_2017 WHERE id = " & Request.QueryString.Item("id")
        Try
            Dim commando As New SqlCommand(Command, con)
            teilnahmeart = commando.ExecuteScalar
        Catch ex As Exception

        End Try
        Command = "SELECT Shuttle FROM CTO_Tour_2017 WHERE id = " & Request.QueryString.Item("id")
        Try
            Dim commando As New SqlCommand(Command, con)
            shuttle = commando.ExecuteScalar
        Catch ex As Exception

        End Try
        con.Close()
        con.Dispose()
		
		
		'*** Abmeldung Button *****
		 Protected Sub abmelden_Click(sender As Object, e As EventArgs) Handles abmelden.Click
        Dim id As Integer = CInt(Request.QueryString.Item("id"))
        Dim emailadresse As String = ""
        Dim command As String
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("vodafone").ConnectionString)
        con.Open()
        command = "Select Email from CTO_Tour_2017 where id = " & id
        Try
            Dim commando As New SqlCommand(command, con)
            emailadresse = commando.ExecuteScalar()
        Catch ex As Exception

        End Try
        command = "Update from CTO_Tour_Versendung_2017 set Abmeldung = 1, Rueckmeldung = 1 where email = '" & emailadresse & "'"
        Try
            Dim commando As New SqlCommand(command, con)
            commando.ExecuteNonQuery()
        Catch ex As Exception

        End Try
        command = "Delete from CTO_Tour_2017 where id = " & id
        Try
            Dim commando As New SqlCommand(command, con)
            commando.ExecuteNonQuery()
        Catch ex As Exception

        End Try
        con.Close()
        con.Dispose()
        'label_tn_abmelden.Text = command
        abmelden.Visible = False
        label_abmeldung.Visible = True
        DetailsView1.Visible = False
    End Sub
	
	'*** Login Button***
	  Protected Sub login_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles login.Click
        Dim id As Integer
        Dim Command As String = ""
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("Canon").ConnectionString)
        con.Open()
        Command = "select id from administration where vorname = '" & vorname.Text & "' and nachname =  '" & nachname.Text & "' and passwort = '" & passwort.Text & "'"
        Try
            Dim commando As New SqlCommand(Command, con)
            id = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        con.Close()
        con.Dispose()
        If id <> 0 Then
            FormsAuthentication.SetAuthCookie(id, False)
            Response.Redirect("uebersicht.aspx")
        Else
        fehler.Visible = True
        End If
    End Sub
	
	'*** Export Button from DB to Exel file ***
	Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Response.AppendHeader("content-disposition", "attachment;filename=Partner_Keynote_2017_Hotel_Stand_" & Date.Today.Day & "_" & Date.Today.Month & "_" & Date.Today.Year & ".xls")
        Response.ContentType = "application/vnd.ms-excel"
        Response.Charset = "Unicode"
        Dim str As String
        Dim j, k As Integer
        Response.ContentEncoding = System.Text.Encoding.UTF8
        str = "<table style=&quot;border-color:black; border-style:solid; border-width:1px&quot;><tr style=&quot;font-weight:bold;&quot;>"
        For k = 0 To GridView1.HeaderRow.Controls.Count - 1
            str = str & "<td >" & GridView1.Columns(k).HeaderText & "</td>"
        Next
        str = str & "</tr><tr>"
        For j = 0 To GridView1.Rows.Count - 1
            For k = 0 To GridView1.HeaderRow.Controls.Count - 1
                str = str & "<td>" & GridView1.Rows(j).Cells(k).Text & "</td>"
            Next
            str = str & "</tr><tr>"
        Next
        str = str & "</tr></table>"
        Response.Write(str)
        Response.End()
    End Sub
	
	'*** if db row is 'true' than write 'ja ' 
	 Protected Sub GridView1_RowDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles GridView1.RowDataBound
        If e.Row.Cells(21).Text = "True" Then
            e.Row.Cells(21).Text = "ja"
        End If
        If e.Row.Cells(21).Text = "False" Then
            e.Row.Cells(21).Text = "nein"
        End If
        If e.Row.Cells(22).Text = "True" Then
            e.Row.Cells(22).Text = "ja"
        End If
        If e.Row.Cells(23).Text = "False" Then
            e.Row.Cells(23).Text = "nein"
        End If
        If e.Row.Cells(23).Text = "True" Then
            e.Row.Cells(23).Text = "ja"
        End If
        If e.Row.Cells(23).Text = "False" Then
            e.Row.Cells(23).Text = "nein"
        End If
    End Sub
	
	 '*** Belegung von Seitenname und Unternavigation  und seite.text ist label
	 '*<div id="subnav">
	 '<ul>
	 '<li><a href="#">canon-events.de &#8211; Administration</a></li>
     '<li><asp:Label ID="seite" runat="server"></asp:Label></li>
     '</ul>  
     '</div> ***

        Select Case System.IO.Path.GetFileName(Request.Path)
            Case "uebersicht.aspx"
                seite.Text = "Übersicht"
            Case "absagen.aspx"
                seite.Text = "Absagen"

            Case "eventliste.aspx"
                seite.Text = "Event-Listen"

            Case "Exporte.aspx"
                seite.Text = "Exporte mit Bezug zur Einladungsliste"
            Case "Absagen.aspx"
                seite.Text = "Abagen"
            Case "flugliste.aspx"
                seite.Text = "Flug-Liste"
        End Select
        unternavi.Text = ""
        unternavi.Text = unternavi.Text & "<ul>"
        unternavi.Text = unternavi.Text & "    <li><strong>Weitere Themen:</strong></li>"
        unternavi.Text = unternavi.Text & "    <li><a href=""uebersicht.aspx"">Übersicht</a></li>"
        'unternavi.Text = unternavi.Text & "    <li><a href=""doppelzimmer.aspx"">Doppelzimmer</a></li>"
        unternavi.Text = unternavi.Text & "    <li><a href=""reiseplanung.aspx"">Reiseplanung</a></li>"
        unternavi.Text = unternavi.Text & "    <li><a href=""hotel.aspx"">Hotelbedarf</a></li>"
        unternavi.Text = unternavi.Text & "    <li><a href=""shuttle.aspx"">Shuttle</a></li>"
        unternavi.Text = unternavi.Text & "    <li><a href=""Gesamtexport.aspx"">Gesamtexport</a></li>"
        unternavi.Text = unternavi.Text & "    <li><a href=""tickettool/home_int.aspx"">E-Mail-Versand</a></li>"
        'unternavi.Text = unternavi.Text & "    <li><a href=""bemerkungen.aspx"">Bemerkungen</a></li>"
        'unternavi.Text = unternavi.Text & "    <li><a href=""absagen.aspx"">Absagen</a></li>"
        unternavi.Text = unternavi.Text & "</ul>"

    End Sub
	
	'*** Reiseplanung expotieren ***
	
	 Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Response.AppendHeader("content-disposition", "attachment;filename=Partner_Keynote_2017_Reiseplanung_Stand_" & Date.Today.Day & "_" & Date.Today.Month & "_" & Date.Today.Year & ".xls")
        Response.ContentType = "application/vnd.ms-excel"
        Response.Charset = "Unicode"
        Dim str As String
        Dim j, k As Integer
        Response.ContentEncoding = System.Text.Encoding.UTF8
        str = "<table style=&quot;border-color:black; border-style:solid; border-width:1px&quot;><tr style=&quot;font-weight:bold;&quot;>"
        For k = 1 To GridView1.HeaderRow.Controls.Count - 2
            str = str & "<td >" & GridView1.Columns(k).HeaderText & "</td>"
        Next
        str = str & "</tr><tr>"
        For j = 0 To GridView1.Rows.Count - 1
            For k = 1 To GridView1.HeaderRow.Controls.Count - 2
                str = str & "<td>" & GridView1.Rows(j).Cells(k).Text & "</td>"
            Next
            str = str & "</tr><tr>"
        Next
        str = str & "</tr></table>"
        Response.Write(str)
        Response.End()
    End Sub
	
	'***AusfüllungsFunktion SQL command EX: shuttle.Text = belegung("Shuttle")***
		Public Function belegung(ByVal loc As String) As Integer
        Dim ergebnis As Integer = 0
        Dim meldungen As Integer = 0
        Dim anzahl_plaetze As Integer = 0
        Dim Command As String
        Dim id As Integer = 0
        Command = "SELECT count(id) FROM Canon_Einladung where Versendet = 1 and " & loc & " = 'ja' and id > 7"
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("Canon").ConnectionString)
        con.Open()
        Try
            Dim commando As New SqlCommand(Command, con)
            meldungen = commando.ExecuteScalar
        Catch ex As Exception

        End Try
        con.Close()
        con.Dispose()
        ergebnis = meldungen
        Return ergebnis
    End Function
	
	'*** filter search function 
	 Protected Sub filter_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles filter.Click
        Dim vor, nach As String
        vor = ""
        nach = ""
        If vorname.Text.Length = 0 Then
        Else
            vor = " and (vorname LIKE '%" & vorname.Text & "%') "
        End If
        If nachname.Text.Length = 0 Then
        Else

            nach = " or (nachname LIKE '%" & nachname.Text & "%') "
        End If
        SqlDataSource1.SelectCommand = "SELECT Anrede, Vorname, Nachname, EMail, id, Firma, Teilnahme, Rueckmeldung FROM Canon_Einladung WHERE (Code_vergeben = 1) " & vor & nach & " and id > 7 ORDER BY Nachname"
        GridView1.DataBind()
    End Sub