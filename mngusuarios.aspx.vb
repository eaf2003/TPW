
Partial Class mngusuarios
    Inherits System.Web.UI.Page
    Dim usr As New BLL.Usuario
    Protected Sub DeleteUser_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles DeleteUser.Click
        Dim log1 As New BLL.Logger
        Dim uuu As String = "unk"

        Dim u As String = UserList.SelectedValue
        If usr.EliminarUsuario(u) Then
            '            If Membership.DeleteUser(u) Then
            Message.Text = "Usuario " & u & " borrado"
            If Not IsNothing(Session("susr")) Then

                uuu = Session("susr").ToString
            End If

            log1.Log(5, 3, uuu, "Eliminacion Usuario: " & u)


        Else
            Message.Text = "Usuario " & u & " no borrado"
        End If

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            UserList.DataSource = usr.TomarUsuarios
            UserList.DataValueField = "ID_USUARIO"
            UserList.DataTextField = "id_usuario"
            UserList.DataBind()
        End If
    End Sub

    Protected Sub CreateUser_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles CreateUser.Click

    End Sub

    Protected Sub EditUser_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles EditUser.Click
        Response.Redirect("editusuarios.aspx?IDusuario=" & UserList.SelectedValue)
    End Sub
End Class
