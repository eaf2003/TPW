<%@ Page Language="VB"  AutoEventWireup="false" CodeFile="loginOLD.aspx.vb" Inherits="_login" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
<script language="javascript" type="text/javascript">
<!--

function Text2_onclick() {

}

function Button1_onclick() {

}

function Submit1_onclick() {

}

// -->
</script>
</head>
<body>
    
    
    <div>
        <table style="width: 888px; height: 672px">
            <tr>
                <td>
                </td>
                <td>
                    </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                </td>
                <td> 
                <form id="frmlogin" runat="server" >
                <table align=center style="width: 408px">
                   
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
                                <input id="txtPassword" type="text" language="javascript" onclick="return Text2_onclick()" runat="server" /></td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                                <input type=submit name=ok id="Submit1" language="javascript" onclick="return Submit1_onclick()" runat="server" />
                                                      </tr>
                   </table></form>
                    <br />
                    </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
            </tr>
        </table>
    
    </div>
</body>

</html>
