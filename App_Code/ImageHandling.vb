Imports Microsoft.VisualBasic
Imports System.Drawing
Imports System.Web

Public Class ImageHandling

    ''' <summary>
    ''' Generate a thumbnail image, for uploaded files
    ''' </summary>
    ''' <param name="SourceImagePath">The path of the source image</param>
    ''' <param name="TargetImagePath">The path of the target thumbnail image</param>
    ''' <remarks></remarks>
    Public Shared Sub GenerateThumbnail(ByVal SourceImagePath As String, ByVal TargetImagePath As String)

        Dim newHeight As Short
        Dim newWidth As Short

        Using sourceImage As Image = Image.FromFile(SourceImagePath)

            newHeight = CShort(sourceImage.Height * 0.25)
            newWidth = CShort(sourceImage.Width * 0.25)

            Dim cb As New Image.GetThumbnailImageAbort(AddressOf ThumbnailCallback)
            Using targetImage As Image = sourceImage.GetThumbnailImage(newWidth, newHeight, cb, IntPtr.Zero)
                targetImage.Save(TargetImagePath, Imaging.ImageFormat.Gif)
            End Using
        End Using

    End Sub

    ' this isn't used but is required for compatibility
    Public Shared Function ThumbnailCallback() As Boolean
        Return False
    End Function

End Class
