<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="StudentInfo.aspx.cs" Inherits="courseUI1.StudentInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <body>
        <h1 style="background-color:darkviolet;"> STUDENT DETAILS</h1>
   
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" DataKeyNames="stid">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="stid" HeaderText="stid" SortExpression="stid" />
                <asp:BoundField DataField="stfname" HeaderText="stfname" SortExpression="stfname" />
                <asp:BoundField DataField="stlname" HeaderText="stlname" SortExpression="stlname" />
                <asp:BoundField DataField="stfathername" HeaderText="stfathername" SortExpression="stfathername" />
                <asp:BoundField DataField="stfatherphone" HeaderText="stfatherphone" SortExpression="stfatherphone" />
                <asp:BoundField DataField="stemail" HeaderText="stemail" SortExpression="stemail" />
                <asp:BoundField DataField="stphone" HeaderText="stphone" SortExpression="stphone" />
                <asp:BoundField DataField="coursejoin" HeaderText="coursejoin" SortExpression="coursejoin" />
                <asp:BoundField DataField="coursefees" HeaderText="coursefees" SortExpression="coursefees" />
                <asp:BoundField DataField="fristinstallment" HeaderText="fristinstallment" SortExpression="fristinstallment" />
                <asp:BoundField DataField="feesdues" HeaderText="feesdues" SortExpression="feesdues" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Deletestudent" SelectMethod="Getstudents" TypeName="course.businesslayer.studentservice" UpdateMethod="updatestudent">
            <DeleteParameters>
                <asp:Parameter Name="stid" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="stid" Type="Int32" />
                <asp:Parameter Name="stfname" Type="String" />
                <asp:Parameter Name="stlname" Type="String" />
                <asp:Parameter Name="stfathername" Type="String" />
                <asp:Parameter Name="stfatherphone" Type="String" />
                <asp:Parameter Name="stemail" Type="String" />
                <asp:Parameter Name="stphone" Type="String" />
                <asp:Parameter Name="coursejoin" Type="String" />
                <asp:Parameter Name="coursefees" Type="Int32" />
                <asp:Parameter Name="fristinstallment" Type="Int32" />
                <asp:Parameter Name="feesdues" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        </body>
    <asp:LinkButton ID="LinkBACK2" runat="server" ForeColor="#66FF33" OnClick="LinkBACK2_Click">BACK<<<</asp:LinkButton>
</asp:Content>
