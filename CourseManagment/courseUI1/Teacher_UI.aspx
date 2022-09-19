<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Teacher_UI.aspx.cs" Inherits="courseUI1.Teacher_UI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h1 style=" background-color:darkviolet;">TEACHER REGISTRATION</h1>
    <div style="background-color:bisque";>

    <table  border="1" align="center" style="width: 50%">
        <tr>
            <td>TEACHER ID:<asp:TextBox ID="TXTID" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TXTID" ErrorMessage="ENTER ID" ValidationGroup="TR"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>TEACHER NAME:<asp:TextBox ID="TXTNAME" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TXTNAME" ErrorMessage="ENTER NAME" ValidationGroup="TR"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>TEACHER EMAIL:<asp:TextBox ID="TXTEMAIL" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TXTEMAIL" ErrorMessage="ENTER VALID EMAIL" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="TR"></asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>TEACHER PHONE:<asp:TextBox ID="TXTPHONE" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TXTPHONE" ErrorMessage="NUM STARTS WITH[6789]" ValidationExpression="[6-9][0-9]{9}" ValidationGroup="TR"></asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>TEACHER COURSE:<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="cname" DataValueField="cname">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:project2ConnectionString4 %>" SelectCommand="SELECT [cname] FROM [coursetable]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>TEACHER QUALIFICATION:<asp:TextBox ID="TXTQUALIFICATION" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SUBMIT" ValidationGroup="TR" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" ForeColor="#009933"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </div>

</asp:Content>
