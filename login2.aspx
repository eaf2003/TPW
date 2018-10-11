<%@ Page Language="VB" MasterPageFile="~/site.master" AutoEventWireup="false" CodeFile="login2.aspx.vb" Inherits="pp" title="FASHION STYLE" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentLogin" Runat="Server">
<div>
            
                <table align=center style="width: 100px">
                   
                        <tr>
                            <td style="height: 21px">
                   Usuario:</td>
                            <td style="height: 21px">
                                <input id="txtUsuario" type="text" runat="server" /></td>
                        </tr>
                        <tr>
                            <td>
                    Password:&nbsp;
                            </td>
                            <td>
                                <input id="txtPassword" type=password language="javascript" onclick="return Text2_onclick()" runat="server" /></td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td align=center valign=middle>
                                <input type=submit name=ok id="Submit1" language="javascript" onclick="return Submit1_onclick()" runat="server" value=Login />
                                &nbsp; <a href="addusuarios.aspx">Registrarme</a><br />
                                                      </tr>
                   </table>    
    </div>
</asp:Content>

