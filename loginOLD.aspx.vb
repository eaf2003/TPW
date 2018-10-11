Imports BLL

Partial Class _login
    Inherits System.Web.UI.Page

    Protected Sub Submit1_ServerClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles Submit1.ServerClick
        Dim usr As New BLL.Usuario
        Dim log1 As New BLL.Logger

        If usr.Login(txtUsuario.Value, txtPassword.Value) Then
            'si el login es correcto
            Session("Susr") = usr.IDUsuario

            Response.Write("OK")
            Response.Write(Session("Susr") & "<br>")

            Response.Write(usr.Roles.ToString)

            log1.Log(1, 1, usr.IDUsuario, "Login correcto")

            Response.Redirect("showAdmin.aspx")

            Session("Sprivilegio") = usr.Roles(0).ToString

        End If



    End Sub
End Class
