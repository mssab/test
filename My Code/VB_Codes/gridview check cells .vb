	'check evry cells in gridview , if the cells have "&nbsp;" and replace instead your message box
	Protected Sub GridView1_DataBound(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.DataBound

        For Each rw As GridViewRow In GridView1.Rows
            Dim i As Integer = 0
            Do While (i < rw.Cells.Count)
                If ((rw.Cells(i).Text = "&nbsp;") OrElse ((rw.Cells(i).Text = DBNull.Value.ToString()) OrElse String.IsNullOrWhiteSpace(rw.Cells(i).Text.ToString))) Then
                    ' here is your message box...
                    rw.Cells(i).Text = ""
                End If

                i = (i + 1)
            Loop

        Next


    End Sub