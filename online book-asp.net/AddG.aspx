<%@ Page Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="AddG.aspx.cs" Inherits="AddG" Title="افزودن قفسه" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style28
        {
            width: 79%;
        }
        .style29
        {
            width: 100px;
        }
        .style30
        {
            width: 188px;
            text-align: left;
        }
        .style31
        {
            text-align: right;
        }
        .style32
        {
            width: 188px;
            text-align: left;
        }
        .style33
        {
            width: 100px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="139px" Font-Names="Tahoma">
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" ForeColor="#CC0000" 
            Text="( كاربر گرامي )"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" 
            Text="شما اجازه دسترسي به اين قسمت را نداريد !"></asp:Label>
        <br />
        <br />
        <br />
       </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" Height="481px" 
        style="text-align: center" Font-Names="Tahoma">
            <br />
            &nbsp;&nbsp;&nbsp;
            <br />
            <table class="style28">
                <tr>
                    <td class="style33">
                        <asp:Label ID="Label3" runat="server" Text="نام قفسه جديد :"></asp:Label>
                    </td>
                    <td class="style32">
                        <asp:TextBox ID="TextBox1" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                            ForeColor="#530029" Height="22px" style="text-align: right; margin-left: 0px" 
                            ValidationGroup="VG" Width="175px"></asp:TextBox>
                    </td>
                    <td class="style31">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox1" ErrorMessage="نام قفسه جديد را وارد كنيد !" 
                            Font-Size="8pt" ValidationGroup="VG"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style29">
                        &nbsp;</td>
                    <td class="style30">
                        <asp:Button ID="Button1" runat="server" Font-Names="Tahoma" Font-Size="9pt" 
                            Height="25px" onclick="Button1_Click" 
                            style="text-align: center; margin-right: 0px" Text="افزودن به ليست" 
                            ValidationGroup="VG" Width="181px" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <br />
            <asp:Label ID="LMsg" runat="server" ForeColor="#CC3300"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp; =============================================================<br />
            <br />
            ليست قفسه هاي موجود<br />
            <br />
            <asp:ListBox ID="ListBox1" runat="server" Height="266px" 
                style="text-align: right; font-family: Tahoma; color: #000099" 
                Width="237px">
            </asp:ListBox>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:Panel>
    
    </asp:Content>

