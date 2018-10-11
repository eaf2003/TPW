Imports System.IO
Imports EXTRAS

Partial Class PictureUpload
    Inherits System.Web.UI.UserControl

    ' the class to return to the calling page
    ' - it simply contains the relative path of where the file was uploaded
    Public Class FileUploadEventArgs
        Inherits EventArgs

        Public Sub New(ByVal FileName As String)
            _fileName = FileName
        End Sub

        Private _fileName As String
        Public ReadOnly Property FileName() As String
            Get
                Return _fileName
            End Get
        End Property
    End Class

    ' define the delgate for the sucessful uploading event
    Public Delegate Sub FileUploadedEventHandler(ByVal sender As Object, ByVal e As FileUploadEventArgs)

    ' define the event for sucessful upload
    Public Event FileUploaded As FileUploadedEventHandler

    ' the modes for uploading images
    Public Enum ImageType
        Match
        News
        Player
        Product
    End Enum

    Private _uploadImageType As ImageType
    Public Property UploadImageType() As ImageType
        Get
            Return _uploadImageType
        End Get
        Set(ByVal value As ImageType)
            _uploadImageType = value
        End Set
    End Property

    Sub btnUpload_Click(ByVal sender As Object, ByVal e As System.EventArgs)

        Dim ImagesFolder As String = String.Empty
        Dim savePath As String
        Dim saveFile As String

        ' upload the file
        If (FileUpload1.HasFile) Then
            ' set the directories
            Select Case _uploadImageType
                Case ImageType.Match
                    ImagesFolder = "MatchImages"
                Case ImageType.News
                    ImagesFolder = "NewsImages"
                Case ImageType.Player
                    ImagesFolder = "PlayerImages"
                Case ImageType.Product
                    ImagesFolder = "Productos"
            End Select
            savePath = Path.Combine(Request.PhysicalApplicationPath, ImagesFolder)

            ' save the image
            saveFile = Path.Combine(savePath, FileUpload1.FileName)
            FileUpload1.SaveAs(saveFile)

            ' for product images we also create a thumbnail
            If _uploadImageType = ImageType.Product Then
                Dim newPath As String = Path.Combine(savePath, "thumb_" & FileUpload1.FileName)
                ImageHandling.GenerateThumbnail(saveFile, newPath)
            End If

            ' Notify the user that the file was uploaded successfully.
            Status.Text = "Upload OK!"

            ' let the parent know that the file was uploaded
            OnFileUploaded(New FileUploadEventArgs(FileUpload1.FileName))
        Else
            ' Notify the user that a file was not uploaded.
            Status.Text = "indique el archivo"
        End If

    End Sub

    ' declare the event method
    Protected Overridable Sub OnFileUploaded(ByVal e As FileUploadEventArgs)
        ' fire the delegate
        RaiseEvent FileUploaded(Me, e)
    End Sub
End Class
