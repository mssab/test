Imports System.Data.SqlClient

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        '*** Prüfung, ob die Person in der Datenbank existiert ***

        'Dim Command As String
        'Dim id As Integer = 0
        'Command = "SELECT id FROM Ducati_Haendler WHERE Passwort = '" & passwort.Text & "' and  Haendlernummer = " & haendlernummer.Text
        'Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("ducati").ConnectionString)
        'con.Open()
        'Try
        '    Dim commando As New SqlCommand(Command, con)
        '    id = commando.ExecuteScalar
        'Catch ex As Exception

        'End Try
        'con.Close()
        'con.Dispose()

        ''*** Bei fehlendem Eintrag, Fehlermeldung, ansonsten Füllen der Session ***
        'If id = 0 Then
        '    Label4.Visible = True
        '    Exit Sub
        'End If
        'If id > 0 Then
        '    'Label4.Visible = True
        '    'Exit Sub

        '    FormsAuthentication.RedirectFromLoginPage(id.ToString, False)

        'End If

    End Sub



End Class
