<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Student_UI.aspx.cs" Inherits="courseUI1.Student_UI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div style="background-color:bisque">
        <h1 style="background-color:darkviolet">STUDENT REGISTRATION</h1>

    <table border="1" align="center" style="width: 50%">
    <tr>
        <td>STUDENT ID :<asp:TextBox ID="TXTID" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TXTID" ErrorMessage="ENTER STUDENT ID" ValidationGroup="SR"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="height: 36px">STUDENT FRISTNAME :<asp:TextBox ID="TXTFNAME" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TXTFPHONE" ErrorMessage="ENTER FRISTNAME" ValidationGroup="SR"></asp:RequiredFieldValidator>
        </td>
        <td style="height: 36px"></td>
    </tr>
    <tr>
        <td>STUDENT LASTNAME :<asp:TextBox ID="TXTLNAME" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TXTLNAME" ErrorMessage="ENTER LASTNAME" ValidationGroup="SR"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>STUDENT FATHERNAME :<asp:TextBox ID="TXTFANAME" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TXTFANAME" ErrorMessage="ENTER FATHER NAME" ValidationGroup="SR"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>STUDENT FATHERPHONE :<asp:TextBox ID="TXTFPHONE" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TXTFPHONE" ErrorMessage="ENTER NUMBER START WITH[6789]" ValidationExpression="[6-9][0-9]{9}" ValidationGroup="SR"></asp:RegularExpressionValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>STUDENT EMAIL:<asp:TextBox ID="TXTSEMAIL" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TXTSEMAIL" ErrorMessage="ENTER VALID EMAIL" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="SR"></asp:RegularExpressionValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>STUDENT PHONE:<asp:TextBox ID="TXTPHONE" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TXTPHONE" ErrorMessage="ENTER NUMBER START WITH[6789]" ValidationExpression="[6-9][0-9]{9}" ValidationGroup="SR"></asp:RegularExpressionValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>COURSE JOIN:<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" DataSourceID="SqlDataSource1" DataTextField="cname" DataValueField="cname" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:project2ConnectionString2 %>" SelectCommand="SELECT [cname] FROM [coursetable]"></asp:SqlDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="height: 34px">COURSEFEES:<asp:Label ID="Labcoursefees" runat="server" ></asp:Label>
        </td>
        <td style="height: 34px"></td>
    </tr>
    <tr>
        <td>FRISTINSTALLMENT:<asp:TextBox ID="TXTFINS" runat="server" AutoPostBack="true" OnTextChanged="TXTFINS_TextChanged" ></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>FEESDUES:<asp:Label ID="LaBFEESDUES" runat="server" ></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="Button1" runat="server" Text="SUBMIT" OnClick="Button1_Click" BackColor="#333300" ForeColor="#66FFFF" ValidationGroup="SR" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" ForeColor="#009900" ></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    </table>
        </div>

</asp:Content>
