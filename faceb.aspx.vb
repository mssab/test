Imports System.Data.SqlClient
Imports System.Net

Partial Class dummy
    Inherits System.Web.UI.Page
    Dim teilnahme_Name As String
    Public teilnahme_Bild As String
    Dim inject As String = ""
    Dim fotodel As String

    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init


        If Not IsPostBack Then
            teilnahme_Name = inhalt("Name")
            teilnahme_Bild = inhalt("Name_Bild")
        End If
        Dim dummy As String = inhalt("Name")
        If dummy.Contains("vodafone.de") Then
            If IsNumeric(inhalt("id")) = False Then
                Response.Redirect("https://vodafone.de")
                'belegung(teilnahme_Name, teilnahme_Bild)

            End If
        Else
            If IsNumeric(inhalt("id")) = False Then
                Response.Redirect("https://vodafone.de")
                'belegung()
            End If
        End If

        'Response.Redirect("http://www.vodafone.de")
        'Dim i As String = ""
        'i = Request.QueryString.Item("id")

        'Dim teamordner As String = ""
        'Dim video_gedreht As Integer = 0
        ''*** Prüfung, ob ein Bild dazu existiert ***
        'If IfWReqFileExist("http://www.gate-multimedia.de/knock_and_wish/Team1/" & i & ".jpg", i) = True Then
        '    teamordner = "Team1"
        '    video_gedreht = 1
        'End If
        'If IfWReqFileExist("http://www.gate-multimedia.de/knock_and_wish/Team2/" & i & ".jpg", i) = True Then
        '    teamordner = "Team2"
        '    video_gedreht = 1
        'End If
        'If IfWReqFileExist("http://www.gate-multimedia.de/knock_and_wish/Team3/" & i & ".jpg", i) = True Then
        '    teamordner = "Team3"
        '    video_gedreht = 1
        'End If
        'If IfWReqFileExist("http://www.gate-multimedia.de/knock_and_wish/Team4/" & i & ".jpg", i) = True Then
        '    teamordner = "Team4"
        '    video_gedreht = 1
        'End If
        'If IfWReqFileExist("http://www.gate-multimedia.de/knock_and_wish/Team5/" & i & ".jpg", i) = True Then
        '    teamordner = "Team5"
        '    video_gedreht = 1
        'End If
        'If IfWReqFileExist("http://www.gate-multimedia.de/knock_and_wish/Team6/" & i & ".jpg", i) = True Then
        '    teamordner = "Team6"
        '    video_gedreht = 1
        'End If

        'video_belegung(i, teamordner)

        'Dim tag As New HtmlMeta()
        'tag.Attributes.Add("property", "og:title")
        'tag.Content = "Knock & Wish – Herzenswünsche werden wahr!"
        'Page.Header.Controls.Add(tag)

        'Dim tag1 As New HtmlMeta()
        'tag1.Attributes.Add("property", "og:description")
        'tag1.Content = "Anklopfen, Wunsch für Deinen Lieblingsmenschen aufnehmen, teilen und gewinnen. Komm und mach mit! Infos auf: vod.af/knock"
        'Page.Header.Controls.Add(tag1)

        'Dim tagurl As New HtmlMeta()
        'tagurl.Attributes.Add("property", "og:url")
        'tagurl.Content = "http://www.vodafone-consumer.de/faceb.aspx?id=" & i
        'Page.Header.Controls.Add(tagurl)

        'Dim tagimg As New HtmlMeta()
        'tagimg.Attributes.Add("property", "og:image")
        'tagimg.Content = "http://gate-multimedia.de/knock_and_wish/" & teamordner & "/" & i & ".jpg"
        'Page.Header.Controls.Add(tagimg)

        'Dim tagimgwidth As New HtmlMeta()
        'tagimgwidth.Attributes.Add("property", "og:image:width")
        'tagimgwidth.Content = "1080"
        'Page.Header.Controls.Add(tagimgwidth)

        'Dim tagimgheight As New HtmlMeta()
        'tagimgheight.Attributes.Add("property", "og:image:height")
        'tagimgheight.Content = "1680"
        'Page.Header.Controls.Add(tagimgheight)

        'Dim linker As New HtmlLink()
        'linker.Attributes.Add("rel", "opengraph")
        'linker.Href = "http://www.vodafone-consumer.de/faceb_alt.aspx?id=" & i
        'Page.Header.Controls.Add(linker)
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Dim i As String = ""
        'i = Request.QueryString.Item("id")
        'Response.Redirect("https://vodafone.de")

    End Sub

    Protected Sub Page_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreRender
        'Dim i As String = ""
        'i = Request.QueryString.Item("id")
        'Response.Redirect("https://vodafone.de")


    End Sub


    Private Sub bilderausgabe_Init(sender As Object, e As EventArgs) Handles TargetFoto.Init
        teilnahme_Bild = inhalt("Name_Bild")
        'inject = "<img src=""" & teilnahme_Bild & """ alt="""" border=""0""  style=""width:70%; height: auto; margin-top: 3%; -webkit-box-shadow: 20px 20px 11px -3px rgba(0,0,0,0.28); -moz-box-shadow: 20px 20px 11px -3px rgba(0,0,0,0.28); box-shadow: 20px 20px 11px -3px rgba(0,0,0,0.28);"" /></a>"
        inject = "<p><img src=""" & teilnahme_Bild & """ alt="""" border=""0""  style=""width:400px !important; height: auto;"" /></p>"
        fotodel = "" & teilnahme_Bild & ""
        TargetFoto.Text = inject
    End Sub


    Public Function inhalt(ByVal loca As String) As String
        Dim ergebnis As String = ""
        If Request.QueryString.HasKeys Then
            Dim Command As String
            Command = "SELECT " & loca & " FROM Photobooth WHERE Hash = '" & Request.QueryString.Item(0) & "'"
            Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("vodafone").ConnectionString)
            con.Open()
            Try
                Dim commando As New SqlCommand(Command, con)
                ergebnis = commando.ExecuteScalar
            Catch ex As Exception

            End Try
            con.Close()
            con.Dispose()
        End If
        Return ergebnis
    End Function

    Public Function IfWReqFileExist(ByVal strUri As String, ByVal wcode As String) As Boolean
        Dim checker As Integer = 0
        Try
            Dim WReq As WebRequest = WebRequest.Create(strUri)
            Dim WResp As WebResponse = WReq.GetResponse()

            If (WResp.ResponseUri.ToString.Contains(wcode)) Then
                checker = 1
            Else
                checker = 0
            End If

            WResp.Close()
        Catch

        End Try
        If checker = 1 Then
            Return True
        Else
            Return False
        End If
    End Function

    'Public Sub video_belegung(ByVal code As String, ByVal team As String)
    '    Dim ausgabe As String = ""
    '    Dim ausgabe2 As String = ""
    '    ausgabe = "<div class=""col1""><video preload=""none"" poster=""http://www.gate-multimedia.de/knock_and_wish/" & team & "/" & code & ".jpg""> <source src=""http://www.gate-multimedia.de/knock_and_wish/" & team & "/" & code & ".mp4"" type=""video/mp4""><source src=""http://www.gate-multimedia.de/knock_and_wish/" & team & "/" & code & ".webm"" type=""video/webm""> <a href=""http://www.gate-multimedia.de/knock_and_wish/" & team & "/" & code & ".mp4"" target=""_blank""><img src=""http://www.gate-multimedia.de/knock_and_wish/" & team & "/" & code & ".jpg"" alt="""" border=""0"" /></a>    </video></div>"
    '    ausgabe2 = "<img src=""http://www.gate-multimedia.de/knock_and_wish/" & team & "/" & code & ".jpg"" alt="""" width=""200px"" border=""0"" />"
    '    TargetFoto.Text = ausgabe

    'End Sub
    Private Sub _Foto_Load(sender As Object, e As EventArgs) Handles Me.Load
        belegung(teilnahme_Name, teilnahme_Bild)

    End Sub
    Public Sub belegung(ByVal teilnahme_Name As String, ByVal teilnahme_Bild As String)
        teilnahme_Name = inhalt("Name")
        teilnahme_Bild = inhalt("Name_Bild")


    End Sub
End Class
