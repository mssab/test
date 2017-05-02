Imports System.Net.NetworkInformation
Public Class Home
    Inherits System.Web.UI.Page
    Dim MacAdd As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim nics As NetworkInterface() = NetworkInterface.GetAllNetworkInterfaces()
        MacAdd = nics(0).GetPhysicalAddress().ToString()
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Label1.Text = MacAdd
    End Sub
End Class