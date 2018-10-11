<%@ Page Language="VB" MasterPageFile="~/site.master" AutoEventWireup="false"   CodeFile="antitamper.aspx.vb" Inherits="antitamper" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentLogin" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" >
    </asp:GridView>
    <asp:Button ID="Button1" runat="server" Text="Actualizar registros" PostBackUrl="~/antitamperOK.aspx" />
</asp:Content>

