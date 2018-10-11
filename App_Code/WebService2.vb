Imports System.Web
Imports System.Web.Services
Imports System.Web.Services.Protocols
Imports System.Data.SqlClient
<WebService(Namespace:="http://tempuri.org/")> _
<WebServiceBinding(ConformsTo:=WsiProfiles.BasicProfile1_1)> _
<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Public Class WebService2
     Inherits System.Web.Services.WebService

    Private da As SqlDataAdapter

    <WebMethod(Description:="Cantidad en stock")> _
    Public Function Cantidad(ByVal ConnActiva As SqlConnection) As Data.DataSet
        Dim sql As String = "select count(*) AS Cantidad from products"
        da = New SqlDataAdapter(sql, ConnActiva)

        Dim ds As New Data.DataSet

        da.Fill(ds)

        Return ds
    End Function

    <WebMethod(Description:="Total de stock")> _
  Public Function Total(ByVal connActiva As SqlConnection) As Data.DataSet
        Dim sql As String = "select sum(price) AS ValorTotal from products"
        da = New SqlDataAdapter(sql, connActiva)

        Dim ds As New Data.DataSet

        da.Fill(ds)

        Return ds
    End Function

End Class
