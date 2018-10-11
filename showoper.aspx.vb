
Partial Class showoper
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        SqlDataSource1.ConnectionString = DAL.Datos.BaseSQL.ConnSQL.ConnectionString
        SqlDataSource2.ConnectionString = DAL.Datos.BaseSQL.ConnSQL.ConnectionString

        'ANTITAMP

        'Dim Anti As DAL.Datos.Antitamper
        'Dim CamposSec As String = "id_usuario,nombre,password,id_rol,valorhora"
        'Anti = New DAL.Datos.Antitamper
        ''Anti.SecurizarNuevaTabla("itusuarios", CamposSec, "dvhindex", "dvh", "dvv")
        'If Anti.ChequearTabla("itusuarios", "dvh", CamposSec, "dvv") Then
        'End If
        'Anti = Nothing


    End Sub

    Protected Sub btnNewItem_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnNewItem.Click
        DetailsView1.ChangeMode(DetailsViewMode.Insert)
    End Sub

    Sub SqlDataSource2_Inserted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.SqlDataSourceStatusEventArgs)
        DataList1.DataBind()
        DetailsView1.DataBind()
    End Sub

    Sub SqlDataSource2_Updated(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.SqlDataSourceStatusEventArgs)
        DataList1.DataBind()
        DetailsView1.DataBind()
    End Sub

    Sub SqlDataSource2_Deleted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.SqlDataSourceStatusEventArgs)
        DataList1.DataBind()
        DetailsView1.DataBind()
    End Sub
    Sub FileUploaded(ByVal sender As Object, ByVal e As PictureUpload.FileUploadEventArgs)

        Dim boundControl As TextBox = CType(DetailsView1.FindControl("txtPictureURL"), TextBox)
        boundControl.Text = e.FileName
    End Sub

End Class
