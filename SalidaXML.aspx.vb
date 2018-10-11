Imports system.Xml
Partial Class SalidaXML
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim usr As New BLL.Usuario
        Dim objmyDataset As New Data.DataSet

        objmyDataset.Tables.Add(usr.TomarUsuarios)
        objmyDataset.EnforceConstraints = False

        Dim XMLDoc As New XmlDataDocument(objmyDataset)
        '        XMLDoc.CreateDocumentType("cretedoc1", "publiID", "sysID", "intsub")
        '--
        'Dim XMLdoc2 As New XmlDataDocument


        Dim proI1 As XmlProcessingInstruction
        Dim txtI1 As String
        txtI1 = "type=""text/xsl"" href=""template.xsl"""
        proI1 = XMLDoc.CreateProcessingInstruction("xml-stylesheet", txtI1)
        XMLDoc.PrependChild(proI1)

        Dim proI2 As XmlProcessingInstruction
        Dim txtI2 As String
        txtI2 = "version=""1.0"" encoding=""ISO-8859-1"""
        proI2 = XMLDoc.CreateProcessingInstruction("xml", txtI2)
        XMLDoc.PrependChild(proI2)

        XMLDoc.Save(MapPath("Salida.xml"))
        '--
        'XmlDataDocument doc = new XmlDataDocument(ds);
        'Xml1.Document = doc;
        'doc.Save(MapPath("Customers.xml"));//This is where we are saving the data in an XML file Customers.xml

        'The above code will display the contents not in a tabular format, since no style sheets are attached. If you want the data to be displayed in some particular format, make your XSL file as myfile.xsl and add the following three lines of code to the above written code:

        'XslTransform t = new XslTransform();
        't.Load(MapPath(("myfile.xsl"));
        'Xml1.Transform = t;






        '        objMyDataSet.Tables(0).WriteXml("MyData.xml")
        '        objMyDataSet.Tables(0).WriteXmlSchema("MySchema.xsd")

        Label1.Text = "Salida XML generada"



    End Sub

End Class
