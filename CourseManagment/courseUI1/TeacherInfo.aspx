<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TeacherInfo.aspx.cs" Inherits="courseUI1.CourseInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <body>
        <h1 style="background-color:darkviolet;">TEACHER DETAILS</h1>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" DataKeyNames="tid" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="tid" HeaderText="tid" SortExpression="tid" />
            <asp:BoundField DataField="tname" HeaderText="tname" SortExpression="tname" />
            <asp:BoundField DataField="temail" HeaderText="temail" SortExpression="temail" />
            <asp:BoundField DataField="tphone" HeaderText="tphone" SortExpression="tphone" />
            <asp:BoundField DataField="tcourse" HeaderText="tcourse" SortExpression="tcourse" />
            <asp:BoundField DataField="tqualification" HeaderText="tqualification" SortExpression="tqualification" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server"  DeleteMethod="Deleteteacher" SelectMethod="Getteachers" TypeName="course.businesslayer.teacherservice" UpdateMethod="updateteacher">
        <DeleteParameters>
            <asp:Parameter Name="tid" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="tid" Type="Int32" />
            <asp:Parameter Name="tname" Type="String" />
            <asp:Parameter Name="temail" Type="String" />
            <asp:Parameter Name="tphone" Type="String" />
            <asp:Parameter Name="tcourse" Type="String" />
            <asp:Parameter Name="tqualification" Type="String" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <br />
        </body>
    <asp:LinkButton ID="Lnkback3" runat="server" ForeColor="#66FF33" OnClick="Lnkback3_Click">BACK<<<</asp:LinkButton>
    
</asp:Content>
