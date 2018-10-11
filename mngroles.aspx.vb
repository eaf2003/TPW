
Partial Class mngroles
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim Usr As New BLL.Usuario
        '       If Not Request.QueryString("IDusuario") = Nothing Then




        '    Dim st As DataList
        '   st = ctype(PreviousPage.FindControl("userlist"),DataList
        '     Dim userID As String = Request.QueryString("IDusuario")

        RolList1.DataSource = Usr.MostrarTodosRoles
        RolList1.DataValueField = "RolDescripcion"
        RolList1.DataTextField = "RolDescripcion"
        'RolList.Text = Usr.MostrarRoles(userID).Rows(0).Item(0).ToString
        RolList1.DataBind()


        '      End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

    End Sub
End Class
