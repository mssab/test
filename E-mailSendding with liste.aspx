<%@ Page Language="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    Protected Sub senden_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim instance As New Net.Mail.SmtpClient("127.0.0.1")
        Dim text, vorname, nachname, anrede, email, passwort, titel As String
        Dim liste(GridView1.Rows.Count - 1) As String
        Dim i As Integer

        For i = 0 To GridView1.Rows.Count - 1
            ID = Trim(GridView1.Rows(i).Cells(0).Text)
            anrede = Trim(GridView1.Rows(i).Cells(1).Text)
            vorname = Trim(GridView1.Rows(i).Cells(2).Text)
            nachname = Trim(GridView1.Rows(i).Cells(3).Text)
            email = Trim(GridView1.Rows(i).Cells(4).Text)

            Dim text_anrede As String = ""
            text = ""
            Dim plaintext As String = ""


            Dim mailsub As String
            mailsub = "Vodafone CEO-Tour 2017 – Shuttle-Zeiten jetzt online"
            text = text & "<meta http-equiv=""Content-Type"" content=""text/html; charset=utf-8"">"
            text = text & "<body style=""font-family: Arial; font-size: 10pt; color: #4A4D4E;"">"
            text = text & "    <table cellspacing=""0"" cellpadding=""0"" style=""width: 600px; font-family: Arial; font-size: 11pt;"
            text = text & "        valign: top; margin: 0px; padding: 0px; border: 1px solid black;"">"
            text = text & "        <tr>"
            text = text & "            <td>"
            text = text & "                <table cellspacing=""0"" cellpadding=""0"" style=""width: 600px; font-family: Arial; font-size: 11pt;"
            text = text & "                    valign: top; margin: 0px; padding: 0px;"">"
            text = text & "<tr style="" vertical-align:middle;background-color:#D9D9D9;height:30px;""><td colspan=""2"" style=""vertical-align:middle;text-align:left;padding-left:28px; font-size:8pt;""><div style="" background-color:#D9D9D9;"">Sollte die E-Mail nicht richtig angezeigt werden, klicke bitte <a href=""https://ceo-tour2017.vodafone-managementletter.de/email_shuttle_dresden.html"" target=""_blank"" style=""color:#E60000; text-decoration: underline;"">hier</a></div> </td></tr>"
            text = text & "                    <tr>"
            text = text & "                        <td colspan=""2"" style=""vertical-align: top;"">"
            text = text & "                            <div style=""font-weight: bold; font-size: 22pt; color: #E60000;"">"
            text = text & "                                <img src=""https://ceo-tour2017.vodafone-managementletter.de/img/E-Mail_Header.jpg"" alt="""" /></div>"
            text = text & "                        </td>"
            text = text & "                        "
            text = text & "                    </tr>"
            text = text & "                    <tr>"
            text = text & "                        <td style=""padding-left: 28px; padding-right: 28px; padding-top:28px; vertical-align:top;"">"
            text = text & "                            "
            text = text & "                            <div>"
            'If anrede = "Frau" Then
            '    text = text & "<p style=""color:#4A4D4E;font-weight:bold;font-size:14pt;"">Liebe " & vorname & ",</p>"
            '    text_anrede = "Liebe " & vorname & ","
            'Else
            '    text = text & "<p style=""color:#4A4D4E;font-weight:bold;font-size:14pt;"">Lieber " & vorname & ",</p>"
            '    text_anrede = "Lieber " & vorname & ","
            'End If
            text = text & "<p style=""color:#4A4D4E;font-weight:bold;font-size:14pt;"">Liebe Kolleginnen und Kollegen,</p>"
            text_anrede = "Liebe Kolleginnen und Kollegen,"
            text = text & "                                    <p style=""color:#4A4D4E;"">"
            text = text & "                                        herzlichen Dank für Eure Anmeldung zur CEO Tour im Maritim Hotel Dresden. Die Shuttle-Zeiten stehen jetzt auf der Event-Hompage für Euch zur Einsicht bereit:"
            text = text & "                                    </p>"
            'text = text & "                                    <p style=""color:#4A4D4E;"">"
            'text = text & "                                        Aber genauso will ich von Euch hören und lernen: Welche Fragen beschäftigen Euch? Wo können wir uns weiter verbessern und welche Themen sollten wir aus Eurer Sicht angehen? Übrigens: immer wieder stelle ich fest, dass wir durch den direkten Austausch zu schnellen und guten Lösungen kommen. Nutzt darum beispielsweise Yammer. In Eurer Regions-Gruppe könnt Ihr bereits im Vorfeld des Tour-Termins Fragen und Themen platzieren, die Ihr mit mir diskutieren wollt – ich freue mich auf den Austausch auf der CEO Tour!</p>"
            'text = text & "                                    <p style=""color:#4A4D4E;"">"
            'text = text & "                                       Zur Anmeldung nutzt Du Deine Vodafone E-Mail-Adresse. Die Teilnehmeranzahl wird an manchen Standorten begrenzt sein, wähle deshalb die Tour-Station aus, die Deinem Standort am nächsten liegt. Auch in diesem Jahr werden wir bei Bedarf wieder einen Bus-Transfer einrichten. Details zu Ablauf und Anreise sowie weitere wichtige Informationen findest Du auf der <a href=""https://ceo-tour2017.vodafone-managementletter.de"" style=""color:#E60000;"" target=""_blank"" >Anmeldeseite</a> oder in der CEO Tour-Kachel der Mitarbeiter-App.</p>"

            text = text & "                                    <div style=""font-weight: bold; font-size: 22pt; color: #E60000;"">"
            text = text & "                                        <table cellspacing=""0"" cellpadding=""0"">"
            text = text & "                                            <tr>"
            text = text & "                                                <td>"
            text = text & "                                                    <a href=""https://ceo-tour2017.vodafone-managementletter.de/anmeldung.aspx?ort=Dresden"" border=""0"">"
            text = text & "                                                        <img src=""https://ceo-tour2017.vodafone-managementletter.de/img/Button_red_Zur_CEO_Tour.jpg"" alt="""" style=""height:35px;"" border=""0"" /></a>"
            text = text & "                                                </td>"
            text = text & "                                                "
            text = text & "                                            </tr>"
            text = text & "                                        </table>"
            text = text & "                                    </div>"

            'text = text & "                                    <p>"
            'text = text & "                                        Wenn Du bereits im Vorfeld Fragen hast, kannst Du diese <a href=""https://ceo-tour2017.vodafone-managementletter.de"" target=""_blank"" style=""color:#4A4D4E; text-decoration: underline;font-weight:bold; text-align:center;"">hier</a> vorab stellen.</p>"
            'text = text & "                                    <p style=""color:#4A4D4E;"">"
            'text = text & "                                        Falls Dir auffällt, dass ein Kollege oder eine Kollegin versehentlich keine Einladung erhalten haben sollte: bitte zögere nicht, diese Mail weiterzuleiten. Selbstverständlich ist jeder Vodafone-Mitarbeiter zur CEO Tour 2017 herzlich eingeladen.</p>"
            'text = text & "                                    <p>"
            text = text & "                                       <p style=""color:#4A4D4E;"">"
            text = text & "                                         Wir freuen uns, Euch am Mittwoch begrüßen zu dürfen.</p>"



            text = text & "                                        <p style=""color:#4A4D4E;"">Viele Grüße</p>"


            text = text & "                                    <p style=""color:#4A4D4E;"">Euer Team<br />der internen Kommunikation</p>"


            text = text & "                                </div>"
            text = text & "                        </td>"

            text = text & "                    </tr>"
            text = text & "                </table>"
            text = text & "                <table style=""width: 585px; font-family: Arial; color:#4A4D4E; font-size: 11pt;"">"
            text = text & "                    <tr>"
            text = text & "                        <td style=""width: 28px;"">"
            text = text & "                        </td>"
            text = text & "                        <td style=""width: 572px;"">"
            text = text & "                            <hr style=""margin-top: 28px;"">"
            text = text & "                            <table style=""width: 572px; font-family: Arial; font-size: 11pt;"">"
            text = text & "                                <tr>"
            text = text & "                                    <td>"
            text = text & "                                        <p style=""margin-top: 14px; color: #4A4D4E;"">"
            text = text & "                                            <a href=""http://www.vodafone.de/impressum.html"" style=""text-decoration: none; color: #4A4D4E;"">"
            text = text & "                                                <b>Impressum</b></a>&nbsp;<a href=""http://www.vodafone.de/impressum.html"" style=""text-decoration: none;"
            text = text & "                                                    color: #e60000; font-weight: bold;"">&gt;</a> &nbsp;&nbsp;<a href=""http://www.vodafone.de/datenschutz.html"""
            text = text & "                                                        style=""text-decoration: none; color: #4A4D4E;""><b>Datenschutz</b></a>&nbsp;<a href=""http://www.vodafone.de/datenschutz.html"""
            text = text & "                                                            style=""text-decoration: none; color: #e60000; font-weight: bold;"">&gt;</a><br>"
            text = text & "                                            <a href=""http://www.vodafone.de"" style=""text-decoration: none; color: #4A4D4E;""><b>vodafone.de</b></a>&nbsp;<a"
            text = text & "                                                href=""http://www.vodafone.de"" style=""text-decoration: none; color: #e60000; font-weight: bold;"">&gt;</a>&nbsp;&nbsp;&nbsp;Copyright"
            text = text & "                                            © 2017 Vodafone GmbH"
            text = text & "                                        </p>"
            text = text & "                                    </td>"
            text = text & "                                    <td style=""width: 150px; vertical-align: bottom;"">"
            'text = text & "                                        <a style=""margin-top: 14px;"" href=""http://www.facebook.com/vodafoneDE"">"
            'text = text & "                                            <img src=""http://www.vodafone-managementletter.de/img/btn_fb.jpg"" alt="""" style=""width: 27px;"""
            'text = text & "                                                border=""0"" /></a>&nbsp;&nbsp;<a style=""margin-top: 14px;"" href=""http://plus.google.com/&#43;VodafoneDeutschland/posts""><img"
            'text = text & "                                                    src=""http://www.vodafone-managementletter.de/img/btn_google.jpg"" alt="""" style=""width: 27px;"""
            'text = text & "                                                    border=""0"" /></a>&nbsp;&nbsp;<a style=""margin-top: 14px;"" href=""http://twitter.com/vodafone_de""><img"
            'text = text & "                                                        src=""http://www.vodafone-managementletter.de/img/btn_twitter.jpg"" alt="""" style=""width: 27px;"""
            'text = text & "                                                        border=""0"" /></a>&nbsp;&nbsp;<a style=""margin-top: 14px;"" href=""http://www.youtube.com/user/vodafonedeutschland""><img"
            'text = text & "                                                            src=""http://www.vodafone-managementletter.de/img/btn_youtube.jpg"" alt="""" style=""margin-left: 4px;"
            'text = text & "                                                            width: 27px;"" border=""0"" /></a>"
            text = text & "                                    </td>"
            text = text & "                                </tr>"
            text = text & "                            </table>"
            text = text & "                        </td>"
            text = text & "                </table>"
            text = text & "            </td>"
            text = text & "        </tr>"
            text = text & "    </table>"
            text = text & "</body>"


            plaintext = text_anrede & vbNewLine & vbNewLine
            plaintext = plaintext & " herzlichen Dank für Eure Anmeldung zur CEO Tour im Maritim Hotel Dresden." & vbNewLine & " Die Shuttle-Zeiten stehen jetzt auf der Event-Hompage für Euch zur Einsicht bereit: " & vbNewLine & vbNewLine
            plaintext = plaintext & " https://ceo-tour2017.vodafone-managementletter.de/anmeldung.aspx?ort=Dresden" & vbNewLine & vbNewLine
            'plaintext = plaintext & "Zur Anmeldung nutzt Du Deine Vodafone E-Mail-Adresse. Die Teilnehmeranzahl wird an" & vbNewLine & "manchen Standorten begrenzt sein, wähle deshalb die Tour-Station aus, die Deinem Standort" & vbNewLine & "am nächsten liegt. Auch in diesem Jahr werden wir bei Bedarf wieder einen Bus-Transfer einrichten. Details zu Ablauf und Anreise sowie" & vbNewLine & "weitere wichtige Informationen findest Du auf der Anmeldeseite oder in der CEO Tour-Kachel" & vbNewLine & "der Mitarbeiter-App." & vbNewLine & vbNewLine
            'plaintext = plaintext & "Wenn Du bereits im Vorfeld Fragen hast, kannst Du diese hier vorab stellen." & vbNewLine & "#" & vbNewLine & vbNewLine
            plaintext = plaintext & "Wir freuen uns, Euch am Mittwoch begrüßen zu dürfen" & vbNewLine & vbNewLine

            plaintext = plaintext & "Viele Grüße" & vbNewLine & vbNewLine
            plaintext = plaintext & "Euer Team der internen Kommunikation" & vbNewLine & vbNewLine
            plaintext = plaintext & "Impressum:       http://www.vodafone.de/impressum.html" & vbNewLine
            plaintext = plaintext & "Datenschutz:     http://www.vodafone.de/datenschutz.html" & vbNewLine
            plaintext = plaintext & "Vodafone.de:     http://www.vodafone.de" & vbNewLine & vbNewLine

            Try
                Dim de, da As Net.Mail.MailAddress
                de = New Net.Mail.MailAddress("mussab.obeado@gate.de", "Interne Kommunikation")
                da = New Net.Mail.MailAddress(email)
                Dim message As New Net.Mail.MailMessage(de, da)
                message.Subject = mailsub
                Dim textview As Net.Mail.AlternateView = Net.Mail.AlternateView.CreateAlternateViewFromString(plaintext, Nothing, "text/plain")
                Dim htmlview As Net.Mail.AlternateView = Net.Mail.AlternateView.CreateAlternateViewFromString(text, Nothing, "text/html")
                message.AlternateViews.Add(textview)
                message.AlternateViews.Add(htmlview)
                message.Bcc.Add("mussab.obeado@gate.de")
                'message.Bcc.Add("dirk.ridder@gate.de")
                'message.Bcc.Add("rudi.kotschwar@gate.de")
                'message.Bcc.Add("carina.heine@gate.de")
                'message.Bcc.Add("barbara.roemer@gate.de")
                'message.Bcc.Add("versendungen@gate.de")
                'Dim miss As New Net.Mail.Attachment(Server.MapPath("Vodafone_Management_Tagung.ics"))
                'miss.Name = "Vodafone Management Tagung.ics"
                'message.Attachments.Add(miss)
                instance.Send(message)

            Catch ex As Exception
                liste(i) = "Die E-Mail an " & vorname & " " & nachname & " konnte nicht versendet werden!"
            End Try
        Next
        Session.Add("EMail-Liste", liste)
        Response.Redirect("sendergbnisse.aspx")
    End Sub


</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Mailversendung</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EnableModelValidation="True">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                <asp:BoundField DataField="Anrede" HeaderText="Anrede" 
                    SortExpression="Anrede" />
                <asp:BoundField DataField="Vorname" HeaderText="Vorname" 
                    SortExpression="Vorname" />
                <asp:BoundField DataField="Nachname" HeaderText="Nachname" 
                    SortExpression="Nachname" />
               
                <asp:BoundField DataField="EMail" HeaderText="EMail" 
                    SortExpression="EMail" />
               
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <br />
        <asp:Button ID="senden" runat="server" Text="E-Mail-Versendung" OnClick="senden_Click" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Canon %>"
            
            SelectCommand="SELECT [id], [EMail],[Anrede], [Vorname], [Nachname] FROM [Versendung_STD]">
            
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>