Imports Stock
Partial Class showwebs
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim wStock As New stock

        GridView1.DataSource = wStock.Cantidad(DAL.Datos.BaseSQL.ConnSQL.ConnectionString)
        GridView1.DataBind()

        GridView2.DataSource = wStock.Total(DAL.Datos.BaseSQL.ConnSQL.ConnectionString)
        GridView2.DataBind()
    End Sub
End Class
