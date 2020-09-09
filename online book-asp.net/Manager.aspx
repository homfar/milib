<%@ Page Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="Manager.aspx.cs" Inherits="Manager" Title="مديريت اعضاء" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style40
        {
            width: 100%;
        }
        .style41
        {
            width: 82px;
            text-align: left;
        }
        .style42
        {
            text-align: right;
        height: 15px;
    }
        .style43
        {
            text-align: right;
            width: 160px;
        height: 15px;
    }
        .style45
        {
            width: 173px;
            text-align: left;
        height: 15px;
    }
        .style46
        {
            width: 82px;
            text-align: left;
            height: 14px;
            background-color: #FFFFCC;
        }
        .style47
        {
            text-align: right;
            width: 160px;
            height: 14px;
            background-color: #CCFFFF;
        }
        .style48
        {
            width: 173px;
            text-align: left;
            height: 14px;
            background-color: #FFFFCC;
        }
        .style49
        {
            text-align: right;
            height: 14px;
            background-color: #CCFFFF;
        }
        .style50
        {
            text-align: right;
            background-color: #CCFFFF;
        }
        .style51
        {
        width: 173px;
        text-align: left;
        background-color: #FFFFCC;
    }
        .style52
        {
        text-align: right;
        width: 160px;
        background-color: #CCFFFF;
    }
        .style53
        {
            width: 82px;
            text-align: left;
            background-color: #FFFFCC;
        }
    .style54
    {
        width: 82px;
        text-align: left;
        height: 11px;
    }
    .style55
    {
        text-align: right;
        width: 160px;
        height: 11px;
    }
    .style56
    {
        text-align: right;
        height: 11px;
    }
    .style57
    {
        width: 82px;
        text-align: left;
        height: 15px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="106px" Font-Names="Tahoma" 
    Width="100%">
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
    <asp:Panel ID="Panel2" runat="server" Height="75%" 
        style="text-align: center" Font-Names="Tahoma" Width="100%">
        <br />
            &nbsp;&nbsp;&nbsp;<asp:Label ID="LMsg" runat="server" ForeColor="#CC3300">براي مديريت اعضاء ، 
        ابتدا عضو مورد نظر را از ليست زير انتخاب كنيد&nbsp;</asp:Label>
        <br />
        <br />
        &nbsp;=============================================================<br />
        <br />
        <table class="style40" 
            style="font-family: tahoma; font-size: 10px; height: 131px; width: 99%;" 
            align="center" width="100%">
            <tr>
                <td class="style54">
                    ليست اعضا ء:</td>
                <td class="style55">
                    <asp:DropDownList ID="DropDownList1" runat="server" Font-Names="Tahoma" 
                        Font-Size="Small" ForeColor="#0000CC" Height="22px" Width="100%">
                        <asp:ListItem Selected="True" Value="0">انتخاب كنيد</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style56" colspan="2">
                    &nbsp;<asp:Button ID="Button3" runat="server" Font-Names="Tahoma" Font-Size="9pt" 
                        onclick="Button3_Click" Text="مشاهده مشخصات" Height="22px" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:CheckBox ID="CheckBox1" runat="server" Font-Names="Tahoma" Font-Size="9pt" 
                        ForeColor="#FF3300" Text="تائيد حذف" />
                </td>
            </tr>
            <tr>
                <td class="style57">
                    </td>
                <td class="style43">
                    </td>
                <td class="style45">
                    </td>
                <td class="style42">
                    </td>
            </tr>
            <tr>
                <td class="style53">
                    نام :</td>
                <td class="style52">
                    <asp:Label ID="Label3" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                        ForeColor="#000066"></asp:Label>
                </td>
                <td class="style51">
                    نام خانوادگي :
                </td>
                <td class="style50">
                    <asp:Label ID="Label4" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                        ForeColor="#000066"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style53">
                    نام كاربري :</td>
                <td class="style52">
                    <asp:Label ID="Label5" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                        ForeColor="#FF3399"></asp:Label>
                </td>
                <td class="style51">
                    كلمه عبور :</td>
                <td class="style50">
                    <asp:Label ID="Label6" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                        ForeColor="#000066"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style46">
                    تاريخ عضويت :</td>
                <td class="style47">
                    <asp:Label ID="Label7" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                        ForeColor="#000066"></asp:Label>
                </td>
                <td class="style48">
                    دسترسي به صفحه مديريت :</td>
                <td class="style49">
                    <asp:Label ID="Label8" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                        ForeColor="#009900"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style53">
                    جنسيت :</td>
                <td class="style52">
                    <asp:Label ID="Label9" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                        ForeColor="#000066"></asp:Label>
                </td>
                <td class="style51">
                    آدرس پست الكترونيكي :</td>
                <td class="style50">
                    <asp:Label ID="Label10" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                        ForeColor="#000066"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="Button1" runat="server" Font-Names="Tahoma" Font-Size="9pt" 
            onclick="Button1_Click1" Text="حذف عضو انتخاب شده" Width="250px" />
        <br />
        <asp:Button ID="Button4" runat="server" Font-Names="tahoma" Font-Size="9pt" 
            onclick="Button4_Click" Text="حذف امتياز مديريت از عضو انتخاب شده" 
            Width="250px" />
        <br />
        <asp:Button ID="Button2" runat="server" Font-Names="Tahoma" Font-Size="9pt" 
            style="margin-right: 0px" Text="تخصيص امتياز مديريت به عضو انتخاب شده" 
            Width="250px" onclick="Button2_Click" />
        <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </asp:Panel>
</asp:Content>

