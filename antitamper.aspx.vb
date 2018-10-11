
Partial Class antitamper
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim anti As New DAL.Datos.Antitamper


        Dim CamposSec As String = "id_usuario,nombre,password,id_rol,valorhora"
        If anti.ChequearTabla("itusuarios", "dvh", CamposSec, "dvv") Then
        End If


        Response.Write("datos Cambiados<br>")

        GridView1.DataSource = anti.Cambiados
        GridView1.DataBind()


        anti = Nothing

    End Sub
End Class
