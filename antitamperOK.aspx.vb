
Partial Class antitamperOK
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim anti1 As New DAL.Datos.Antitamper
        Dim CamposSec As String = "id_usuario,nombre,password,id_rol,valorhora"
        'anti.SecurizarNuevaTabla("itusuarios", CamposSec, "dvhindex", "dvh", "dvv")
        anti1.ActualizarChecksum(anti1.Cambiados.TableName.ToString, anti1.CamposEnChecksum, anti1.CampoValidadorHoriz, anti1.CampoValidadorVert)


    End Sub
End Class
