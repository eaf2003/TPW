<%@ Page Language="VB" MasterPageFile="~/site.master" AutoEventWireup="false" CodeFile="ComprarProd.aspx.vb" Inherits="ComprarProd" title="Comprar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentLogin" Runat="Server">
<a href="carrito.aspx" target=_blank>Carrito</a><br />
  <a href="login2.aspx">Principal</a>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
   <asp:sqldatasource id="SqlDataSource1" runat="server"
        selectcommand="SELECT * FROM [Products] WHERE ([ProductID] = @ProductID)"
    >
        <SelectParameters>
            <asp:QueryStringParameter Name="ProductID" QueryStringField="ProductID" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:sqldatasource>
    
    <asp:formview id="FormView1" runat="server" datakeynames="ProductID" datasourceid="SqlDataSource1">
        <ItemTemplate>
<asp:ImageButton id="ImageButton1" runat="server" ImageUrl="~/Images/Cart.jpg" OnClick="btnAddToCart_Click"></asp:ImageButton>         
            <asp:Label Visible="false" Text='<%# Eval("PictureURL") %>' runat="server" ID="PictureURLLabel" />
            <asp:Image ImageUrl='<%# Eval("PictureURL", "~/Productos/{0}") %>' runat="server" id="PictureURL" />
            <asp:Label Text='<%# Eval("Name") %>' runat="server" id="NameLabel" style="font-size:larger; font-weight:bold"/><br />
            <asp:Label Text='<%# Eval("Description") %>' runat="server" id="DescriptionLabel" /><br />
            <asp:Label Text='<%# Eval("Price", "{0:c}") %>' runat="server" id="PriceLabel" />
       </ItemTemplate>
        <FooterTemplate>
            <a href="showuser.aspx">Volver</a>
        </FooterTemplate>
    </asp:formview>

</asp:Content>

