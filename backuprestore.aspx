<%@ Page Language="VB" MasterPageFile="~/site.master" AutoEventWireup="false" CodeFile="backuprestore.aspx.vb" Inherits="backuprestore" title="Backup y Restore" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" Runat="Server">
<script runat=server>
    Public ReadOnly Property DBNombre() As String
        Get
            ' first is the name of a TextBox control.
            Return lblnombredb.Text
        End Get
    End Property

    Public ReadOnly Property DBData() As String
        Get
            Return txtdata.Text
        End Get
    End Property

    Public ReadOnly Property DBLog() As String
        Get
            Return txtlog.Text
        End Get
    End Property
    
    Public ReadOnly Property RutaBackup() As String
        Get
            Return txtrutabackup.Text
        End Get
    End Property
    
   
    
    
</script>



    <table style="width: 488px; height: 176px">
        <tr>
            <td style="width: 99px">
                Base</td>
            <td style="width: 298px">
                <asp:Label ID="lblnombredb" runat="server" Text="Label"></asp:Label>
                &nbsp;
                <asp:Label ID="Label1" runat="server" Text="Ultimo"></asp:Label>
                <asp:Label ID="lblfechabackup" runat="server" Text="Label"></asp:Label></td>
            <td>
            </td>
        </tr>
        <tr>
            <td style="width: 99px">
                Dir. backup</td>
            <td style="width: 298px">
                <asp:TextBox ID="txtrutabackup" runat="server" Width="288px"></asp:TextBox></td>
            <td>
            </td>
        </tr>
        <tr>
            <td style="width: 99px; height: 28px">
                Archivo DATA</td>
            <td style="width: 298px; height: 28px">
                <asp:TextBox ID="txtdata" runat="server" Width="288px"></asp:TextBox></td>
            <td style="height: 28px">
            </td>
        </tr>
        <tr>
            <td>
                Archivo LOG</td>
            <td style="width: 298px">
                <asp:TextBox ID="txtlog" runat="server" Width="288px"></asp:TextBox></td>
            <td>
            </td>
        </tr>
        <tr>
            <td style="width: 99px; height: 6px">
            </td>
            <td style="width: 298px; height: 6px">
            </td>
            <td style="height: 6px">
            </td>
        </tr>
        <tr>
            <td style="width: 99px; height: 6px">
            </td>
            <td align=center valign=middle style="width: 298px; height: 6px">
                <asp:Button ID="Button1" runat="server" Text="Backup" PostBackUrl="~/bkpresOK.aspx?backup=true" />
                <asp:Button ID="Button2" runat="server" Text="Restore" PostBackUrl="~/bkpresOK.aspx?restore=true" /></td>
            <td style="height: 6px">
            </td>
        </tr>
    </table>
</asp:Content>

