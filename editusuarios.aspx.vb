
Partial Class editusuarios
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim Usr As New BLL.Usuario
        If Not Request.QueryString("IDusuario") = Nothing Then




            '    Dim st As DataList
            '   st = ctype(PreviousPage.FindControl("userlist"),DataList
            Dim userID As String = Request.QueryString("IDusuario")
            lblidusuario.Text = Request.QueryString("IDusuario")

            txtemail.Text = Usr.MostrarDetallesUsuario(userID).Rows(0).Item("sector")
            txtnombre.Text = Usr.MostrarDetallesUsuario(userID).Rows(0).Item("nombre")
            txttelefono.Text = Usr.MostrarDetallesUsuario(userID).Rows(0).Item("interno")
            rolList.DataSource = Usr.MostrarTodosRoles
            rolList.DataValueField = "RolDescripcion"
            rolList.DataTextField = "RolDescripcion"
            rolList.Text = Usr.MostrarRoles(userID).Rows(0).Item(0).ToString
            rolList.DataBind()


        End If

    
 

    End Sub

 
End Class
