<%@ Page Language="VB" MasterPageFile="~/site.master" AutoEventWireup="false" CodeFile="AddOK.aspx.vb" Inherits="AddOK" title="Untitled Page" %>
<%@ PreviousPageType VirtualPath="~/addusuarios.aspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentLogin" Runat="Server">
<a href="login2.aspx">Principal</a>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">

<b>Nuevo Usuario creado</b> <br />

    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><br />
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label><br />
    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label><br />
    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label><br />
    <a href="javascript:history.back()">Volver</a> 
</asp:Content>

