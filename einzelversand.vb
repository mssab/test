Imports System.Data.SqlClient
Imports System.Security.Cryptography

Partial Class einzelversand
    Inherits System.Web.UI.Page
	
	'*** button Senden  E-Mail ****
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If analyse() = 0 Then
            Dim ticket As String = speichern()
            If ticket.Length > 1 Then
                bestaetigung.Text = "<b>Folgende Versendungen wurden getätigt:</b><br /><br />"

                email_mit_ticket(anrede.SelectedValue, vorname.Text, email.Text, ticket)
                bestaetigung.Text = bestaetigung.Text & "E-Mail versendet an versendet an " & email.Text & "<br />"
                versendung_uebersicht.Visible = False
                versendung_erfolgt.Visible = True
            End If
        End If

    End Sub

    Public Function speichern() As String
        Dim Command As String
        Dim sicher As Integer = 0
        Dim ticketnummer As Integer = 0
        Dim ticket As String = ""
        Dim id_dummy As Integer = 0
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("Canon").ConnectionString)
        con.Open()

        '*** Bestimmung der ersten id, deren Hash-Code noch nicht benutzt wurde ***
        Command = "Select min(id) from [dbo].[Canon_Einladung] where Code_vergeben = 0"
        Try
            Dim commando As New SqlCommand(Command, con)
            id_dummy = commando.ExecuteScalar
        Catch ex As Exception

        End Try

        '*** Update der id und Eintragung der Daten in die DB ***
        Command = "UPDATE [Canon_Einladung] set [Anrede] = '" & anrede.SelectedValue & "',[Vorname] = '" & vorname.Text & "',[Nachname] = '" & nachname.Text & "',[EMail] = '" & email.Text & "', [Teilnahme] = 0 ,[Rueckmeldung] = 0, [Code_vergeben] = 1, [Versendet] = 1 where id = " & id_dummy
        Dim insert_erfolg As Integer = 0
        Try
            Dim commando As New SqlCommand(Command, con)
            insert_erfolg = commando.ExecuteNonQuery
        Catch ex As Exception

        End Try


        '*** Auslesen des Hash-Codes für die E-Mail ***
        Dim hasher As String = ""
        Command = "Select Hash from [dbo].[Canon_Einladung] where id = " & id_dummy
        Try
            Dim commando As New SqlCommand(Command, con)
            hasher = commando.ExecuteScalar
        Catch ex As Exception

        End Try

        con.Close()
        con.Dispose()
        Return hasher
    End Function

    Public Function checker(ByVal dum As CheckBox) As Integer
        Dim re As Integer = 0
        If dum.Checked = True Then
            re = 1
        Else
            re = 0
        End If
        Return re
    End Function

    Public Function format(ByVal str As String) As String
        Dim i As String = str
        i = i.Replace("'", "´")
        i = i.Replace("/", "-")
        Return i
    End Function

    Public Sub email_mit_ticket(ByVal anrede As String, ByVal nachname As String, ByVal email As String, ByVal passwort As String)
        Dim instance As New Net.Mail.SmtpClient("127.0.0.1")
        Dim text As String


        Dim text_anrede As String = ""
        text = ""
        Dim plaintext As String = ""


        Dim mailsub As String
        mailsub = "Einladung: Canon Partner Key-Note 2017 – Jetzt anmelden!"
        text = text & "<meta http-equiv=""Content-Type"" content=""text/html; charset=utf-8"">"
        text = text & "<body style=""font-family: Arial; font-size: 10pt; color: #4A4D4E;"">"
        text = text & "    <table cellspacing=""0"" cellpadding=""0"" style=""width: 600px; font-family: Arial; font-size: 11pt;"
        text = text & "        valign: top; margin: 0px; padding: 0px; border: 1px solid black;"">"
        text = text & "        <tr>"
        text = text & "            <td>"
        text = text & "                <table cellspacing=""0"" cellpadding=""0"" style=""width: 600px; font-family: Arial; font-size: 11pt;color: #4A4D4E;"
        text = text & "                    valign: top; margin: 0px; padding: 0px;"">"

        text = text & "                    <tr>"
        text = text & "                        <td colspan=""2"" style=""vertical-align: top;"">"
        text = text & "                            <div style=""font-weight: bold; font-size: 22pt; color: #E60000;"">"
        text = text & "                                <img src=""http://canon-events.de/img_std/Header1.jpg"" alt="""" /></div>"
        text = text & "                        </td>"
        text = text & "                        "
        text = text & "                    </tr>"
        text = text & "                    <tr>"
        text = text & "                        <td style=""padding-left: 40px; padding-right: 40px; padding-top:40px; vertical-align:top; color: #4A4D4E;"">"
        text = text & "                            "
        text = text & "                            <div>"
        If anrede = "Frau" Then
            text = text & "<p style=""color:#4A4D4E;font-weight:bold;"">Sehr geehrte Frau " & nachname & ",</p>"
            text_anrede = "Sehr geehrte Frau " & nachname & ","
        Else
            text = text & "<p style=""color:#4A4D4E;font-weight:bold;"">Sehr geehrter Herr " & nachname & ",</p>"
            text_anrede = "Sehr geehrter Herr " & nachname & ","
        End If

        text = text & "                                 <p style=""color:#4A4D4E;font-weight:bold;"">seien Sie dabei!</p>  <p style=""color:#4A4D4E;"">"
        text = text & "                                       Am 26. Juni 2017 präsentieren wir Ihnen die kommenden Canon Produktneuheiten und geben Ihnen einen tieferen Einblick in die CIG Sales- und MarketingStrategie. Wir bieten Ihnen einen exklusiven Vorgeschmack inklusive First Touch – und auf Wunsch – eine Führung durch unser Experience Center."
        text = text & "                                    </p>"

        text = text & "                                    <p style=""color:#4A4D4E;"">Weitere Informationen zur Veranstaltung und die Möglichkeit zur Anmeldung <br>finden Sie hier:<br><a href = ""http://partner-keynote2017.canon-events.de?id=" & passwort & """><br><img src=""http://canon-events.de/img_std/Button_Zur_Anmeldung.jpg""/></a></p>"



        text = text & "                                       <p style=""color:#4A4D4E; font-weight:bold;"">Wir freuen uns, Sie als Gast begrüßen zu dürfen!</p>"



        text = text & "                                        <p style=""color:#4A4D4E;"">Herzliche Grüße</p>"


        text = text & "                                    <p style=""color:#4A4D4E;  margin-bottom:0px;"">Ihr<br/>Guido Jacobs<br/>Country Director CIG DACH</p>"

        text = text & "                  <img src=""http://canon-events.de/img_std/footer-logo_01.jpg"" alt="""" style=""height:139px; width:520px"" border=""0"" />"
        text = text & "                                </div>"
        text = text & "                        </td>"

        text = text & "                    </tr>"
        text = text & "                </table>"
        text = text & " <table style=""margin-left: 40px; margin-right: 40px; width:520px; color: #4A4D4E;"">"
        text = text & " <tr>"
        text = text & "           <th style=""width:280px; text-align:left;""><a href=""http://www.canon.de/""><img src = ""http://canon-events.de/img_std/footer-canon-deutschland.jpg"" alt="" border=""0""></th>"

        text = text & "           <th style=""width:40px;""><a href=""https://www.facebook.com/CanonDeutschland""><img src = ""http://canon-events.de/img_std/footer-facebook.jpg"" alt="" border=""0""></a></th>"
        text = text & "           <th style=""width:40px;""><a href=""https://twitter.com/CanonDEU""><img src = ""http://canon-events.de/img_std/footer-twitter.jpg"" alt="" border=""0""></a></th>"
        text = text & "           <th style=""width:40px;""><a href=""https://www.instagram.com/canondeutschland/""><img src = ""http://canon-events.de/img_std/footer-instagram.jpg"" alt="" border=""0""></a></th>"
        text = text & "           <th style=""width:40px;""><a href=""https://www.linkedin.com/company/canon-deutschland-gmbh""><img src = ""http://canon-events.de/img_std/footer-in.jpg"" alt="" border=""0""></a></th>"
        text = text & "           <th style=""width:40px;""><a href=""https://www.youtube.com/user/CanonGermany""><img src = ""http://canon-events.de/img_std/footer-youtube.jpg"" alt="" border=""0""></a></th>"
        text = text & "           <th style=""width:40px;""><a href=""https://www.xing.com/companies/canondeutschlandgmbh""><img src = ""http://canon-events.de/img_std/footer-xing.jpg"" alt="" border=""0""></a></th>"
        text = text & "  </tr>"
        text = text & "  </table>"
        text = text & "                <table style=""width: 600px; font-family: Arial; color:#4A4D4E; font-size: 11pt;"">"
        text = text & "                    <tr>"
        text = text & "                        <td style=""width: 40px;"">"
        text = text & "                        </td>"
        text = text & "                        <td style=""width: 520px;"">"
        text = text & "<img src=""http://canon-events.de/img_std/footer-linie.jpg"" alt="""" style=""width:520px"" border=""0"" />"
        text = text & "                            <table style=""width: 520px; font-family: Arial; font-size: 10pt; color: #4A4D4E;"">"
        text = text & "                                <tr>"
        text = text & "                                    <td>"
        text = text & "                                        "
        text = text & "                                            <a href=""https://www.canon.de/terms_and_conditions/"" style=""text-decoration: none; color: #4A4D4E;"">"
        text = text & "                                                Impressum</a>&nbsp;&nbsp;&nbsp;"
        text = text & "                                            "
        text = text & "                                        "
        text = text & "                                    </td>"
        text = text & "                                    <td style=""text-align:right;"">Copyright 2017"
        text = text & "                                    </td>"
        text = text & "                                </tr>"
        text = text & "                            </table>"
        text = text & "                        </td>"
        text = text & "                        <td style=""width: 40px;"">"
        text = text & "                        </td>"
        text = text & "                </table>"
        text = text & "            <br /><br /></td>"
        text = text & "        </tr>"
        text = text & "    </table>"
        text = text & "</body>"


        plaintext = text_anrede & vbNewLine & vbNewLine
        plaintext = plaintext & "Am 26. Juni 2017 präsentieren wir Ihnen die kommenden Canon Produktneuheiten und geben Ihnen einen tieferen Einblick in die CIG Sales- und MarketingStrategie. Wir bieten Ihnen einen exklusiven Vorgeschmack inklusive First Touch – und auf Wunsch – eine Führung durch unser Experience Center." & vbNewLine & vbNewLine

        plaintext = plaintext & "Weitere Informationen zur Veranstaltung und die Möglichkeit zur Anmeldung finden Sie hier:  " & vbNewLine & vbNewLine
        plaintext = plaintext & "http://partner-keynote2017.canon-events.de?id=" & passwort & vbNewLine & vbNewLine
        plaintext = plaintext & "Wir freuen uns, Sie als Gast begrüßen zu dürfen!" & vbNewLine & vbNewLine


        plaintext = plaintext & "Herzliche Grüße" & vbNewLine & vbNewLine
        plaintext = plaintext & "Ihr" & vbNewLine & "Guido Jacobs" & vbNewLine & "Country Director CIG DACH" & vbNewLine & vbNewLine
        plaintext = plaintext & "Impressum:       https://www.canon.de/terms_and_conditions/" & vbNewLine


        Try
            Dim de, da As Net.Mail.MailAddress
            de = New Net.Mail.MailAddress("hotline@canon-events.de", "Canon Partner Key-Note 2017")
            da = New Net.Mail.MailAddress(email)

            Dim message As New Net.Mail.MailMessage(de, da)
            message.Subject = mailsub
            Dim textview As Net.Mail.AlternateView = Net.Mail.AlternateView.CreateAlternateViewFromString(plaintext, Nothing, "text/plain")
            Dim htmlview As Net.Mail.AlternateView = Net.Mail.AlternateView.CreateAlternateViewFromString(text, Nothing, "text/html")
            message.AlternateViews.Add(textview)
            message.AlternateViews.Add(htmlview)
            'message.Bcc.Add("stefan.mehlberg@gmx.net")
            'message.Bcc.Add("mussab.obeado@gate.de")
            message.Bcc.Add("dirk.ridder@gate.de")
            'message.Bcc.Add("carina.heine@gate.de")
            'message.Bcc.Add("nina.roeske@gate.de")
            'message.Bcc.Add("barbara.roemer@gate.de")
            'message.Bcc.Add("versendungen@gate.de")
            'Dim miss As New Net.Mail.Attachment(Server.MapPath("outlook/Hamburg.ics"))
            'miss.Name = "CEO-Tour 2017.ics"
            'message.Attachments.Add(miss)
            instance.Send(message)
        Catch ex As Exception

        End Try

    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Response.Redirect("einzelversand.aspx")
    End Sub

    Public Function analyse() As Integer

        Dim runner As Integer = 0
        runner = check(vorname, runner)
        runner = check(nachname, runner)

        runner = check(email, runner)
        runner = email_checker(email, runner)

        Return runner
    End Function

    Public Function check(ByVal box As TextBox, ByVal lauf As Integer) As Integer
        Dim i As Integer = lauf
        If box.Text.Length < 1 Then
            i = 1
            box.BackColor = Drawing.Color.FromArgb(219, 165, 165)
        Else
            box.BackColor = Drawing.Color.White
        End If
        Return i
    End Function

    Public Function email_checker(ByVal checker_email As TextBox, ByVal lauf As Integer) As Integer
        Dim i As Integer = lauf
        ' RegEx-Klassenobjekt erstellen
        Dim oRegEx As System.Text.RegularExpressions.Regex

        ' Vergleichsmuster
        Dim sPattern As String = "^([\w-]+\.)*?[\w-]+@[\w-]+\.([\w-]+\.)*?[\w]+$"

        With oRegEx
            ' Syntax der EMail-Adresse prüfen
            If Not Regex.IsMatch(checker_email.Text, sPattern) Then
                ' Syntax entspricht nicht dem Muster!

                checker_email.BackColor = Drawing.Color.FromArgb(219, 165, 165)
                i = 1
            Else
                checker_email.BackColor = Drawing.Color.White
            End If
        End With
        Return i
    End Function

    Public Function MD5StringHash(ByVal strString As String) As String
        Dim MD5 As New MD5CryptoServiceProvider
        Dim Data As Byte()
        Dim Result As Byte()
        Dim Res As String = ""
        Dim Tmp As String = ""

        Data = Encoding.ASCII.GetBytes(strString)
        Result = MD5.ComputeHash(Data)
        For i As Integer = 0 To Result.Length - 1
            Tmp = Hex(Result(i))
            If Len(Tmp) = 1 Then Tmp = "0" & Tmp
            Res += Tmp
        Next
        Return Res
    End Function
End Class








'****aspx seite ******

<%@ Page Title="" Language="VB" MasterPageFile="Master_10_2015.master" AutoEventWireup="false" CodeFile="einzelversand.aspx.vb" Inherits="einzelversand" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="contentbereich">
  
   <div id="content">
   
   <h1 class="biggest" style="color:#004894;">Canon-Events &#8211; Administration</h1> 
   
   
   <div id="banner_content" style="width:948px; height:448px;color: #525252;float:left;">     
      
      <div style="width:948px; height:448px;color: #525252;float:left;">
       <div style="float:left; clear:both; margin: 7px 0px 0px 6px; width:938px;"><img src="../img/header_home.jpg" border="0" width="938px" alt="" /></div>    
      </div>   
   
   </div>
   
   <div class="boxes_jwb_big" style="height: auto; min-height: 300px;">
    <div class="boxes_jwb_big_header">    
    <a href="#" style="text-decoration:none;"><span class="headline_boxes_jwb">E-Mail-Versendung &#8211; Einzelversand</span></a>    
   </div>
   
     <div class="content_feature_jwb_big">
                            
                    <div>
                    
                    <asp:Panel ID="versendung_uebersicht" runat="server" Visible="true">
                    <%--<p style="margin-top:25px;margin-bottom:25px;">Hinterlegte E-Mail <input type="button" class="button_orange" onclick="javascript:window.open('Formulare/E_Mail.pdf')"   value="E-Mail pdf" style="margin-left: 39px !important;" /></p>--%>
                    <table style="width:60%; color:#000000; " cellspacing="5" >
                        
                        
                       
                        <tr>
                            <td style="color:#000000;">Anrede:  </td>
                            <td>
                            <td>
                                <asp:DropDownList ID="anrede" runat="server" Width="480px">
                                    <asp:ListItem Text="Frau" Value="Frau"></asp:ListItem>
                                    <asp:ListItem Text="Herr" Value="Herr"></asp:ListItem>
                                </asp:DropDownList></td>
                            
                           
                        </tr>

                        <tr>
                            <td style="color:#000000;">Vorname:  </td>
                            <td><asp:TextBox ID="vorname" runat="server" style="width: 480px;"></asp:TextBox></td>
                            
                           
                        </tr>
                        <tr>
                            <td style="color:#000000;">Nachname:  </td>
                            <td><asp:TextBox ID="nachname" runat="server" style="width: 480px;"></asp:TextBox></td>
                            
                           
                        </tr>
                        
                        <tr>
                            <td style="color:#000000;">E-Mail:  </td>
                            <td><asp:TextBox ID="email" runat="server" style="width: 480px;"></asp:TextBox></td>
                            
                           
                        </tr>
                        <%--<tr>
                            <td style="color:#000000;">Unternehmen:  </td>
                            <td><asp:TextBox ID="unternehmen" runat="server" style="width: 480px;"></asp:TextBox></td>
                            
                           
                        </tr>--%>
                        
                        
                       
                    </table>
                    
                    
                    <table border="0" cellpadding="0" cellspacing="0" style="margin-top: 40px;">
                     <tr>
                      <td><asp:Button ID="Button1"   style="color: #525252;" runat="server" Text="E-Mail versenden" /></td>                     
                     </tr>    
                    </table>
                        

                    </asp:Panel>
                     <asp:Panel ID="versendung_erfolgt" runat="server" Visible="false">
                     <br />
                             <asp:Label ID="bestaetigung" runat="server" ></asp:Label>
                             <br />
                             <p class="linkRight" style="width: 95%;">
                            <span  style="float: left;">
                                <asp:Button ID="Button2" runat="server"  style="color: #525252;" Text="zurück" /></span></p>
                        </asp:Panel>
                    </div>
                   
                   
                    
                </div>
    </div> 
        <div style="clear:both;"></div>
       </div> 
        </div> 
    
</asp:Content>
