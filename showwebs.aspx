<%@ Page Language="VB" MasterPageFile="~/site.master" AutoEventWireup="false" CodeFile="showwebs.aspx.vb" Inherits="showwebs" title="WebService" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentLogin" Runat="Server">
<a href=stock.asmx target=_blank>Detalles del WebService</a><br />
<a href="javascript:history.back()">Volver</a>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
   
    <b>Cantidad de productos :</b><asp:GridView ID="GridView1" runat="server" ShowHeader="False">
    </asp:GridView><br />
    <b>Valor Total $ :</b><asp:GridView ID="GridView2" runat="server" ShowHeader="False">
    </asp:GridView>
</asp:Content>

