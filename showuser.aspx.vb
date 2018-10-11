
Partial Class showuser
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblusuario.Text = Session("susr").ToString
        SqlDataSource1.ConnectionString = DAL.Datos.BaseSQL.ConnSQL.ConnectionString
        Session("carritototal") = 0
    End Sub
End Class
