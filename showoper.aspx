<%@ Page Language="VB" MasterPageFile="~/site.master" AutoEventWireup="false" CodeFile="showoper.aspx.vb" Inherits="showoper" title="Menu Operador" %>
<%@ Register Src="controles/PictureUpload.ascx" TagName="PictureUpload" TagPrefix="wu" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentLogin" Runat="Server">
<a href="showwebs.aspx">Stock (WebService)</a><br />
<a href="showoper.aspx">Actualizar Productos</a><br />
<a href="antitamper.aspx">DVI Antitamper</a><br />
  <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/salidaxml.aspx">Usuarios(Salida XML)</asp:LinkButton><br />
  <a href="login2.aspx">Principal (Logout)</a>
  
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" Runat="Server">
    <asp:Label ID="Label3" runat="server" Text="Actualizacion de Productos"></asp:Label>
 
 
  <asp:linkbutton id="btnNewItem" runat="server" commandname="New" onclick="btnNewItem_Click">Agregar Nuevo</asp:linkbutton>
    <br /><br />
    
    <div style="float:left; margin-right: 10px;">
    <asp:sqldatasource id="SqlDataSource1" runat="server" deletecommand="DELETE FROM [Products] WHERE [ProductID] = @ProductID"
        insertcommand="INSERT INTO [Products] ([Name], [Description], [Price], [PictureURL]) VALUES (@Name, @Description, @Price, @PictureURL)"
        selectcommand="SELECT [ProductID], [Name], [Description], [Price], [PictureURL] FROM [Products]"
        updatecommand="UPDATE [Products] SET [Name] = @Name, [Description] = @Description, [Price] = @Price, [PictureURL] = @PictureURL WHERE [ProductID] = @ProductID"
       >
        <DeleteParameters>
            <asp:Parameter Type="Int32" Name="ProductID"></asp:Parameter>
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Type="String" Name="Name"></asp:Parameter>
            <asp:Parameter Type="String" Name="Description"></asp:Parameter>
            <asp:Parameter Type="Decimal" Name="Price"></asp:Parameter>
            <asp:Parameter Type="String" Name="PictureURL"></asp:Parameter>
            <asp:Parameter Type="Int32" Name="ProductID"></asp:Parameter>
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Type="String" Name="Name"></asp:Parameter>
            <asp:Parameter Type="String" Name="Description"></asp:Parameter>
            <asp:Parameter Type="Decimal" Name="Price"></asp:Parameter>
            <asp:Parameter Type="String" Name="PictureURL"></asp:Parameter>
        </InsertParameters>
    </asp:sqldatasource>
    <asp:datalist id="DataList1" runat="server" datakeyfield="ProductID" datasourceid="SqlDataSource1"
        repeatcolumns="4"  CellPadding="20">
        <ItemTemplate>
    <asp:Image ImageUrl='<%# Eval("PictureURL", "~/Productos/thumb_{0}") %>' runat="server" id="PictureURLImage" style="float:left; "/>
           <asp:Label Text='<%# Eval("Name") %>' runat="server" id="NameLabel" style="font-weight:bold"/><br />
            <asp:Label Text='<%# Eval("Price", "{0:c}") %>' runat="server" id="PriceLabel"/><br />
            <asp:LinkButton id=LinkButton1 runat="server" CommandName="Select">Ver...</asp:LinkButton>
        </ItemTemplate>
        <SelectedItemStyle BorderColor="#ff9900" BorderStyle="dashed" BorderWidth="1px" />
        <ItemStyle VerticalAlign="top" HorizontalAlign="left" />
    </asp:datalist>
    
    <asp:sqldatasource id="SqlDataSource2" runat="server"
        selectcommand="SELECT [ProductID], [Name], [Description], [Price], [PictureURL] FROM [Products] WHERE ([ProductID] = @ProductID)"
        DeleteCommand="DELETE FROM [Products] WHERE [ProductID] = @ProductID"
        InsertCommand="INSERT INTO [Products] ([Name], [Description], [Price], [PictureURL]) VALUES (@Name, @Description, @Price, @PictureURL)"
        UpdateCommand="UPDATE [Products] SET [Name] = @Name, [Description] = @Description, [Price] = @Price, [PictureURL] = @PictureURL WHERE [ProductID] = @ProductID"
        
        OnInserted="SqlDataSource2_Inserted" OnUpdated="SqlDataSource2_Updated" OnDeleted="SqlDataSource2_Deleted">
            <DeleteParameters>
                <asp:Parameter Type="Int32" Name="ProductID"></asp:Parameter>
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Type="String" Name="Name"></asp:Parameter>
                <asp:Parameter Type="String" Name="Description"></asp:Parameter>
                <asp:Parameter Type="Decimal" Name="Price"></asp:Parameter>
                <asp:Parameter Type="String" Name="PictureURL"></asp:Parameter>
                <asp:Parameter Type="Int32" Name="ProductID"></asp:Parameter>
            </UpdateParameters>
            <SelectParameters>
                <asp:ControlParameter Name="ProductID" Type="Int32" ControlID="DataList1" PropertyName="SelectedValue"></asp:ControlParameter>
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Type="String" Name="Name"></asp:Parameter>
                <asp:Parameter Type="String" Name="Description"></asp:Parameter>
                <asp:Parameter Type="Decimal" Name="Price"></asp:Parameter>
                <asp:Parameter Type="String" Name="PictureURL"></asp:Parameter>
            </InsertParameters>
    </asp:sqldatasource>
    <asp:detailsview id="DetailsView1" runat="server" datasourceid="SqlDataSource2" BorderWidth="0px"
        autogeneraterows="False" datakeynames="ProductID"
        AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" AutoGenerateInsertButton="True">
        <FooterTemplate>
            <asp:ValidationSummary id=ValidationSummary1 runat="server"></asp:ValidationSummary> 
        </FooterTemplate>
        <Fields>
            <asp:BoundField HeaderText="ID:" DataField="ProductID" SortExpression="ProductID" visible="False"></asp:BoundField>
            <asp:BoundField HeaderText="Nombre:" DataField="Name" SortExpression="Name"></asp:BoundField>
            <asp:BoundField HeaderText="Precio:" DataField="Price" SortExpression="Price" DataFormatString="{0:c}"></asp:BoundField>
            <asp:TemplateField SortExpression="Description" HeaderText="Descripcion:"><EditItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("Description") %>' id="TextBox2" Columns="50" TextMode="MultiLine" Rows="3"></asp:TextBox>
                    <asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server"
                        errormessage="Debe ingresar una descripcion" controltovalidate="TextBox2">*</asp:requiredfieldvalidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Bind("Description") %>' id="Label2"></asp:Label>
                </ItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("Description") %>' id="TextBox2" Columns="50" TextMode="MultiLine" Rows="3"></asp:TextBox>
                    <asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server"
                        errormessage="Debe ingresar una descripcion" controltovalidate="TextBox2">*</asp:requiredfieldvalidator>
                </InsertItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField SortExpression="PictureURL" HeaderText="Imagen:"><EditItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("PictureURL") %>' id="txtPictureURL"></asp:TextBox><br />
    <wu:PictureUpload ID="PictureUpload1" runat="server" UploadImageType=Product OnFileUploaded="FileUploaded" />                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Bind("PictureURL") %>' id="Label1"></asp:Label>
                </ItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("PictureURL") %>' id="txtPictureURL"></asp:TextBox><br />
                <wu:PictureUpload ID="PictureUpload1" runat="server" UploadImageType=Product OnFileUploaded="FileUploaded" />
                </InsertItemTemplate>
            </asp:TemplateField>
        </Fields>
    </asp:detailsview>
    </div>
</asp:Content>

