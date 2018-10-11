<%@ Page Language="VB" MasterPageFile="~/site.master" AutoEventWireup="false" CodeFile="addusuarios.aspx.vb" Inherits="addusuarios" title="Untitled Page" %>
<script runat=server>

    Public ReadOnly Property Nombre() As String
        Get
            ' first is the name of a TextBox control.
            Return txtnombre.Text
        End Get
    End Property

    Public ReadOnly Property Email() As String
        Get
            Return txtemail.Text
        End Get
    End Property

    Public ReadOnly Property Telefono() As String
        Get
            Return txttelefono.Text
        End Get
    End Property
    
    Public ReadOnly Property IDusuario() As String
        Get
            Return txtidusuario.Text
        End Get
    End Property
    
    Public ReadOnly Property Password() As String
        Get
            Return txtpassword.Text
        End Get
    End Property
    
    Public ReadOnly Property Confirma() As String
        Get
            Return txtconfirma.Text
        End Get
    End Property
 
</script>

<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
    <table style="width: 296px">
        <tr>
            <td>
                ID Usuario</td>
            <td>
                <asp:TextBox ID="txtidusuario" runat="server"></asp:TextBox></td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
                Nombre</td>
            <td>
                <asp:TextBox ID="txtnombre" runat="server"></asp:TextBox></td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
                Telefono</td>
            <td>
                <asp:TextBox ID="txttelefono" runat="server"></asp:TextBox></td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
                E-mail</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox></td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
                Password</td>
            <td>
                <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox></td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
                Confirma</td>
            <td>
                <asp:TextBox ID="txtconfirma" runat="server"></asp:TextBox></td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                &nbsp;</td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Aceptar" PostBackUrl="~/AddOK.aspx?add=ok" />
                <asp:Button ID="Button2" runat="server" Text="Cancelar"/></td>
                
            <td>
            </td>
        </tr>
    </table>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentLogin" Runat="Server">
<a href="javascript:history.back()">Volver</a> 
</asp:Content>