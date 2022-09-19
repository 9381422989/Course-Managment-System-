<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="courseUI1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 50%;
        }
    </style>
</head>
<body  style="background-image:url('Images/image9.jpeg')">
    <form id="form1" runat="server">
        <div>
            <CENTER>
            <h1 style="background-color:mediumspringgreen;">COURSE MANAGMENT SYSTEM</h1>
            </CENTER>
            <fieldset>
                <legend style=" background-color :gold;">
                    LOGIN PAGE
                </legend>
                 <div style="background-color:moccasin;">
                <table  align="center" class="auto-style1">
                    <tr>
                        <td>LOGIN:<asp:TextBox ID="TXTADMIN" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>PASSWORD:<asp:TextBox ID="TXTPWD" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="BUTLOGIN" runat="server" OnClick="BUTLOGIN_Click" Text="LOGIN" BackColor="White" ForeColor="Blue" />
                            <asp:Label ID="LABMSG" runat="server"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                     </div>
            </fieldset>
           
        </div>
        <marquee><h3 style="color:aqua;"> ***PLEASE ENTER CORRECT DETAILS ***</h3></marquee>
    </form>
</body>
</html>
