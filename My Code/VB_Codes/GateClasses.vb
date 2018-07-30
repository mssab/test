Imports System.Data
Imports System.Data.OleDb
Imports System.Data.SqlClient
Imports System.IO
Imports System.Security.Cryptography
Imports Microsoft.SqlServer
Imports Microsoft.VisualBasic



Public Class GateClasses
    'connectionString
    Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("reportingConnectionString").ConnectionString)

    '**Anmeldung Funktion mit 4 Variable für login setie 
    Public Function anmeldung(vorname As String, nachname As String, passwort As String, tablename As String) As Integer
        Dim id As Integer
        Dim rolle As String = ""
        Dim Command As String = ""

        con.Open()
        Command = "SELECT id FROM " & tablename & " WHERE vorname = '" & vorname & "' AND nachname =  '" & nachname & "' AND passwort = '" & passwort & "'"
        Try
            Dim commando As New SqlCommand(Command, con)
            id = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        con.Close()
        con.Dispose()
        Return id
    End Function

    'fill the Gridview from DB in 
    Public Sub BindData_from_Gridview(Grid As GridView, Command As String, con As SqlConnection)
        con.Open()
        Dim adp As SqlDataAdapter = New SqlDataAdapter(Command, con)
        Dim dataTable As DataTable = New DataTable()
        adp.Fill(dataTable)

        If dataTable.Rows.Count > 0 Then
            Grid.DataSource = dataTable
            Grid.DataBind()
        End If
        con.Close()
        con.Dispose()
    End Sub
    '**Anmeldung Funktion mit 2 Variable für login setie 
    Public Function anmeldung(email As String, passwort As String, Tablename As String) As Integer
        Dim id As Integer
        Dim rolle As String = ""
        Dim Command As String = ""
        con.Open()
        Command = "SELECT id FROM " & Tablename & " WHERE vorname = '" & email & "' AND  passwort = '" & passwort & "'"
        Try
            Dim commando As New SqlCommand(Command, con)
            id = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        con.Close()
        con.Dispose()
        Return id
    End Function

    '**Select Funktion um bestimmte Spalte zubekommen 
    Public Function select_funktion(spalte As String, fromTable As String, where As String) As Integer
        Dim id As String = "nix"
        Dim rolle As String = ""
        Dim Command As String = ""
        con.Open()
        Command = "SELECT " & spalte & " FROM " & fromTable & " WHERE " & where & ""
        Try
            Dim commando As New SqlCommand(Command, con)
            id = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        con.Close()
        con.Dispose()
        Return id

    End Function
    'AlertBox Javascript
    Public Sub AlertBox(ByVal Message As String)
        System.Web.HttpContext.Current.Response.Write("<SCRIPT LANGUAGE=""JavaScript"">" & vbCrLf)
        System.Web.HttpContext.Current.Response.Write("alert(""" & Message & """)" & vbCrLf)
        System.Web.HttpContext.Current.Response.Write("</SCRIPT>")
    End Sub
    'weiterleiten nach bestimmte Seconde zum Url
    Shared Sub weiterleiten(seconde As String, url As String)
        HttpContext.Current.Response.AddHeader("REFRESH", "" & seconde & ";URL=" & url & "")
    End Sub

    'ruf javascript in Load VB , vorher musst du ein java funktion in aspx setzten 
    Shared Sub call_Javascript(page As Page, javaCode As String)
        page.Controls.Add(New LiteralControl(javaCode)) ' EX: javaCode="<script type='text/javascript'>openfeedback();</script>"

        'Function openfeedback() {
        'openCity_unten(event, 'mitte_unten', 'button_unten_mitte');document.getElementById('unten_rechts').className += ' active'; return false;
        '}
        '</script>
    End Sub

    'Checkbox Funktion 'ja' oder 'nein'
    Function checker(ByVal cbox As CheckBox) As String
        Dim antwort As String = ""
        If cbox.Checked = True Then
            antwort = "ja"
        Else
            antwort = "nein"
        End If
        Return antwort
    End Function

    'Checkbox Funktion '1' oder '0'
    Function checkerint(ByVal cbox As CheckBox) As Integer
        Dim antwort As Integer = 0
        If cbox.Checked = True Then
            antwort = 1
        Else
            antwort = 0
        End If
        Return antwort
    End Function

    ' TextBox PflichtField Funktion 
    Public Function textbox_checker(ByVal box As TextBox, ByVal zaehler As Integer) As Integer
        Dim i As Integer = zaehler
        If box.Text.Length = 0 Then
            i = 1
            box.BorderColor = Drawing.Color.Red
        Else
            box.BorderColor = Drawing.Color.FromArgb(219, 219, 219)
        End If
        Return i
    End Function

    ' Dropdown PflichtField Funktion 
    Public Function dropdown_checker(ByVal box As DropDownList, ByVal zaehler As Integer) As Integer
        Dim i As Integer = zaehler
        If box.SelectedIndex = 0 Then
            i = 1
            box.BorderColor = Drawing.Color.Red
        Else
            box.BorderColor = Drawing.Color.FromArgb(219, 219, 219)
        End If
        Return i
    End Function

    'Text Formatieren
    Public Function formatierung(ByVal str As String) As String
        str = str.Replace("'", "`")
        str = str.Replace("/", " ")
        Return str
    End Function 'Text Formatieren


    'Import Excel Datei und exportiert es To GridView 
    Protected Sub ExportToGrid(ByVal DataSource As String, ByVal Gridview As GridView, ImportName As String)
        Dim dt As New DataTable()
        Dim MyConnection As New OleDbConnection()
        If DataSource.EndsWith(".xls") Then
            'Connection for MS Excel 2003 .xls format
            MyConnection.ConnectionString = "provider=Microsoft.Jet.OLEDB.4.0; Data Source='" + DataSource + "';Extended Properties=Excel 8.0;"
        Else
            'Connection for .xslx 2007 format
            MyConnection.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source='" + DataSource + "';Extended Properties=Excel 12.0 Xml;HDR=YES;IMEX=1;"

        End If
        'Select your Excel file
        Dim MyCommand As New System.Data.OleDb.OleDbDataAdapter("select * from [" & ImportName & "$]", MyConnection)
        Dim DtSet As New System.Data.DataSet()
        'Bind all excel data in to data set
        MyCommand.Fill(DtSet, "[Import$]")
        dt = DtSet.Tables(0)
        MyConnection.Close()
        'Check datatable have records
        If (dt.Rows.Count > 0) Then

            Gridview.DataSource = dt

            Gridview.DataBind()
            Gridview.Style.Add("Color", "#000000;")
            Gridview.RowStyle.ForeColor = (Drawing.Color.Black)
        End If
        'Delete temporary Excel file from the Server path
        If (System.IO.File.Exists(DataSource)) Then

            System.IO.File.Delete(DataSource)
        End If
    End Sub
    ' MD5 Hash Generator 
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

    'diese Funktion kann man die file in server prüfen ob da ist ! 
    Public Sub bild_labeltext(ByVal bildname As String, ByVal lab As Label, Server_MapPath As String, QueryString As String)

        Dim stamm_id As String = QueryString
        If File.Exists(Server_MapPath) Then  ' ex: Server.MapPath("~/upload/" & stamm_id & "/" & bildname & "")
            lab.Text = "<a href=""" & Server_MapPath & "/" & bildname & """ target=""_blank"" style=""color:#000000;"" id=""example1"">Bilder ansehen</a>"
        Else
            lab.Text = "keine Bilder verfügbar"
        End If

    End Sub
    Public Function updatte_funktion(command As String) As Integer
        Dim datum As String
        datum = Date.Today.ToShortDateString
        command = " "
        con.Open()

        Dim executer As Integer = 0
        Try
            Dim commando As New SqlCommand(command, con)
            executer = commando.ExecuteNonQuery()
        Catch ex As Exception
            executer.ToString()
        End Try

        con.Close()
        con.Dispose()

        Return executer
    End Function

    'bei dieses Funktion  alle Variable sind wie geschriebn haben !
    Public Sub belegung_Portal(produkte As Table, Besuchsfragen As Table, session As Object, Fragen As Table, weihnachtsset As Table, facings As Table, panel_sonstiges As Panel, Panel_Auswertung As Panel)
        Dim i As Integer = 0

        '*** Belegung der Besuchsfragen ***
        For i = 1 To 5
            Dim name As String = "Besuchsfrage" & i.ToString
            Dim row_Besuchsfragen As TableRow
            Dim label_besuchsfragen As Label
            row_Besuchsfragen = Besuchsfragen.FindControl("Zeile_" & name)
            label_besuchsfragen = row_Besuchsfragen.FindControl("Name_" & name)
            Dim command As String = ""
            Dim dummy As String = ""
            con.Open()
            Try
                command = "select aktiv from Berichtsfragen where Tabellenheader = '" & name & "' and aktion_id = " & session
                Dim commando As New SqlCommand(command, con)
                dummy = commando.ExecuteScalar

            Catch ex As Exception

            End Try

            If dummy = "True" Then
                row_Besuchsfragen.Visible = True
                Try
                    command = "select Frage from Berichtsfragen where Tabellenheader = '" & name & "' and aktion_id = " & session
                    Dim commando As New SqlCommand(command, con)
                    label_besuchsfragen.Text = commando.ExecuteScalar
                Catch ex As Exception

                End Try
            Else
                row_Besuchsfragen.Visible = False
            End If
            con.Close()
            con.Dispose()
        Next

        '*** Belegung der Produkte ***
        Dim dummy_Bestand As String = ""
        Dim dummy_Verkauf As String = ""
        Dim dummy_NR_Rabatt As String = ""
        Dim dummy_Neulistung As String = ""
        Dim zaehler_Bestand As Integer = 0
        Dim zaehler_Verkauf As Integer = 0
        Dim zaehler_NR_Rabatt As Integer = 0
        Dim zaehler_Neulistung As Integer = 0
        For i = 1 To 30

            Dim command As String = ""
            con.Open()
            Try
                command = "select Bestand from Produkte where Tabellenheader = 'Produkt" & i & "' and Aktion = " & session
                Dim commando As New SqlCommand(command, con)
                dummy_Bestand = commando.ExecuteScalar
                If dummy_Bestand = "True" Then
                    zaehler_Bestand = zaehler_Bestand + 1
                Else
                    produkte.FindControl("Bestand_Produkt" & i).Visible = False
                End If
            Catch ex As Exception

            End Try

            Try
                command = "select Verkauf from Produkte where Tabellenheader = 'Produkt" & i & "' and Aktion = " & session
                Dim commando As New SqlCommand(command, con)
                dummy_Verkauf = commando.ExecuteScalar
                If dummy_Verkauf = "True" Then
                    zaehler_Verkauf = zaehler_Verkauf + 1
                Else
                    produkte.FindControl("Verkauf_Produkt" & i).Visible = False
                End If
            Catch ex As Exception

            End Try

            Try
                command = "select NR_Rabatt from Produkte where Tabellenheader = 'Produkt" & i & "' and Aktion = " & session
                Dim commando As New SqlCommand(command, con)
                dummy_NR_Rabatt = commando.ExecuteScalar
                If dummy_NR_Rabatt = "True" Then
                    zaehler_NR_Rabatt = zaehler_NR_Rabatt + 1
                Else
                    produkte.FindControl("NR_Produkt" & i).Visible = False
                End If
            Catch ex As Exception

            End Try

            Try
                command = "select Neulistung from Produkte where Tabellenheader = 'Produkt" & i & "' and Aktion = " & session
                Dim commando As New SqlCommand(command, con)
                dummy_Neulistung = commando.ExecuteScalar
                If dummy_Neulistung = "True" Then
                    zaehler_Neulistung = zaehler_Neulistung + 1
                Else
                    produkte.FindControl("Neulistung_Produkt" & i).Visible = False
                End If
            Catch ex As Exception

            End Try
            con.Close()
            con.Dispose()

            Dim j As Integer = 0
            If zaehler_Bestand = 0 Then
                For j = 0 To 29
                    produkte.Rows(j).Cells(1).Visible = False
                Next
                produkte.FindControl("Header_Bestand").Visible = False
            End If
            'If zaehler_Verkauf = 0 Then
            '    For j = 0 To 29
            '        Produkte.Rows(j).Cells(2).Visible = False
            '    Next
            '    Produkte.FindControl("Header_Verkauf").Visible = False
            'End If
            'If zaehler_NR_Rabatt = 0 Then
            '    For j = 0 To 29
            '        Produkte.Rows(j).Cells(3).Visible = False
            '    Next
            '    Produkte.FindControl("Header_NR_Rabatt").Visible = False
            'End If
            'If zaehler_Neulistung = 0 Then
            '    For j = 0 To 29
            '        Produkte.Rows(j).Cells(4).Visible = False
            '    Next
            '    Produkte.FindControl("Header_Neulistung").Visible = False
            'End If
            'bemerkung_material.Text = zaehler_Neulistung & ", " & zaehler_Bestand & ", " & zaehler_NR_Rabatt & ", " & zaehler_Verkauf & ", "

        Next

        For i = 1 To 30
            Dim name As String = "Produkt" & i
            Dim row_Produkte As TableRow
            Dim label_Produkte As Label
            row_Produkte = produkte.FindControl("Zeile_" & name)
            label_Produkte = produkte.FindControl("Name_" & name)
            Dim command As String = ""
            Dim dummy As String = ""
            con.Open()
            Try
                command = "select aktiv from Produkte where Tabellenheader = '" & name & "' and Aktion = " & session
                Dim commando As New SqlCommand(command, con)
                dummy = commando.ExecuteScalar

            Catch ex As Exception

            End Try

            If dummy = "True" Then
                row_Produkte.Visible = True
                Try
                    command = "select Produktname from Produkte where Tabellenheader = '" & name & "' and Aktion = " & session
                    Dim commando As New SqlCommand(command, con)
                    label_Produkte.Text = commando.ExecuteScalar
                Catch ex As Exception

                End Try
            Else
                row_Produkte.Visible = False
            End If
            con.Close()
            con.Dispose()
        Next


        '*** Belegung der Fragen ***
        For i = 1 To 15
            Dim name As String = "Frage" & i
            Dim row_Fragen As TableRow
            Dim label_Fragen As Label
            row_Fragen = produkte.FindControl("Zeile_" & name)
            label_Fragen = produkte.FindControl("Name_" & name)
            Dim command As String = ""
            Dim dummy As String = ""
            con.Open()
            Try
                command = "select aktiv from Fragen where Tabellenheader = '" & name & "' and aktion_id = " & session
                Dim commando As New SqlCommand(command, con)
                dummy = commando.ExecuteScalar

            Catch ex As Exception

            End Try

            If dummy = "True" Then
                row_Fragen.Visible = True
                Try
                    command = "select Frage from Fragen where Tabellenheader = '" & name & "' and aktion_id = " & session
                    Dim commando As New SqlCommand(command, con)
                    label_Fragen.Text = commando.ExecuteScalar
                Catch ex As Exception

                End Try
            Else
                row_Fragen.Visible = False
            End If
            con.Close()
            con.Dispose()
        Next

        '*** Deaktivierung der inaktiven Bereiche ***
        Dim command1 As String = ""
        Dim dummy_weihnachtsset As String = ""
        Dim dummy_facing As String = ""
        Dim dummy_Fragen As String = ""
        Dim dummy_bearbeitung As String = ""
        con.Open()
        Try
            command1 = "select Weihnachtsset from Einsatzbogen_Parts where Aktion = " & session("id")
            Dim commando As New SqlCommand(command1, con)
            dummy_weihnachtsset = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command1 = "select Facings from Einsatzbogen_Parts where Aktion = " & session("id")
            Dim commando As New SqlCommand(command1, con)
            dummy_facing = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command1 = "select Fragen_Sonstiges from Einsatzbogen_Parts where Aktion = " & session("id")
            Dim commando As New SqlCommand(command1, con)
            dummy_Fragen = commando.ExecuteScalar

        Catch ex As Exception

        End Try
        Try
            command1 = "select Bericht_Bearbeitung from Einsatzbogen_Parts where Aktion = " & session("id")
            Dim commando As New SqlCommand(command1, con)
            dummy_bearbeitung = commando.ExecuteScalar

        Catch ex As Exception

        End Try

        If dummy_Fragen = "False" Then
            Fragen.Visible = False
        End If
        If dummy_weihnachtsset = "False" Then
            weihnachtsset.Visible = False
        End If
        If dummy_facing = "False" Then
            facings.Visible = False
        End If
        If dummy_Fragen = "False" And dummy_weihnachtsset = "False" And dummy_facing = "False" Then
            panel_sonstiges.Visible = False
        End If
        If dummy_bearbeitung = "False" Then
            Panel_Auswertung.Visible = False
        End If

        con.Close()
        con.Dispose()


    End Sub



End Class
