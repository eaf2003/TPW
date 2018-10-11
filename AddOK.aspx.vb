
Partial Class AddOK
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsNothing(Request.QueryString("add")) Then
            Dim usr As New BLL.Usuario
            Dim log1 As New BLL.Logger
            Dim uuu As String = "unk"

            usr.NuevoUsuario(PreviousPage.IDusuario, PreviousPage.Nombre, PreviousPage.Email, PreviousPage.Telefono, 5)
            usr.AgregarRol(PreviousPage.IDusuario, usr.MostrarIDRol("Usuario"))
            usr.CambiarPassword(PreviousPage.IDusuario, PreviousPage.Password)

            Label1.Text = PreviousPage.IDusuario
            Label2.Text = PreviousPage.Nombre
            Label3.Text = PreviousPage.Telefono
            Label4.Text = PreviousPage.Email

            If Not IsNothing(Session("susr")) Then

                uuu = Session("susr").ToString
            End If

            log1.Log(5, 3, uuu, "Nuevo usuario creado: " & PreviousPage.IDusuario.ToString)

        End If

 


    End Sub

End Class
