Imports System.Web
Imports System.Web.Services
Imports System.Web.Services.Protocols
Imports System.Data.SqlClient

<WebService(Namespace:="http://eafnet.com.ar/", Description:="Web Service para trabajo practico de LPPA Ernesto A Farias 2008")> _
<WebServiceBinding(ConformsTo:=WsiProfiles.BasicProfile1_1)> _
<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Public Class stock
    Inherits System.Web.Services.WebService
    Private da As SqlDataAdapter

    <WebMethod(Description:="Consulta a la tabla de productos y devuelve un dataset con la cantidad de productos en inventario")> _
    Public Function Cantidad(ByVal ConnActiva As String) As Data.DataSet

        Dim sql As String = "select count(*) AS Cantidad from products"
        da = New SqlDataAdapter(sql, ConnActiva)

        Dim ds As New Data.DataSet

        da.Fill(ds)

        Return ds
    End Function

    <WebMethod(Description:="Devuelve el total en pesos de la suma de todos los precios de los productos, devuelve un dataset")> _
  Public Function Total(ByVal connActiva As String) As Data.DataSet
        Dim sql As String = "select sum(price) AS ValorTotal from products"
        da = New SqlDataAdapter(sql, connActiva)

        Dim ds As New Data.DataSet

        da.Fill(ds)

        Return ds
    End Function
End Class
