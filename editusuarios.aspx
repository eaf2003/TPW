<%@ Page Language="VB" MasterPageFile="~/site.master" AutoEventWireup="false" CodeFile="editusuarios.aspx.vb" Inherits="editusuarios" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
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
            Return lblidusuario.Text
        End Get
    End Property
    
    Public ReadOnly Property Rol() As String
        Get
            Return rolList.SelectedValue
        End Get
    End Property
    
      Sub ButtonClicked(sender As Object, e As EventArgs) 
        Server.Transfer("editok.aspx")
      End Sub

 
</script>

    <asp:Label ID="Label1" runat="server" Text="Usuario: "></asp:Label>
    <asp:Label ID="lblidusuario" runat="server" Text="Label"></asp:Label><br />
    Nombre:<asp:TextBox ID="txtnombre" runat="server"></asp:TextBox><br />
    E-mail:<asp:TextBox ID="txtemail" runat="server"></asp:TextBox><br />
    Telefono:<asp:TextBox ID="txttelefono" runat="server"></asp:TextBox><br />
    Rol:
    <asp:DropDownList ID="rolList" runat="server">
    </asp:DropDownList><br />
    <br />
    <asp:Button ID="Button2" runat="server" Text="Cancelar" />
<asp:Button ID="Button3" runat="server" Text="Aceptar" PostBackUrl="~/editOK.aspx" />

</asp:Content>
