<%@ Page Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" Title="درباره سايت پروژه دات کام" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style50
    {
        text-align: center;
        background-color: #CCCCFF;
    }
    .style44
    {
        width: 106px;
        text-align: left;
        background-color: #FFFFCC;
    }
    .style43
    {
        background-color: #FFFFCC;
    }
    .style46
    {
        width: 106px;
        text-align: left;
        background-color: #CCFFCC;
    }
    .style45
    {
        background-color: #CCFFCC;
    }
    .style48
    {
        width: 106px;
        text-align: left;
        background-color: #CCFFFF;
    }
    .style47
    {
        background-color: #CCFFFF;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style40" 
    style="border: 2px dotted #996633; width: 100%; color: #663300;">
    <tr>
        <td class="style50" colspan="2">
            <asp:Image ID="Image4" runat="server" ImageUrl="~/Images/jame.jpg" />
        </td>
    </tr>
    <tr>
        <td class="style44">
            عنوان درس :</td>
        <td class="style43">
            <asp:Label ID="Label7" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                ForeColor="#333300" Text="طراحي صفحات وب"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style46">
            موضوع پروژه :</td>
        <td class="style45">
            <asp:Label ID="Label8" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                ForeColor="#333300" 
                Text="طراحي كتابخانه آنلاين به زبان برنامه نويسي C# در Asp.Net"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style48">
            استاد راهنما :</td>
        <td class="style47">
            <asp:Label ID="Label9" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                ForeColor="#333300" Text="پروژه دات کام"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style44">
            ارائه دهنده :</td>
        <td class="style43">
            <asp:Label ID="Label10" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                ForeColor="#333300" Text=" عليرضا طالبي "></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style46">
            نام دانشگاه :</td>
        <td class="style45">
            <asp:Label ID="Label11" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                ForeColor="#333300" Text="www.prozhe.com"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style48">
            تاريخ :</td>
        <td class="style47">
            <asp:Label ID="Label12" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                ForeColor="#333300" Text="بهمن 1390"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style50" colspan="2">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

