<%@ Page Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" Title=" پروژه دات کام www.prozhe.com" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style17
        {
            text-align: right;
            height: 306px;
        }
        .style18
        {
            width: 100%;
        }
        .style20
        {
            color: #993333;
        }
        .style40
        {
            width: 5%;
        }
    .style42
    {
        width: 5%;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" BackColor="#EEEEDD" Height="311px">
        <div class="style17" 
                        style="vertical-align: top; text-align: center; background-color: #EEEEDD;">
            <br />
            <br />
                        مراجعه كننده گرامي<br />
            <br />
                        به كتابخانه آنلاين دانشگاه جامع علمي كاربردي - مركز شيرين عسل خوش آمديد<br />
            <br />
                        --------------------------------------------------------------------------------------------------------<br />
            <br />
            <asp:Label ID="Label1" runat="server" ForeColor="#990033" Text="توجه"></asp:Label>
            <br />
            <br />
                        جهت استفاده از امكانات كتابخانه بايد به صورت آنلاين در كتابخانه عضو شويد !&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Signup.aspx">ثبت 
                        نام عضو جديد</asp:HyperLink>
            <br />
            <br />
            <br />
                        اگر قبلا ثبت نام نموده ايد ، مي توانيد با مراجعه به قسمت ورود اعضاء و وارد نمودن 
                        نام كاربري و كلمه عبور
                        <br />
            <br />
                        خود وارد سايت شويد .&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Login.aspx">ورود 
                        اعضاء</asp:HyperLink>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" BackColor="#EEEEDD" ForeColor="#000099" 
                    Height="410px" style="margin-right: 0px" Visible="False" 
        Width="100%">
        <table class="style18">
            <tr>
                <td 
                                style="text-align: justify;" valign="middle" class="style42">
                                &nbsp;</td>
                <td style="text-align: justify;" valign="middle">
                    کتاب از ارزشمندترین تحفه هایی است که خداوند تعالی به بشر ارزانی داشته است. خالق 
                    مهربان عالم، وجود انسان را به قدرت فکر و دانایی از سایر موجودات ممتاز کرد و در 
                    نشان دادن اهمیت بسزای علم و دانایی در کتاب آسمانی اش قرآن مجید به قلم و آنچه می 
                    نویسند سوگند یاد فرمود که، «والقلم و ما یسطرون». این سوگند بلندای مقام کتاب را 
                    نشان می دهد تا آنان که راه کمال می جویند کلید صعود و پیروزی را بیابند.</td>
                <td style="text-align: justify;" valign="middle" width="5%">
                    &nbsp;</td>
            </tr>
        </table>
        <span class="style20">
        <br />
        <asp:Image ID="Image4" runat="server" Height="195px" 
                        ImageUrl="~/Images/Mid.jpg" />
        <br />
        <br />
        <br />
                    این سایت هر روز با کتابهای جدید به روز میشود با بازدید روزانه میتوانید از مطالب 
                    جدید استفاده نمایید.</span></asp:Panel>
</asp:Content>

