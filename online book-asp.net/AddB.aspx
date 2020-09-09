<%@ Page Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="AddB.aspx.cs" Inherits="AddB" Title="افزودن كتاب" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style40
        {
            width: 100%;
            height: 273px;
        }
        .style41
        {
            width: 140px;
            text-align: left;
        }
        .style42
        {
            width: 140px;
            height: 65px;
            text-align: left;
        }
        .style43
        {
            height: 65px;
            width: 84px;
        }
        .style44
        {
            height: 65px;
            text-align: right;
        }
        .style45
        {
            text-align: right;
        }
        .style46
        {
            width: 140px;
            text-align: left;
            height: 11px;
        }
        .style48
        {
            text-align: right;
            height: 11px;
        }
        .style49
        {
            width: 84px;
        }
        .style50
        {
            height: 11px;
            width: 84px;
        }
        .style51
        {
            width: 140px;
            height: 24px;
            text-align: left;
        }
        .style52
        {
            height: 24px;
            width: 84px;
        }
        .style53
        {
            height: 24px;
            text-align: right;
        }
        .style54
        {
            text-align: center;
            height: 62px;
        }
        .style55
    {
        width: 140px;
        height: 8px;
        text-align: left;
    }
    .style56
    {
        height: 8px;
        width: 84px;
    }
    .style57
    {
        height: 8px;
        text-align: right;
    }
    .style58
    {
        width: 140px;
        text-align: left;
    }
    .style59
    {
        width: 140px;
        height: 5px;
        text-align: left;
    }
    .style60
    {
        height: 5px;
        width: 84px;
    }
    .style61
    {
        height: 5px;
        text-align: right;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="117px" Wrap="False">
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" ForeColor="#CC0000" 
            Text="( كاربر گرامي )"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" 
            Text="شما اجازه دسترسي به اين قسمت را نداريد !"></asp:Label>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Height="376px">
        <br />
        <table class="style40" style="font-family: Tahoma; font-size: 12px" 
            width="200px">
            <tr>
                <td class="style54" colspan="3">
                    <asp:Label ID="LMsg" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                        ForeColor="#CC0066"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style55">
                    انتخاب قفسه :</td>
                <td class="style56">
                    <asp:DropDownList ID="DropDownList1" runat="server" Font-Names="Tahoma" 
                        Font-Size="10pt" ValidationGroup="VG" Width="100%">
                        <asp:ListItem Value="0">انتخاب كنيد</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style57">
                    <asp:DropDownList ID="DropDownList2" runat="server" Font-Names="Tahoma" 
                        Font-Size="10pt" ValidationGroup="VG" Visible="False" Width="100%">
                        <asp:ListItem Value="0">انتخاب كنيد</asp:ListItem>
                    </asp:DropDownList>
                    </td>
            </tr>
            <tr>
                <td class="style58">
                    نام كتاب :</td>
                <td class="style49">
                    <asp:TextBox ID="TextBox2" runat="server" style="text-align: right" 
                        Width="200px" Font-Names="Tahoma" Font-Size="Small" ValidationGroup="VG"></asp:TextBox>
                </td>
                <td class="style45">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="نام كتاب را وارد كنيد !" 
                        Font-Names="Tahoma" Font-Size="8pt" ValidationGroup="VG"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style59">
                    نويسنده كتاب :</td>
                <td class="style60">
                    <asp:TextBox ID="TextBox3" runat="server" style="text-align: right" 
                        Width="200px" Font-Names="Tahoma" ValidationGroup="VG"></asp:TextBox>
                </td>
                <td class="style61">
                    </td>
            </tr>
            <tr>
                <td class="style58">
                    مترجم :</td>
                <td class="style49">
                    <asp:TextBox ID="TextBox4" runat="server" style="text-align: right" 
                        Width="200px" Font-Names="Tahoma" ValidationGroup="VG"></asp:TextBox>
                </td>
                <td class="style45">
                    </td>
            </tr>
            <tr>
                <td class="style58">
                    نام انتشارات :</td>
                <td class="style49">
                    <asp:TextBox ID="TextBox5" runat="server" style="text-align: right" 
                        Width="200px" Font-Names="Tahoma" ValidationGroup="VG"></asp:TextBox>
                </td>
                <td class="style45">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="نام ناشر كتاب را وارد كنيد !" 
                        Font-Names="Tahoma" Font-Size="8pt" ValidationGroup="VG"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style58">
                    قيمت پشت جلد :</td>
                <td class="style49">
                    <asp:TextBox ID="TextBox6" runat="server" style="text-align: right" 
                        Width="200px" Font-Names="Tahoma" ValidationGroup="VG"></asp:TextBox>
                </td>
                <td class="style45">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox6" 
                        ErrorMessage="براي درج قيمت فقط از اعداد استفاده كنيد !" Font-Names="Tahoma" 
                        Font-Size="8pt" ValidationExpression="\d*" ValidationGroup="VG"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style46">
                    توضيحات :</td>
                <td class="style50">
                    <asp:TextBox ID="TextBox7" runat="server" style="text-align: right" 
                        Width="200px" Font-Names="Tahoma" ValidationGroup="VG"></asp:TextBox>
                </td>
                <td class="style48">
                </td>
            </tr>
            <tr>
                <td class="style51">
                    آپلود تصوير كتاب :</td>
                <td class="style52">
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="100%" />
                </td>
                <td class="style53">
                </td>
            </tr>
            <tr>
                <td class="style51">
                    آپلود فايل كتاب :</td>
                <td class="style52">
                    <asp:FileUpload ID="FileUpload2" runat="server" Width="100%" />
                </td>
                <td class="style53">
                    <asp:Label ID="Label3" runat="server" Font-Names="Tahoma" Font-Size="8pt" 
                        ForeColor="Red" Text="*" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style42">
                </td>
                <td class="style43">
                    <asp:Button ID="Button1" runat="server" Font-Names="Tahoma" Font-Size="10pt" 
                        onclick="Button1_Click" Text="ثبت كتاب جديد" Width="100%" 
                        ValidationGroup="VG" />
                </td>
                <td class="style44">
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

