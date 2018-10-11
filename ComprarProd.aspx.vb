
Partial Class ComprarProd
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        SqlDataSource1.ConnectionString = DAL.Datos.BaseSQL.ConnSQL.ConnectionString
    End Sub

    Sub btnAddToCart_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)

        Dim Price As String = CType(FormView1.FindControl("PriceLabel"), Label).Text
        Dim ProductName As String = CType(FormView1.FindControl("NameLabel"), Label).Text
        Dim PictureURL As String = CType(FormView1.FindControl("PictureUrlLabel"), Label).Text
        Dim ProductID As Integer = CInt(Request.QueryString("ProductID"))



        Session("carrito" & ProductID) = "Articulo:" & ProductID & "    Descripcion: " & ProductName & "Precio= " & Price

        'Session("carritototal") = CLng("carritototal") + CLng(Price)

        Server.Transfer("comprarprod.aspx")
    End Sub

End Class
