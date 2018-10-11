
Partial Class rolOK
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not IsNothing(Request.QueryString("agregar")) Then
            Dim Usr As New BLL.Usuario

            Usr.NuevoRol(PreviousPage.NuevoRol)
            Response.Write("<br> Rol Creado... " & PreviousPage.NuevoRol)

        End If

        If Not IsNothing(Request.QueryString("eliminar")) Then
            Dim Usr As New BLL.Usuario

            Usr.EliminarRol(Usr.MostrarIDRol(PreviousPage.BorraRol))
            Response.Write("<br> Rol Eliminado... " & PreviousPage.BorraRol)

        End If


    End Sub
End Class
