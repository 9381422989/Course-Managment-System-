<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="course.aspx.cs" Inherits="courseUI1.course" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
    <p>
    <br />
</p>
    <center>
    <h1 style="background-color:darkviolet;"> COURSE REGISTRATION</h1>
    </center>  
    <div style="background-color:bisque;">
<table  border="1" align="center" style="width: 50%">
    <tr>
        <td>COURSE ID:<asp:TextBox ID="TXTCID" runat="server" BackColor="#CCCCCC" ForeColor="Black"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TXTCID" ErrorMessage="ENTER COURSE ID" ValidationGroup="CR"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="height: 25px">COURSE NAME:<asp:TextBox ID="TXTCNAME" runat="server" BackColor="White" ForeColor="Black"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TXTCNAME" ErrorMessage="ENTER COURSE NAME" ValidationGroup="CR"></asp:RequiredFieldValidator>
        </td>
        <td style="height: 25px"></td>
    </tr>
    <tr>
        <td>COURSE  DURATION:<asp:TextBox ID="TXTCDURATION" runat="server" BackColor="#999999" ForeColor="Black"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>COURSE&nbsp; FEES:<asp:TextBox ID="TXTCFEES" runat="server" BackColor="White" ForeColor="Black"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SUBMIT" BackColor="#CCFFCC" BorderColor="Blue" ForeColor="Blue" ValidationGroup="CR" />
            <asp:Label ID="Label1" runat="server" ForeColor="#009933"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
        </div>
      
</asp:Content>

