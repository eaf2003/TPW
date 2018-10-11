
Partial Class pswOK
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsNothing(Request.QueryString("password")) Then
            'cambio el password
            Dim usr As New BLL.Usuario
            Dim usuario As String = PreviousPage.IDusuario
            Dim password As String = PreviousPage.Password
            usr.CambiarPassword(usuario, password)

            Label1.Text = "Cambio de password exitoso"
        End If
    End Sub
End Class
