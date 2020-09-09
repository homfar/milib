<%@ Page Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" Title="ورود اعضاء" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style28
    {
        height: 10px;
        width: 130px;
    }
    .style29
    {
        height: 84px;
        width: 130px;
    }
    .style45
    {
    }
    .style46
    {
        height: 30px;
    }
    .style47
    {
        height: 39px;
    }
    .style48
    {
        text-align: left;
    }
    .style49
    {
        text-align: right;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="367px" Width="100%">
    <br />
    <table class="style40" 
        style="border: 1px dotted #666633; width: 99%; height: 170px">
        <tr>
            <td class="style46" colspan="3">
                <asp:Label ID="LMsg" runat="server" ForeColor="#CC0000"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style48">
                نام كاربري :</td>
            <td class="style49">
                <asp:TextBox ID="TextBox1" runat="server" Font-Size="Small" 
                    style="text-align: center; margin-left: 0px; margin-right: 0px" 
                    ValidationGroup="VG" Width="150px" Font-Names="Tahoma"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="نام كاربري خود را وارد كنيد !" 
                    ValidationGroup="VG"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style48">
                كلمه عبور :</td>
            <td class="style49">
                <asp:TextBox ID="TextBox2" runat="server" Font-Size="Small" 
                    style="text-align: center; margin-left: 0px; margin-right: 0px" 
                    TextMode="Password" ValidationGroup="VG" Width="150px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="كلمه عبور خود را وارد كنيد !" 
                    ValidationGroup="VG"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style45">
                &nbsp;</td>
            <td class="style49">
                <asp:Button ID="Button1" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                    onclick="Button1_Click1" Text="ورود كاربر عضو" ValidationGroup="VG" 
                    Width="158px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style35">
            </td>
            <td class="style35">
            </td>
            <td class="style35">
            </td>
        </tr>
        <tr>
            <td class="style47" colspan="3">
                &nbsp;براي استفاده از امكانات سايت ابتدا بايد ثبت نام كنيد .&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Signup.aspx">ثبت 
                نام عضو جديد</asp:HyperLink>
            </td>
        </tr>
    </table>
</asp:Panel>
</asp:Content>

