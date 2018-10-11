<%@ Page Language="VB" MasterPageFile="~/site.master" AutoEventWireup="false" CodeFile="SalidaXML.aspx.vb" Inherits="SalidaXML" title="Salida XML" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentLogin" Runat="Server">
<a href="javascript:history.back()">Volver</a> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Salida.xml">Ver</asp:HyperLink>

</asp:Content>

