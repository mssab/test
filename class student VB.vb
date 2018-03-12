
Public Class Student

    Private name As String
    Private geburstag As DateTime

    Public Property Fullname() As String
        Get
            Return Me.name
        End Get

        Set(ByVal value As String)
            Me.name = value
        End Set
    End Property


    Public Property datum() As DateTime
        Get
            Return Me.geburstag

        End Get

        Set(value As DateTime)

            Me.geburstag = value

        End Set
    End Property

End Class
	
	
	
