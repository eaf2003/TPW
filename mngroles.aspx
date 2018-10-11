<%@ Page Language="VB" MasterPageFile="~/site.master" AutoEventWireup="false" CodeFile="mngroles.aspx.vb" Inherits="mngroles" title="Administrar Roles" %>
<script runat=server>

    Public ReadOnly Property BorraRol() As String
        Get
            ' first is the name of a TextBox control.
            Return RolList1.SelectedValue.ToString
        End Get
    End Property
  
    Public ReadOnly Property NuevoRol() As String
        Get
            ' first is the name of a TextBox control.
            Return txtnuevorol.Text
        End Get
    End Property
    
  </script>
    

<asp:Content ID="Content1" ContentPlaceHolderID="ContentLogin" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
    <table style="width: 248px">
        <tr>
            <td style="width: 237px">
                Roles</td>
            <td style="width: 68px">
                <asp:DropDownList ID="RolList1" runat="server">
                </asp:DropDownList></td>
            <td style="width: 251px">
                <asp:Button ID="Button1" runat="server" Text="Eliminar" PostBackUrl="~/rolOK.aspx?eliminar=ok" /></td>
        </tr>
        <tr>
            <td style="width: 237px">
            </td>
            <td style="width: 68px">
            </td>
            <td style="width: 251px">
            </td>
        </tr>
        <tr>
            <td style="width: 237px">
                Agregar Nuevo</td>
            <td style="width: 68px">
                <asp:TextBox ID="txtnuevorol" runat="server"></asp:TextBox></td>
            <td style="width: 251px">
                <asp:Button ID="Button2" runat="server" Text="Agregar" PostBackUrl="~/rolOK.aspx?agregar=ok" /></td>
        </tr>
    </table>
    <asp:Button ID="Button3" runat="server" Text="Permisos" PostBackUrl="~/permisos.aspx" />
</asp:Content>

