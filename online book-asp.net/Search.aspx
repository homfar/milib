<%@ Page Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" Title="جستجو" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style47
        {
            height: 23px;
        }
        .style42
        {
            height: 36px;
        }
        .style43
        {
            width: 115px;
        }
        .style44
        {
            width: 131px;
            text-align: left;
        }
        .style45
        {
            width: 131px;
            text-align: left;
            height: 20px;
        }
        .style46
        {
            height: 20px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="93px">
    <br />
    <br />
    <asp:Label ID="Label8" runat="server" ForeColor="#CC0000" 
            Text="( كاربر گرامي )"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label9" runat="server" 
            Text="شما اجازه دسترسي به اين قسمت را نداريد !"></asp:Label>
</asp:Panel>
<asp:Panel ID="Panel2" runat="server" Height="100%" style="margin-right: 0px" 
        Width="100%">
    <p>
        <asp:Label ID="LMsg" runat="server" Font-Names="Tahoma" 
            Font-Size="Small" ForeColor="Red"></asp:Label>
    </p>
    <table class="style40">
        <tr>
            <td style="text-align: left; font-family: Tahoma; font-size: smaller;">
                نام كتاب :</td>
            <td style="text-align: right">
                <asp:TextBox ID="TextBox1" runat="server" style="text-align: right" 
                    Width="200px"></asp:TextBox>
            </td>
            <td style="text-align: left; font-family: Tahoma; font-size: smaller;">
                نام نويسنده :</td>
            <td style="text-align: right">
                <asp:TextBox ID="TextBox3" runat="server" style="text-align: right" 
                    Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: left; font-family: Tahoma; font-size: smaller;">
                نام ناشر :</td>
            <td style="text-align: right">
                <asp:TextBox ID="TextBox2" runat="server" style="text-align: right" 
                    Width="200px"></asp:TextBox>
            </td>
            <td style="text-align: left; font-family: Tahoma; font-size: smaller;">
                نام مترجم :</td>
            <td style="text-align: right">
                <asp:TextBox ID="TextBox4" runat="server" style="text-align: right" 
                    Width="200px"></asp:TextBox>
            </td>
        </tr>
    </table>
    <p align="center" style="height: 19px">
        &nbsp;<asp:Button ID="Button1" runat="server" Font-Names="Tahoma" Font-Size="9pt" 
            Height="22px" onclick="Button1_Click" style="width: 169px" Text="جستجو" 
            Width="40px" />
    </p>
    <p align="center" style="height: 15px">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" GridLines="Vertical" ShowHeader="False" 
            style="text-align: right; margin-right: 0px;" Width="100%">
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <table style="border: 1px dotted #666633; width: 100%; direction: rtl; font-family: Tahoma; font-size: 11px; color: #800000; height: 185px;">
                            <tr>
                                <td class="style47" style="background-color: #333300">
                                    &nbsp;<asp:Label ID="Label7" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                                        ForeColor="White">نام كتاب : </asp:Label>
                                    <asp:Label ID="Label1" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                                        ForeColor="#99FF66" Text='<%# Eval("Book_Name") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style42">
                                    &nbsp;
                                    <table class="style40" style="height: 59px">
                                        <tr>
                                            <td class="style43" rowspan="5">
                                                <asp:Image ID="Image1" runat="server" BorderColor="#333300" 
                                                    BorderStyle="Dotted" BorderWidth="1px" Height="140px" 
                                                    ImageUrl='<%# Eval("Pic","Books/{0}") %>' Width="110px" />
                                            </td>
                                            <td class="style44">
                                                نويسنده :</td>
                                            <td>
                                                <asp:Label ID="Label2" runat="server" ForeColor="#000066" 
                                                    Text='<%# Eval("Nevisande") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style45">
                                                مترجم :</td>
                                            <td class="style46">
                                                <asp:Label ID="Label3" runat="server" ForeColor="#000066" 
                                                    Text='<%# Eval("Motarjem") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style44">
                                                ناشر :</td>
                                            <td>
                                                <asp:Label ID="Label4" runat="server" ForeColor="#000066" 
                                                    Text='<%# Eval("Nasher") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style44">
                                                قيمت پشت جلد :</td>
                                            <td>
                                                <asp:Label ID="Label5" runat="server" ForeColor="#000066" 
                                                    Text='<%# Eval("Gimat") %>'></asp:Label>
                                                &nbsp;ريال</td>
                                        </tr>
                                        <tr>
                                            <td class="style44">
                                                توضيحات :</td>
                                            <td>
                                                <asp:Label ID="Label6" runat="server" ForeColor="#000066" 
                                                    Text='<%# Eval("Tozih") %>'></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td class="style35" style="border: 1px dotted #996600; text-align: left;">
                                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="Tahoma" 
                                        Font-Size="10pt" Font-Underline="False" ForeColor="#0000CC" 
                                        NavigateUrl='<%# Eval("Book_F","Books/{0}") %>'>مطالعه اين كتاب</asp:HyperLink>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="#FFFFDD" />
        </asp:GridView>
    </p>
    <p style="text-align: right">
        &nbsp;</p>
</asp:Panel>
</asp:Content>

