   Page.Controls.Add(New LiteralControl("<script> function check() {if (document.getElementById(reisebereitschaft_uebernachtung_ja).checked == true ){ document.getElementById('Piercing_wo').style.display = 'block'; }else{ document.getElementById('stadts').style.display = 'block'; } }</script>"))

        If reisebereitschaft_uebernachtung_ja.Checked = True Then

stadts.Style.Add("display", "block")


        Else
            stadts.Style.Add("display", "none")
        End If

        If uebernachtungsmoeglichkeit_2.Text.Length > 0 Then

            stadt1.Style.Add("display", "block")
            bu_stadt1.Style.Add("display", "none")

        End If
        If uebernachtungsmoeglichkeit_3.Text.Length > 0 Then

            stadt2.Style.Add("display", "block")
            bu_stadt2.Style.Add("display", "none")

        End If
        If einsatz_von2.Text = "" Then
        Else
            datum.Style.Add("display", "block")
            bu_datum.Style.Add("display", "none")

        End If
        If einsatz_von3.Text = "" Then
        Else

            datum2.Style.Add("display", "block")
            bu_datum2.Style.Add("display", "none")

        End If

        If alle_zeite.Checked = True Then
            z1.Style.Add("display", "none")
            z2.Style.Add("display", "none")
            z3.Style.Add("display", "none")
            z4.Style.Add("display", "none")
        End If
        If alle_tags.Checked = True Then
            t1.Style.Add("display", "none")
            t2.Style.Add("display", "none")
            t3.Style.Add("display", "none")
            t4.Style.Add("display", "none")
            t5.Style.Add("display", "none")
            t6.Style.Add("display", "none")
            t7.Style.Add("display", "none")
        End If

        If alle_monate.Checked = True Then
            m1.Style.Add("display", "none")
            m2.Style.Add("display", "none")
            m3.Style.Add("display", "none")
            m4.Style.Add("display", "none")
            m5.Style.Add("display", "none")
            m6.Style.Add("display", "none")
            m7.Style.Add("display", "none")
            m8.Style.Add("display", "none")
            m9.Style.Add("display", "none")
            m10.Style.Add("display", "none")
            m11.Style.Add("display", "none")
            m12.Style.Add("display", "none")
        End If