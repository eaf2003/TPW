
Partial Class editOK
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        '        Dim text As TextBox
        ' text = CType((PreviousPage.FindControl("maincontent.txtmail")), TextBoppx)
        ' text = CType((PreviousPage.Controls(0).FindControl("txtmail")), TextBox)

        Dim uuu As String = "indefinido"
        Dim usr As New BLL.Usuario
        Dim log1 As New BLL.Logger

        If Not IsNothing(Session("susr")) Then
            uuu = Session("susr").ToString
        End If

        usr.ActualizarUsuario(PreviousPage.IDusuario, PreviousPage.Nombre, PreviousPage.Email, PreviousPage.Telefono, 1)

        usr.QuitarRol(PreviousPage.IDusuario, usr.MostrarIDRol(usr.MostrarRoles(PreviousPage.IDusuario).Rows(0).Item(0).ToString))
        usr.AgregarRol(PreviousPage.IDusuario, usr.MostrarIDRol(PreviousPage.rol))

        log1.Log(6, 3, uuu, "Modificacion usuario: " & PreviousPage.IDusuario.ToString)




    End Sub
End Class