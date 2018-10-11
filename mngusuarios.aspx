<%@ Page Language="VB" MasterPageFile="~/site.master" AutoEventWireup="false" CodeFile="mngusuarios.aspx.vb" Inherits="mngusuarios" title="Usuarios" %>
<script runat=server>

    Public ReadOnly Property Password() As String
        Get
            ' first is the name of a TextBox control.
            Return NewPassword.Text
        End Get
    End Property

    Public ReadOnly Property IDusuario() As String
        Get
            Return UserList.SelectedValue
        End Get
    End Property
    </script>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" Runat="Server">
<a href="showadmin.aspx">Volver</a><br />
    Usuario:<asp:DropDownList ID="UserList" runat="server"></asp:DropDownList>
    <br /><br />
    
    <%  Dim caca As String
        caca = UserList.SelectedValue
     %>
    
    <table border="0">
        <tr>
            <td align="right">
                Password anterior:
                <asp:TextBox ID="OldPassword" runat="server"></asp:TextBox><br />
                Password nuevo:<asp:TextBox ID="NewPassword" runat="server"></asp:TextBox><br />
                <asp:Button ID="ChangePassword" runat="server" Text="Cambiar Password" PostBackUrl="~/pswok.aspx?password=ok" /><br /><br />
            </td>
            <td>
                <asp:Button ID="DeleteUser" runat="server" Text="Borrar Usuario" /><br />
                <asp:Button ID="CreateUser" runat="server" Text="Crear  Usuario" PostBackUrl="addusuarios.aspx" /><br />
                
                <asp:Button ID="EditUser" runat="server" Text="Editar Usuario"/><br />
                <asp:Button ID="Button1" runat="server" Text="Administrar Roles" PostBackUrl="~/mngroles.aspx" />

            </td>
        </tr>
    </table>
    <asp:Label ID="Message" runat="server" />
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentLogin" Runat="Server">
<a href="showadmin.aspx">Admin Menu</a><br />
  <a href="login2.aspx">Principal (Logout)</a>
</asp:Content>