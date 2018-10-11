<%@ Page Language="VB" MasterPageFile="~/site.master" AutoEventWireup="false" codefile="showbitacora.aspx.vb" Inherits="showbitacora" title="Bitacora" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" Runat="server">

         <asp:sqldatasource id="SqlDataSource1" runat="server"
        selectcommand="Select * from logger order by fecha desc"
        connectionstring="asas">
    </asp:sqldatasource>
    
    <asp:datalist id="DataList1" runat="server" datakeyfield="id_evento" datasourceid="SqlDataSource1"
        repeatcolumns="1" AlternatingItemStyle-BackColor="ActiveBorder" Font-Bold="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
        <ItemTemplate>
<!--            <asp:ImageButton id=ImageButton1 runat="server" ImageUrl='<%# Eval("descripcion", "ProductImages\thumb_{0}") %>' AlternateText='<%# Eval("severidad") %>'
                PostBackUrl='<%# Eval("fecha", "ShopItem.aspx?ProductID={0}") %>'></asp:ImageButton> 
               -->
               
               <asp:Label Text='<%# Eval("id_evento") %>' runat="server" id="Label2" style="font-weight:bold"/>
                <asp:Label Text='<%# Eval("fecha") %>' runat="server" id="Label1" style="font-weight:bold"/>
            <asp:Label Text='<%# Eval("descripcion") %>' runat="server" id="NameLabel" style="font-weight:bold"/>
            <asp:Label Text='<%# Eval("id_usuario", "{0:c}") %>' runat="server" id="PriceLabel"/>
        </ItemTemplate>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <AlternatingItemStyle BackColor="#F7F7F7" />
        <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
    </asp:datalist>
</asp:Content>