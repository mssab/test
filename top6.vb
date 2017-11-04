 Dim x1, x2, x3, x4, x5, x6 As Integer
        x1 = 10 'votings("Hockenheim")
        x2 = 55 'votings("Nuerburgring")
        x3 = 500 'votings("Sachsenring")
        x4 = 56 'votings("Bilster_Berg")
        x5 = 6 'votings("Oschersleben")
        x6 = 6 'votings("Lausitzring")


        Dim sx1 As String = ""
        Dim sx2 As String = ""
        Dim sx3 As String = ""
        Dim sx4 As String = ""
        Dim sx5 As String = ""
        Dim sx6 As String = ""

        Dim platz1, platz2, platz3, platz4, platz5, platz6 As Integer
        Dim numbers As Integer() = {x1, x2, x3, x4, x5, x6}

        Array.Sort(numbers)
        'Array.Reverse(numbers)

        Dim a As Integer = 0
        For a = 0 To numbers.Length - 1


        Next

        'Platz 1
        Select Case numbers(5)
            Case x1 And sx1 <> "1"
                platz1 = 1
                platz_1.Text = "<div class=""kasten_rot""><strong>" & CStr(platz1) & "</strong></div>"

                'platz_2.Text = "<div class=""kasten_grau""><strong>2</strong>"
                strecke_1.Text = "<div class=""rennstrecke_name"">HOCKENHEIMRING<strong></strong></div>"
                Anzahl_1.Text = "<span style=""font-family: 'open_sansbold' ; font-size: 150%;""><strong>" & x1 & "</strong></span>"
                sx1 = "1"
            Case x2 And sx2 <> "1"
                platz1 = 1
                platz_1.Text = "<div class=""kasten_rot""><strong>" & CStr(platz1) & "</strong></div>"
                strecke_1.Text = "<div class=""rennstrecke_name"">NÜRBURGRING<strong></strong></div>"
                Anzahl_1.Text = "<span style=""font-family: 'open_sansbold' ; font-size: 150%;""><strong>" & x2 & "</strong></span>"
                sx2 = "1"
            Case x3 And sx3 <> "1"
                platz1 = 1
                platz_1.Text = "<div class=""kasten_rot""><strong>" & CStr(platz1) & "</strong></div>"
                strecke_1.Text = "<div class=""rennstrecke_name"">SACHSENRING<strong></strong></div>"
                Anzahl_1.Text = "<span style=""font-family: 'open_sansbold' ; font-size: 150%;""><strong>" & x3 & "</strong></span>"
                sx3 = "1"
            Case x4 And sx4 <> "1"
                platz1 = 1
                platz_1.Text = "<div class=""kasten_rot""><strong>" & CStr(platz1) & "</strong></div>"
                strecke_1.Text = "<div class=""rennstrecke_name"">BILSTER BERG<strong></strong></div>"
                Anzahl_1.Text = "<span style=""font-family: 'open_sansbold' ; font-size: 150%;""><strong>" & x4 & "</strong></span>"
                sx4 = "1"
            Case x5 And sx5 <> "1"
                platz1 = 1
                platz_1.Text = "<div class=""kasten_rot""><strong>" & CStr(platz1) & "</strong></div>"
                strecke_1.Text = "<div class=""rennstrecke_name"">OSCHERSLEBEN<strong></strong></div>"
                Anzahl_1.Text = "<span style=""font-family: 'open_sansbold' ; font-size: 150%;""><strong>" & x5 & "</strong></span>"
                sx5 = "1"
            Case x6 And sx6 <> "1"
                platz1 = 1
                platz_1.Text = "<div class=""kasten_rot""><strong>" & CStr(platz1) & "</strong></div>"
                strecke_1.Text = "<div class=""rennstrecke_name"">LAUSITZRING<strong></strong></div>"
                Anzahl_1.Text = "<span style=""font-family: 'open_sansbold' ; font-size: 150%;""><strong>" & x6 & "</strong></span>"
                sx6 = "1"
        End Select


        'platz 2
        Select Case numbers(4)
            Case x1 And sx1 <> "1"
                If x1 = numbers(5) Then
                    platz_2.Text = platz_1.Text
                    platz2 = platz1
                Else
                    platz2 = 2
                    platz_2.Text = "<div class=""kasten_grau""><strong>" & CStr(platz2) & "</strong>"
                End If

                strecke_2.Text = "<div class=""rennstrecke_name"">HOCKENHEIMRING<strong></strong></div>"
                Anzahl_2.Text = "<span style=""font-family: 'open_sansbold' ; font-size: 150%;""><strong>" & x1 & "</strong></span>"
                sx1 = "1"

            Case x2 And sx2 <> "1"
                If x2 = numbers(5) Then
                    platz_2.Text = platz_1.Text
                    platz2 = platz1
                Else
                    platz2 = 2
                    platz_2.Text = "<div class=""kasten_grau""><strong>" & CStr(platz2) & "</strong>"
                End If
                strecke_2.Text = "<div class=""rennstrecke_name"">NÜRBURGRING<strong></strong></div>"
                Anzahl_2.Text = "<span style=""font-family: 'open_sansbold' ; font-size: 150%;""><strong>" & x2 & "</strong></span>"
                sx2 = "1"
            Case x3 And sx3 <> "1"
                If x3 = numbers(5) Then
                    platz_2.Text = platz_1.Text
                    platz2 = platz1
                Else
                    platz2 = 2
                    platz_2.Text = "<div class=""kasten_grau""><strong>" & CStr(platz2) & "</strong>"
                End If

                strecke_2.Text = "<div class=""rennstrecke_name"">SACHSENRING<strong></strong></div>"
                Anzahl_2.Text = "<span style=""font-family: 'open_sansbold' ; font-size: 150%;""><strong>" & x3 & "</strong></span>"
                sx3 = "1"
            Case x4 And sx4 <> "1"
                If x4 = numbers(5) Then
                    platz_2.Text = platz_1.Text
                    platz2 = platz1
                Else
                    platz2 = 2
                    platz_2.Text = "<div class=""kasten_grau""><strong>" & CStr(platz2) & "</strong>"
                End If

                strecke_2.Text = "<div class=""rennstrecke_name"">BILSTER BERG<strong></strong></div>"
                Anzahl_2.Text = "<span style=""font-family: 'open_sansbold' ; font-size: 150%;""><strong>" & x4 & "</strong></span>"
                sx4 = "1"
            Case x5 And sx5 <> "1"
                If x5 = numbers(5) Then
                    platz_2.Text = platz_1.Text
                    platz2 = platz1
                Else
                    platz2 = 2
                    platz_2.Text = "<div class=""kasten_grau""><strong>" & CStr(platz2) & "</strong>"
                End If

                strecke_2.Text = "<div class=""rennstrecke_name"">OSCHERSLEBEN<strong></strong></div>"
                Anzahl_2.Text = "<span style=""font-family: 'open_sansbold' ; font-size: 150%;""><strong>" & x5 & "</strong></span>"
                sx5 = "1"
            Case x6 And sx6 <> "1"
                If x6 = numbers(5) Then
                    'platz_2.Text = "<div class=""kasten_rot""><strong>1</strong></div>"
                    platz_2.Text = platz_1.Text
                    platz2 = platz1
                Else
                    platz2 = 2
                    platz_2.Text = "<div class=""kasten_grau""><strong>" & CStr(platz2) & "</strong></div>"
                End If

                strecke_2.Text = "<div class=""rennstrecke_name"">LAUSITZRING<strong></strong></div>"
                Anzahl_2.Text = "<span style=""font-family: 'open_sansbold' ; font-size: 150%;""><strong>" & x6 & "</strong></span>"
                sx6 = "1"
        End Select




        'Platz 3
        Select Case numbers(3)

            Case x1 And sx1 <> "1"
                If x1 = numbers(4) Then
                    platz_3.Text = platz_2.Text
                    platz3 = platz2
                Else
                    If numbers(4) = numbers(5) Then
                        platz3 = platz2 + 1
                        platz_3.Text = "<div class=""kasten_grau""><strong>" & CStr(platz3) & "</strong>"
                    Else
                        platz_3.Text = "<div class=""kasten_grau""><strong>3</strong>"
                    End If

                End If

                strecke_3.Text = "<div class=""rennstrecke_name"">HOCKENHEIMRING<strong></strong></div>"
                Anzahl_3.Text = "<span style=""font-family: 'open_sansbold' ; font-size: 150%;""><strong>" & x1 & "</strong></span>"
                sx1 = "1"

            Case x2 And sx2 <> "1"
                If x2 = numbers(4) Then
                    platz_3.Text = platz_2.Text
                    platz3 = platz2
                Else
                    If numbers(4) = numbers(5) Then
                        platz3 = platz2 + 1
                        platz_3.Text = "<div class=""kasten_grau""><strong>" & CStr(platz3) & "</strong>"
                    Else
                        platz_3.Text = "<div class=""kasten_grau""><strong>3</strong>"
                    End If

                End If
                strecke_3.Text = "<div class=""rennstrecke_name"">NÜRBURGRING<strong></strong></div>"
                Anzahl_3.Text = "<span style=""font-family: 'open_sansbold' ; font-size: 150%;""><strong>" & x2 & "</strong></span>"
                sx2 = "1"
            Case x3 And sx3 <> "1"
                If x3 = numbers(4) Then
                    platz_3.Text = platz_2.Text
                    platz3 = platz2
                Else
                    If numbers(4) = numbers(5) Then
                        platz3 = platz2 + 1
                        platz_3.Text = "<div class=""kasten_grau""><strong>" & CStr(platz3) & "</strong>"
                    Else
                        platz_3.Text = "<div class=""kasten_grau""><strong>3</strong>"
                    End If

                End If

                strecke_3.Text = "<div class=""rennstrecke_name"">SACHSENRING<strong></strong></div>"
                Anzahl_3.Text = "<span style=""font-family: 'open_sansbold' ; font-size: 150%;""><strong>" & x3 & "</strong></span>"
                sx3 = "1"
            Case x4 And sx4 <> "1"
                If x4 = numbers(4) Then
                    platz_3.Text = platz_2.Text
                    platz3 = platz2
                Else
                    If numbers(4) = numbers(5) Then
                        platz3 = platz2 + 1
                        platz_3.Text = "<div class=""kasten_grau""><strong>" & CStr(platz3) & "</strong>"
                    Else
                        platz_3.Text = "<div class=""kasten_grau""><strong>3</strong>"
                    End If

                End If

                strecke_3.Text = "<div class=""rennstrecke_name"">BILSTER BERG<strong></strong></div>"
                Anzahl_3.Text = "<span style=""font-family: 'open_sansbold' ; font-size: 150%;""><strong>" & x4 & "</strong></span>"
                sx4 = "1"
            Case x5 And sx5 <> "1"
                If x5 = numbers(4) Then
                    platz_3.Text = platz_2.Text
                    platz3 = platz2
                Else
                    If numbers(4) = numbers(5) Then
                        platz3 = platz2 + 1
                        platz_3.Text = "<div class=""kasten_grau""><strong>" & CStr(platz3) & "</strong>"
                    Else
                        platz_3.Text = "<div class=""kasten_grau""><strong>3</strong>"
                    End If

                End If

                strecke_3.Text = "<div class=""rennstrecke_name"">OSCHERSLEBEN<strong></strong></div>"
                Anzahl_3.Text = "<span style=""font-family: 'open_sansbold' ; font-size: 150%;""><strong>" & x5 & "</strong></span>"
                sx5 = "1"
            Case x6 And sx6 <> "1"
                If x6 = numbers(4) Then
                    platz_3.Text = platz_2.Text
                    platz3 = platz2
                Else

                    If numbers(4) = numbers(5) Then
                        platz3 = platz2 + 1
                        platz_3.Text = "<div class=""kasten_grau""><strong>" & CStr(platz3) & "</strong>"
                    Else
                        platz_3.Text = "<div class=""kasten_grau""><strong>3</strong>"
                    End If
                End If

                strecke_3.Text = "<div class=""rennstrecke_name"">LAUSITZRING<strong></strong></div>"
                Anzahl_3.Text = "<span style=""font-family: 'open_sansbold' ; font-size: 150%;""><strong>" & x6 & "</strong></span>"
                sx6 = "1"
        End Select

        'Platz 4
        Select Case numbers(2)
            Case x1 And sx1 <> "1"
                If x1 = numbers(3) Then
                    platz_4.Text = platz_3.Text
                    platz4 = platz3
                Else

                    If numbers(3) = numbers(4) Then
                        platz4 = platz3 + 1
                        platz_4.Text = "<div class=""kasten_grau""><strong>" & CStr(platz4) & "</strong>"
                    Else
                        platz_4.Text = "<div class=""kasten_grau""><strong>4</strong>"
                    End If

                End If

                strecke_4.Text = "<div class=""rennstrecke_name"">HOCKENHEIMRING<strong></strong></div>"
                Anzahl_4.Text = "<span style=""font-family: 'open_sansbold' ; font-size: 150%;""><strong>" & x1 & "</strong></span>"
                sx1 = "1"

            Case x2 And sx2 <> "1"
                If x2 = numbers(3) Then
                    platz_4.Text = platz_3.Text
                    platz4 = platz3
                Else
                    If numbers(3) = numbers(4) Then
                        platz4 = platz3 + 1
                        platz_4.Text = "<div class=""kasten_grau""><strong>" & CStr(platz4) & "</strong>"
                    Else
                        platz_4.Text = "<div class=""kasten_grau""><strong>4</strong>"
                    End If
                End If
                strecke_4.Text = "<div class=""rennstrecke_name"">NÜRBURGRING<strong></strong></div>"
                Anzahl_4.Text = "<span style=""font-family: 'open_sansbold' ; font-size: 150%;""><strong>" & x2 & "</strong></span>"
                sx2 = "1"
            Case x3 And sx3 <> "1"
                If x3 = numbers(3) Then
                    platz_4.Text = platz_3.Text
                    platz4 = platz3
                Else
                    If numbers(3) = numbers(4) Then
                        platz4 = platz3 + 1
                        platz_4.Text = "<div class=""kasten_grau""><strong>" & CStr(platz4) & "</strong>"
                    Else
                        platz_4.Text = "<div class=""kasten_grau""><strong>4</strong>"
                    End If
                End If

                strecke_4.Text = "<div class=""rennstrecke_name"">SACHSENRING<strong></strong></div>"
                Anzahl_4.Text = "<span style=""font-family: 'open_sansbold' ; font-size: 150%;""><strong>" & x3 & "</strong></span>"
                sx3 = "1"
            Case x4 And sx4 <> "1"
                If x4 = numbers(3) Then
                    platz_4.Text = platz_3.Text
                    platz4 = platz3
                Else
                    If numbers(3) = numbers(4) Then
                        platz4 = platz3 + 1
                        platz_4.Text = "<div class=""kasten_grau""><strong>" & CStr(platz4) & "</strong>"
                    Else
                        platz_4.Text = "<div class=""kasten_grau""><strong>4</strong>"
                    End If
                End If

                strecke_4.Text = "<div class=""rennstrecke_name"">BILSTER BERG<strong></strong></div>"
                Anzahl_4.Text = "<span style=""font-family: 'open_sansbold' ; font-size: 150%;""><strong>" & x4 & "</strong></span>"
                sx4 = "1"
            Case x5 And sx5 <> "1"
                If x5 = numbers(3) Then
                    platz_4.Text = platz_3.Text
                    platz4 = platz3
                Else
                    If numbers(3) = numbers(4) Then
                        platz4 = platz3 + 1
                        platz_4.Text = "<div class=""kasten_grau""><strong>" & CStr(platz4) & "</strong>"
                    Else
                        platz_4.Text = "<div class=""kasten_grau""><strong>4</strong>"
                    End If
                End If

                strecke_4.Text = "<div class=""rennstrecke_name"">OSCHERSLEBEN<strong></strong></div>"
                Anzahl_4.Text = "<span style=""font-family: 'open_sansbold' ; font-size: 150%;""><strong>" & x5 & "</strong></span>"
                sx5 = "1"
            Case x6 And sx6 <> "1"
                If x6 = numbers(3) Then
                    platz_4.Text = platz_3.Text
                    platz4 = platz3
                Else
                    If numbers(3) = numbers(4) Then
                        platz4 = platz3 + 1
                        platz_4.Text = "<div class=""kasten_grau""><strong>" & CStr(platz4) & "</strong>"
                    Else
                        platz_4.Text = "<div class=""kasten_grau""><strong>4</strong>"
                    End If
                End If

                strecke_4.Text = "<div class=""rennstrecke_name"">LAUSITZRING<strong></strong></div>"
                Anzahl_4.Text = "<span style=""font-family: 'open_sansbold' ; font-size: 150%;""><strong>" & x6 & "</strong></span>"
                sx6 = "1"
        End Select


        'Platz 5
        Select Case numbers(1)
            Case x1 And sx1 <> "1"
                If x1 = numbers(2) Then
                    platz_5.Text = platz_4.Text
                    platz5 = platz4
                Else
                    If numbers(2) = numbers(3) Then
                        platz5 = platz4 + 1
                        platz_5.Text = "<div class=""kasten_grau""><strong>" & CStr(platz5) & "</strong>"
                    Else
                        platz_5.Text = "<div class=""kasten_grau""><strong>5</strong>"
                    End If
                End If

                strecke_5.Text = "<div class=""rennstrecke_name"">HOCKENHEIMRING<strong></strong></div>"
                Anzahl_5.Text = "<span style=""font-family: 'open_sansbold' ; font-size: 150%;""><strong>" & x1 & "</strong></span>"
                sx1 = "1"

            Case x2 And sx2 <> "1"
                If x2 = numbers(2) Then
                    platz_5.Text = platz_4.Text
                    platz5 = platz4
                Else
                    If numbers(2) = numbers(3) Then
                        platz5 = platz4 + 1
                        platz_5.Text = "<div class=""kasten_grau""><strong>" & CStr(platz5) & "</strong>"
                    Else
                        platz_5.Text = "<div class=""kasten_grau""><strong>5</strong>"
                    End If
                End If
                strecke_5.Text = "<div class=""rennstrecke_name"">NÜRBURGRING<strong></strong></div>"
                Anzahl_5.Text = "<span style=""font-family: 'open_sansbold' ; font-size: 150%;""><strong>" & x2 & "</strong></span>"
                sx2 = "1"
            Case x3 And sx3 <> "1"
                If x3 = numbers(2) Then
                    platz_5.Text = platz_4.Text
                    platz5 = platz4
                Else
                    If numbers(2) = numbers(3) Then
                        platz5 = platz4 + 1
                        platz_5.Text = "<div class=""kasten_grau""><strong>" & CStr(platz5) & "</strong>"
                    Else
                        platz_5.Text = "<div class=""kasten_grau""><strong>5</strong>"
                    End If
                End If

                strecke_5.Text = "<div class=""rennstrecke_name"">SACHSENRING<strong></strong></div>"
                Anzahl_5.Text = "<span style=""font-family: 'open_sansbold' ; font-size: 150%;""><strong>" & x3 & "</strong></span>"
                sx3 = "1"
            Case x4 And sx4 <> "1"
                If x4 = numbers(2) Then
                    platz_5.Text = platz_4.Text
                    platz5 = platz4
                Else
                    If numbers(2) = numbers(3) Then
                        platz5 = platz4 + 1
                        platz_5.Text = "<div class=""kasten_grau""><strong>" & CStr(platz5) & "</strong>"
                    Else
                        platz_5.Text = "<div class=""kasten_grau""><strong>5</strong>"
                    End If
                End If

                strecke_5.Text = "<div class=""rennstrecke_name"">BILSTER BERG<strong></strong></div>"
                Anzahl_5.Text = "<span style=""font-family: 'open_sansbold' ; font-size: 150%;""><strong>" & x4 & "</strong></span>"
                sx4 = "1"
            Case x5 And sx5 <> "1"
                If x5 = numbers(2) Then
                    platz_5.Text = platz_4.Text
                    platz5 = platz4
                Else
                    If numbers(2) = numbers(3) Then
                        platz5 = platz4 + 1
                        platz_5.Text = "<div class=""kasten_grau""><strong>" & CStr(platz5) & "</strong>"
                    Else
                        platz_5.Text = "<div class=""kasten_grau""><strong>5</strong>"
                    End If
                End If

                strecke_5.Text = "<div class=""rennstrecke_name"">OSCHERSLEBEN<strong></strong></div>"
                Anzahl_5.Text = "<span style=""font-family: 'open_sansbold' ; font-size: 150%;""><strong>" & x5 & "</strong></span>"
                sx5 = "1"
            Case x6 And sx6 <> "1"
                If x6 = numbers(2) Then
                    platz_5.Text = platz_4.Text
                    platz5 = platz4
                Else
                    If numbers(2) = numbers(3) Then
                        platz5 = platz4 + 1
                        platz_5.Text = "<div class=""kasten_grau""><strong>" & CStr(platz5) & "</strong>"
                    Else
                        platz_5.Text = "<div class=""kasten_grau""><strong>5</strong>"
                    End If
                End If

                strecke_5.Text = "<div class=""rennstrecke_name"">LAUSITZRING<strong></strong></div>"
                Anzahl_5.Text = "<span style=""font-family: 'open_sansbold' ; font-size: 150%;""><strong>" & x6 & "</strong></span>"
                sx6 = "1"
        End Select


        'Platz 6
        Select Case numbers(0)
            Case x1 And sx1 <> "1"
                If x1 = numbers(1) Then
                    platz_6.Text = platz_5.Text
                    platz6 = platz5
                Else
                    If numbers(1) = numbers(2) Then
                        platz6 = platz5 + 1
                        platz_6.Text = "<div class=""kasten_grau""><strong>" & CStr(platz6) & "</strong>"
                    Else
                        platz_6.Text = "<div class=""kasten_grau""><strong>6</strong>"
                    End If
                End If

                strecke_6.Text = "<div class=""rennstrecke_name"">HOCKENHEIMRING<strong></strong></div>"
                Anzahl_6.Text = "<span style=""font-family: 'open_sansbold' ; font-size: 150%;""><strong>" & x1 & "</strong></span>"
                sx1 = "1"

            Case x2 And sx2 <> "1"
                If x2 = numbers(1) Then
                    platz_6.Text = platz_5.Text
                    platz6 = platz5
                Else
                    If numbers(1) = numbers(2) Then
                        platz6 = platz5 + 1
                        platz_6.Text = "<div class=""kasten_grau""><strong>" & CStr(platz6) & "</strong>"
                    Else
                        platz_6.Text = "<div class=""kasten_grau""><strong>6</strong>"
                    End If
                End If
                strecke_6.Text = "<div class=""rennstrecke_name"">NÜRBURGRING<strong></strong></div>"
                Anzahl_6.Text = "<span style=""font-family: 'open_sansbold' ; font-size: 150%;""><strong>" & x2 & "</strong></span>"
                sx2 = "1"
            Case x3 And sx3 <> "1"
                If x3 = numbers(1) Then
                    platz_6.Text = platz_5.Text
                    platz6 = platz5
                Else
                    If numbers(1) = numbers(2) Then
                        platz6 = platz5 + 1
                        platz_6.Text = "<div class=""kasten_grau""><strong>" & CStr(platz6) & "</strong>"
                    Else
                        platz_6.Text = "<div class=""kasten_grau""><strong>6</strong>"
                    End If
                End If

                strecke_6.Text = "<div class=""rennstrecke_name"">SACHSENRING<strong></strong></div>"
                Anzahl_6.Text = "<span style=""font-family: 'open_sansbold' ; font-size: 150%;""><strong>" & x3 & "</strong></span>"
                sx3 = "1"
            Case x4 And sx4 <> "1"
                If x4 = numbers(1) Then
                    platz_6.Text = platz_5.Text
                    platz6 = platz5
                Else
                    If numbers(1) = numbers(2) Then
                        platz6 = platz5 + 1
                        platz_6.Text = "<div class=""kasten_grau""><strong>" & CStr(platz6) & "</strong>"
                    Else
                        platz_6.Text = "<div class=""kasten_grau""><strong>6</strong>"
                    End If
                End If

                strecke_6.Text = "<div class=""rennstrecke_name"">BILSTER BERG<strong></strong></div>"
                Anzahl_6.Text = "<span style=""font-family: 'open_sansbold' ; font-size: 150%;""><strong>" & x4 & "</strong></span>"
                sx4 = "1"
            Case x5 And sx5 <> "1"
                If x5 = numbers(1) Then
                    platz_6.Text = platz_5.Text
                    platz6 = platz5
                Else
                    If numbers(1) = numbers(2) Then
                        platz6 = platz5 + 1
                        platz_6.Text = "<div class=""kasten_grau""><strong>" & CStr(platz6) & "</strong>"
                    Else
                        platz_6.Text = "<div class=""kasten_grau""><strong>6</strong>"
                    End If
                End If

                strecke_6.Text = "<div class=""rennstrecke_name"">OSCHERSLEBEN<strong></strong></div>"
                Anzahl_6.Text = "<span style=""font-family: 'open_sansbold' ; font-size: 150%;""><strong>" & x5 & "</strong></span>"
                sx5 = "1"
            Case x6 And sx6 <> "1"
                If x6 = numbers(1) Then
                    platz_6.Text = platz_5.Text
                    platz6 = platz5
                Else
                    If numbers(1) = numbers(2) Then
                        platz6 = platz5 + 1
                        platz_6.Text = "<div class=""kasten_grau""><strong>" & CStr(platz6) & "</strong>"
                    Else
                        platz_6.Text = "<div class=""kasten_grau""><strong>6</strong>"
                    End If
                End If

                strecke_6.Text = "<div class=""rennstrecke_name"">LAUSITZRING<strong></strong></div>"
                Anzahl_6.Text = "<span style=""font-family: 'open_sansbold' ; font-size: 150%;""><strong>" & x6 & "</strong></span>"
                sx6 = "1"
        End Select
