<%@ Page Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" Title="ثبت نام عضو جديد" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .style42
    {
        text-align: center;
        height: 69px;
    }
        .style20
    {
            width: 132px;
            text-align: left;
        }
        .style10
        {
        width: 142px;
        text-align: right;
    }
        .style7
        {
            width: 420px;
            text-align: right;
        }
        .style21
    {
        width: 132px;
        text-align: left;
        height: 12px;
    }
    .style22
    {
        width: 142px;
        text-align: right;
        height: 12px;
    }
    .style45
    {
        width: 600px;
        text-align: right;
        height: 12px;
    }
        .style43
    {
        width: 132px;
        text-align: left;
        height: 19px;
    }
    .style46
    {
        width: 142px;
        text-align: right;
        height: 19px;
    }
    .style47
    {
        width: 420px;
        text-align: right;
        height: 19px;
    }
        .style44
    {
        width: 132px;
        text-align: right;
        position: fixed;
    }
    .style30
    {
        width: 132px;
        text-align: left;
        height: 29px;
    }
    .style31
    {
        width: 142px;
        text-align: right;
        height: 29px;
    }
    .style32
    {
        width: 420px;
        text-align: right;
        height: 29px;
    }
    .style33
    {
        width: 132px;
        text-align: left;
        height: 10px;
    }
    .style34
    {
        width: 142px;
        text-align: right;
        height: 10px;
    }
    .style52
    {
        width: 420px;
        text-align: right;
        height: 7px;
    }
    .style53
    {
        width: 132px;
        text-align: left;
        height: 7px;
    }
    .style54
    {
        width: 142px;
        text-align: right;
        height: 7px;
    }
    .style55
    {
            width: 132px;
        }
    .style56
    {
        height: 68px;
            text-align: center;
        }
    .style57
    {
        width: 142px;
        text-align: right;
        height: 68px;
    }
    .style58
    {
        width: 420px;
        text-align: right;
        height: 68px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table dir="rtl" 
                    
                    
            
    style="border: 1px none #008080; width: 580px; text-align: left; vertical-align: middle; font-family: Tahoma; font-size: 11px;" 
    align="center" width="100%">
    <tr>
        <td class="style42" colspan="3" 
                            
            style="background-color: #E8ECF0; border: 1px dotted #6699FF" height="40px">
            <asp:Label ID="LMsg" runat="server" ForeColor="#CC0000" Font-Size="Small">براي عضويت اطلاعات زير 
                            را وارد نموده و دكمه ثبت نام را كليلك كنيد</asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style20" height="24px">
        </td>
        <td class="style10" height="24px">
        </td>
        <td class="style7" height="24px">
        </td>
    </tr>
    <tr>
        <td class="style21">
                            نام :</td>
        <td class="style22" height="24px">
            <asp:TextBox ID="TextBox3" runat="server" Font-Size="Small" 
                                style="text-align: right; margin-left: 0px; margin-right: 0px" 
                                Width="150px" Font-Names="Tahoma" ValidationGroup="AB"></asp:TextBox>
        </td>
        <td class="style45">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="TextBox3" ErrorMessage="نام خود را وارد كنيد !" 
                                SetFocusOnError="True" ValidationGroup="AB">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style43">
                            نام خانوادگي :</td>
        <td class="style46" height="24px">
            <asp:TextBox ID="TextBox4" runat="server" Font-Size="Small" 
                                style="text-align: right; margin-left: 0px; margin-right: 0px" 
                                Width="150px" ValidationGroup="AB" Font-Names="Tahoma"></asp:TextBox>
        </td>
        <td class="style47">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="TextBox4" 
                                ErrorMessage="نام خانوادگي خود را وارد كنيد !" SetFocusOnError="True" 
                                ValidationGroup="AB">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style53">
                            جنسيت :</td>
        <td class="style54">
                            &nbsp;<asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="10px" 
                                RepeatDirection="Horizontal" Width="133px">
                                <asp:ListItem>مرد</asp:ListItem>
                                <asp:ListItem>زن</asp:ListItem>
            </asp:RadioButtonList>
        </td>
        <td class="style52">
        </td>
    </tr>
    <tr>
        <td class="style20">
                            آدرس ايميل :</td>
        <td class="style10" lang="24px">
            <asp:TextBox ID="TextBox5" runat="server" Font-Size="Small" 
                                style="text-align: left; margin-left: 0px; margin-right: 0px" 
                                Width="150px" ValidationGroup="AB" Font-Names="Tahoma"></asp:TextBox>
        </td>
        <td class="style7">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="TextBox5" 
                                ErrorMessage="آدرس پست الكترونيكي خود را وارد كنيد !" SetFocusOnError="True" 
                                ValidationGroup="AB">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="TextBox5" ErrorMessage="آدرس پست الكترونيكي معتبر نيست !" 
                                Font-Size="Smaller" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                ValidationGroup="AB"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="style44">
        </td>
        <td class="style10" lang="24px">
        </td>
        <td class="style7">
        </td>
    </tr>
    <tr>
        <td class="style30">
                            نام كاربري :</td>
        <td class="style31" lang="24px">
            <asp:TextBox ID="TextBox1" runat="server" Font-Size="Small" 
                                style="text-align: center; margin-left: 0px; margin-right: 0px" 
                                Width="150px" ValidationGroup="AB" Font-Names="Tahoma"></asp:TextBox>
        </td>
        <td class="style32">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="TextBox1" ErrorMessage="نام كاربري خود را وارد كنيد !" 
                                SetFocusOnError="True" ValidationGroup="AB">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style33">
                            كلمه عبور :</td>
        <td class="style34" lang="24px">
            <asp:TextBox ID="TextBox2" runat="server" Font-Size="Small" 
                                style="text-align: center; margin-left: 0px; margin-right: 0px" 
                                TextMode="Password" Width="150px" ValidationGroup="AB" 
                Font-Names="Tahoma"></asp:TextBox>
        </td>
        <td class="style35" style="text-align: right">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="TextBox2" ErrorMessage="كلمه عبور خود را وارد كنيد !" 
                                SetFocusOnError="True" ValidationGroup="AB">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                ControlToValidate="TextBox2" 
                                ErrorMessage="كلمه عبور حداقل بايد 4 كاراكتر و از كاراكترهاي مجاز باشد !" 
                                Font-Size="Smaller" ValidationExpression="\w{4,22}" ValidationGroup="AB"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="style55">
                            تكرار كلمه عبور :</td>
        <td class="style10" lang="24px">
            <asp:TextBox ID="TextBox6" runat="server" Font-Size="Small" 
                                style="text-align: center; margin-left: 0px; margin-right: 0px" 
                                Width="150px" TextMode="Password" ValidationGroup="AB" 
                Font-Names="Tahoma"></asp:TextBox>
        </td>
        <td style="text-align: right">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                ControlToValidate="TextBox6" 
                                ErrorMessage="كلمه عبور خود را دوباره وارد كنيد !" SetFocusOnError="True" 
                                ValidationGroup="AB">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                ControlToCompare="TextBox2" ControlToValidate="TextBox6" 
                                ErrorMessage="مقدار وارد شده با كلمه عبور وارد شده يكسان نسيت !" 
                                Font-Size="Smaller" ValidationGroup="AB"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="style55">
                            &nbsp;</td>
        <td class="style10" lang="24px">
                    <asp:Image ID="imCaptcha" runat="server" Height="50px" 
                        ImageUrl="~/CAPTCHA/Captcha.ashx" Width="150px" BorderColor="Maroon" 
                        BorderStyle="Solid" BorderWidth="3px" style="text-align: center" />
        </td>
        <td style="text-align: right">
                    &nbsp;</td>
    </tr>
    <tr>
        <td class="style55">
                            <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/accessibility.gif" />
                    </td>
        <td class="style10" lang="24px">
            <asp:TextBox ID="txtVerify" runat="server" 
                        Width="150px" style="text-align: left" ValidationGroup="AB"></asp:TextBox>
        </td>
        <td style="text-align: right">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="txtVerify" 
                        ErrorMessage="عبارت نمايش داده شده در تصوير بالا را وارد كنيد !" Font-Bold="False" 
                        ForeColor="#CC0000" ValidationGroup="AB">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style56">
        </td>
        <td class="style57" lang="24px">
            <asp:Button ID="Button1" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                                Text="ثبت نام" Width="158px" onclick="Button1_Click1" 
                                ValidationGroup="AB" Height="24px" />
        </td>
        <td class="style58">
        </td>
    </tr>
</table>
</asp:Content>

