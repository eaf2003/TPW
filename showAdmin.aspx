<%@ Page Language="VB" MasterPageFile="~/site.master" AutoEventWireup="false" CodeFile="showAdmin.aspx.vb" Inherits="admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentLogin" Runat="Server">
    <div>
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/showbitacora.aspx">Ver Bitacora</asp:LinkButton><br />
        <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/mngusuarios.aspx">Administrar Usuarios</asp:LinkButton><br />
        <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/backuprestore.aspx">Backup y restore</asp:LinkButton><br />
        <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/salidaxml.aspx">Usuarios(Salida XML)</asp:LinkButton><br />
        <a href="login2.aspx">Principal (Logout)</a>
        </div>
    </asp:Content>