   Dim arr As Integer() = {10, 2, 3, 4, 5, 6}
        Dim top1 As Integer = arr(0)
        Dim top2 As Integer = arr(1)
        Dim top3 As Integer = arr(2)
        Dim top4 As Integer = arr(3)
        Dim top5 As Integer = arr(4)
        Dim top6 As Integer = arr(5)

        For x1 As Integer = 0 To arr.Length - 1
            If arr(x1) > top1 Then
                top1 = arr(x1)
            End If
        Next

        For x2 As Integer = 0 To arr.Length - 1
            If arr(x2) > top2 AndAlso top1 > arr(x2) Then
                top2 = arr(x2)
            End If
        Next
        For x3 As Integer = 0 To arr.Length - 1
            If arr(x3) > top3 AndAlso top2 > arr(x3) Then
                top3 = arr(x3)
            End If
        Next
        For x4 As Integer = 0 To arr.Length - 1
            If arr(x4) > top4 AndAlso top3 > arr(x4) Then
                top4 = arr(x4)
            End If
        Next
        For x5 As Integer = 0 To arr.Length - 1
            If arr(x5) > top5 AndAlso top4 > arr(x5) Then
                top5 = arr(x5)
            End If
        Next
        For x6 As Integer = 0 To arr.Length - 1
            If arr(x6) > top6 AndAlso top5 > arr(x6) Then
                top6 = arr(x6)
            End If
        Next