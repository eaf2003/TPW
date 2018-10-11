Imports BLL
Partial Class pp
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

            If usr.Roles(0) = "Administrador" Then
                Response.Redirect("showAdmin.aspx")
            End If
            If usr.Roles(0) = "Operador" Then
                Response.Redirect("showoper.aspx")
            End If

            If usr.Roles(0) = "Usuario" Then
                Response.Redirect("showuser.aspx")
            End If
            '  Response.Redirect("showAdmin.aspx")

        Else
            log1.Log(1, 1, usr.IDUsuario, "Login fallo ingreso: " & txtUsuario.Value & " - " & txtPassword.Value)
        End If

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
End Class
