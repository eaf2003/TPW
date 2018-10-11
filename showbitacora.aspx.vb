
Partial Class showbitacora
    Inherits System.Web.UI.Page

    Protected Sub SqlDataSource1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles SqlDataSource1.Load
        SqlDataSource1.ConnectionString = DAL.Datos.BaseSQL.ConnSQL.ConnectionString
    End Sub

    Protected Sub SqlDataSource1_Selecting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs) Handles SqlDataSource1.Selecting

    End Sub

    Protected Sub DataList1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles DataList1.Load

    End Sub

    Protected Sub DataList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DataList1.SelectedIndexChanged

    End Sub
End Class
