<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="courseUI1.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h1 style="background-color:darkviolet;"> ADMIN PAGE</h1>
    <marquee style="color:red;">***ADMIN PAGE***</marquee>
    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">TEACHERINFO</asp:LinkButton>&nbsp&nbsp
    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">STUDENTINFO</asp:LinkButton>

&nbsp;
    <filedset>

    <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">COURSEINFO</asp:LinkButton>
  
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
        <fieldset>
        <table bordercolor="blue">
            <tr>
  <td>  <asp:ImageButton img src="Images/image1.jpeg"  ID="ImageButton1" runat="server" Height="125px" Width="268px" OnClick="ImageButton1_Click" /></td>&nbsp;&nbsp;&nbsp;
      <td> &nbsp;<asp:ImageButton img src="Images/image2.jpeg" Alignimage="middle" ID="ImageButton2" runat="server" Height="134px" Width="432px" OnClick="ImageButton2_Click"  /></td>&nbsp;&nbsp;&nbsp;
       <td> <asp:ImageButton img src="Images/image3.jpeg" ID="ImageButton3" runat="server" Height="190px"  OnClick="ImageButton3_Click" /></td>&nbsp;&nbsp;&nbsp;
           </tr>
     
       </table>
         </fieldset>
        <marquee style="color:orangered;"><h3> **** PLEASE CLICK ON IMAGES FOR MORE DETAILS ****</h3></marquee>
    </asp:Content>
