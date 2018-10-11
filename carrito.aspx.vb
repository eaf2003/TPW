
Partial Class carrito
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim key As String
        For Each key In Session.Contents
            If Left(key, 7) = "carrito" Then

                Response.Write(Session(key) & "<BR>")

            End If
        Next

        ' Response.Write(Session("carritototal"))

    End Sub
End Class
