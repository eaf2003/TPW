Imports dal
Imports System.IO
Partial Class backuprestore
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim DB1 As Datos.iBase
        DB1 = New Datos.BaseSQL
        lblNombredb.Text = DB1.Nombre
        txtdata.Text = "C:\Program Files\Microsoft SQL Server\MSSQL\Data\" & DB1.Nombre & "_Data.MDF"
        txtlog.Text = "C:\Program Files\Microsoft SQL Server\MSSQL\Data\" & DB1.Nombre & "_Log.LDF"
        txtrutabackup.Text = "C:\Program Files\Microsoft SQL Server\MSSQL\backup\"
        lblfechabackup.Text = GetFiledate(txtrutabackup.Text & "/" & GetLastFile(txtrutabackup.Text, CStr(lblnombredb.Text & "*.BAK"))).ToString
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click



    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click

    End Sub

    Function GetFiles(ByVal directory As String, ByVal filepattern As String) As FileInfo()

        Dim dir As DirectoryInfo = New DirectoryInfo(directory)
        Dim files As FileInfo() = dir.GetFiles()
        Dim count As Integer = files.Length
        Return dir.GetFiles(filepattern)


    End Function
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



    Function GetFilesAll(ByVal directory As String) As Boolean
        Dim dir As DirectoryInfo = New DirectoryInfo(directory)
        Dim files As FileInfo() = dir.GetFiles()
        Dim count As Integer = files.Length
        Dim i As Integer

        For i = 0 To count - 1

            Response.Write(files(i))
            '    Dim theDate As Integer = DateDiff(DateInterval.Day, files(i).CreationTime, Date.Today)
            '    If theDate < 180 Then
            '        daFiles = daFiles & "<li><img src=new.gif'><a href='" & files(i).Name & "'>" & files(i).Name & "</a></li>"
            '    Else
            '        daFiles = daFiles & "<li><a href='" & files(i).Name & "'>" & files(i).Name & "</a></li>"
            '    End If
        Next

        'jokes.Text = "</ul>" & daFiles
        Return True
    End Function


    Function GetFiledate(ByVal filename As String) As Date
        Try
            Dim file As New FileInfo(filename)
            Return file.LastWriteTime
        Catch err As Exception
            Return CDate("1/1/2000")
        Finally
        End Try

    End Function

    Sub WriteToFile(ByVal sender As Object, ByVal e As EventArgs)
        'leer un archivo
        Dim fp As StreamReader
        Dim myfile As String
        Dim STATUS As String
        Try

            fp = File.OpenText(Server.MapPath(txtdata.Text))
            myfile = fp.ReadToEnd()
            STATUS = "File Succesfully Read!"
            fp.Close()
        Catch err As Exception
            STATUS = "File Read Failed. Reason is as follows " & err.ToString()
        Finally

        End Try




    End Sub

End Class
