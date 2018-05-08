 Private Function analyse() As Integer
        Dim i As Integer = 0
        i = radiocheck(tag_location_1, tag_location_2, tag_location_3, tag_location_4, tag_location_5)
        Return i
    End Function
    Public Function radiocheck(ByVal eins As RadioButton, ByVal zwei As RadioButton, ByVal drei As RadioButton, ByVal vier As RadioButton, ByVal fuenf As RadioButton) As Integer
        Dim i As Integer = 0
        If eins.Checked = False And zwei.Checked = False And drei.Checked = False And vier.Checked = False And fuenf.Checked = False Then
            i = 0

            eins.BackColor = Drawing.Color.Red
            zwei.BackColor = Drawing.Color.Red
            drei.BackColor = Drawing.Color.Red
            vier.BackColor = Drawing.Color.Red
            fuenf.BackColor = Drawing.Color.Red
        Else
            i = 1
            eins.BackColor = Drawing.Color.White
            zwei.BackColor = Drawing.Color.White
            drei.BackColor = Drawing.Color.White
            vier.BackColor = Drawing.Color.White
            fuenf.BackColor = Drawing.Color.White
        End If
        Return i
    End Function