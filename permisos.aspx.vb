
Partial Class permisos
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim usr As New BLL.Usuario
        'le seteo roles fijos a un usr para mostrar
        usr.ActualizarPermisosRol(usr.MostrarIDRol(PreviousPage.BorraRol), True, False, True, False, True)
        usr.ActualizarPermisosRol(usr.MostrarIDRol(PreviousPage.BorraRol), True, True, False, False, True)

        '        SqlDataSource1.ConnectionString = DAL.Datos.BaseSQL.ConnSQL.ConnectionString
        FormView1.DataSource = usr.MostrarPermisosRol(usr.MostrarIDRol(PreviousPage.BorraRol))
        FormView1.DataBind()

    End Sub
End Class
