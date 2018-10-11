<%@ Page Language="VB" MasterPageFile="~/site.master" AutoEventWireup="false" CodeFile="showuser.aspx.vb" Inherits="showuser" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentLogin" Runat="Server">
 <a href="carrito.aspx">Carrito</a><br />
 <a href="login2.aspx">Principal</a>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Bienvenido "></asp:Label>
    <asp:Label ID="lblusuario" runat="server" Text="Label"></asp:Label><br /><br />
    
     <asp:sqldatasource id="SqlDataSource1" runat="server"
        selectcommand="SELECT ProductID, Name, Description, Price, PictureURL FROM Products ORDER BY Name"
     >
    </asp:sqldatasource>
    <asp:datalist id="DataList1" runat="server" datakeyfield="ProductID" datasourceid="SqlDataSource1"
        repeatcolumns="4">
        <ItemTemplate>
            <asp:ImageButton id=ImageButton1 runat="server" ImageUrl='<%# Eval("PictureURL", "Productos\thumb_{0}") %>' AlternateText='<%# Eval("Description") %>'
                PostBackUrl='<%# Eval("ProductID", "ComprarProd.aspx?ProductID={0}") %>'></asp:ImageButton>
            <asp:Label Text='<%# Eval("Name") %>' runat="server" id="NameLabel" style="font-weight:bold"/><br />
            <asp:Label Text='<%# Eval("Price", "{0:c}") %>' runat="server" id="PriceLabel"/><br />
        </ItemTemplate>
    </asp:datalist>
</asp:Content>

