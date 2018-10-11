Imports dal
Imports System.IO
Partial Class bkpresOK
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim uuu As String = "unk"
        Dim log1 As New BLL.Logger

        If Not IsNothing(Request.QueryString("backup")) Then
            If Request.QueryString("backup").ToString = "true" Then
                Dim BR1 As New DAL.Datos.BackupRestore
                Dim DB1 As New DAL.Datos.BaseSQL
                BR1.spBackupDB(Datos.BaseSQL.ConnSQL, PreviousPage.RutaBackup, 5)

                Response.Write("se hizo backup: " & PreviousPage.DBNombre)

                If Not IsNothing(Session("susr")) Then
                    uuu = Session("susr").ToString
                End If
                log1.Log(5, 3, uuu, "Backup Exitoso : " & Now)

            End If

        End If

        If Not IsNothing(Request.QueryString("restore")) Then
            Dim BR1 As New DAL.Datos.BackupRestore
            Dim DB1 As New DAL.Datos.BaseSQL
            Dim nombreDB As String
            Dim nombreOrigen As String
            nombreDB = DB1.Nombre
            nombreOrigen = DB1.NombreOrigen
            DB1 = Nothing
            Dim fileBAK As String
            fileBAK = PreviousPage.RutaBackup & GetLastFile(PreviousPage.RutaBackup, CStr(PreviousPage.DBNombre & "*.BAK")).ToString
            '    BR1.spRestoreDB(nombreOrigen, nombreDB, True, fileBAK, PreviousPage.DBData, PreviousPage.DBLog)
            BR1.spRestoreDB(nombreOrigen, nombreDB, True, fileBAK, "NULL", "NULL")

            Response.Write("Restaurando...   " & PreviousPage.DBData)
            If Not IsNothing(Session("susr")) Then
                uuu = Session("susr").ToString
            End If
            log1.Log(5, 3, uuu, "Retore desde: " & fileBAK)


        End If

    End Sub

    Function GetLastFile(ByVal directory As String, ByVal filepattern As String) As String
        Try
            Dim dir As DirectoryInfo = New DirectoryInfo(directory)
            Dim files As FileInfo() = dir.GetFiles(filepattern)
            Dim count As Integer = files.Length

            Return files(UBound(files)).Name.ToString
        Catch err As Exception
            Return "No se pudo leer " & err.ToString()
        Finally

        End Try



    End Function
End Class
