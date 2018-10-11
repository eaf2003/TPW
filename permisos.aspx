<%@ Page Language="VB" MasterPageFile="~/site.master" AutoEventWireup="false" CodeFile="permisos.aspx.vb" Inherits="permisos" title="Untitled Page" %>
<%@ PreviousPageType VirtualPath="~/mngroles.aspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentLogin" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">


    
        <asp:formview id="FormView1" runat="server" datakeynames="id_rol">
        <ItemTemplate>

       <%--     <asp:Label Visible="false" Text='<%# Eval("PictureURL") %>' runat="server" ID="PictureURLLabel" />
            <asp:Image ImageUrl='<%# Eval("PictureURL", "~/Productos/{0}") %>' runat="server" id="PictureURL" />
            <asp:Label Text='<%# Eval("Name") %>' runat="server" id="NameLabel" style="font-size:larger; font-weight:bold"/><br />
            <asp:Label Text='<%# Eval("Description") %>' runat="server" id="DescriptionLabel" /><br />--%>
<table><td align=center>
permiso 1:            <asp:CheckBox Checked ='<%# Eval("abmtareas", "{0:c}") %>' runat="server" ID="chk1" /><br />
permiso 2:            <asp:CheckBox Checked ='<%# Eval("abmusuarios", "{0:c}") %>' runat="server" ID="CheckBox1" /><br />
permiso 3:            <asp:CheckBox Checked ='<%# Eval("abmtareas", "{0:c}") %>' runat="server" ID="CheckBox2" /><br />
permiso 4:            <asp:CheckBox Checked ='<%# Eval("abmusuarios", "{0:c}") %>' runat="server" ID="CheckBox3" />
</td></table>
<%--
permiso 1:            <asp:Label Text='<%# Eval("abmtareas", "{0:c}") %>' runat="server" id="Label2" />--%>
       </ItemTemplate>
        <FooterTemplate>
            <a href="mngroles.aspx">Volver</a>
        </FooterTemplate>
    </asp:formview>
    
</asp:Content>

