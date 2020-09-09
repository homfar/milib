using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.IO;

public partial class AddB : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|datadirectory|\LDataBase.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        DropDownList1.Focus();
        string strname = Cache["TF"] as string;
        if (strname != null)
        {
            (Master.FindControl("Lozv") as Label).Text = strname;
            (Master.FindControl("LinkButton1") as LinkButton).Visible = true;
        }
        else
        {
            (Master.FindControl("Lozv") as Label).Text = "مهمان";
            (Master.FindControl("LinkButton1") as LinkButton).Visible = false;
        }
        SqlCommand cmd1 = new SqlCommand("Select * from user_pass where user_name = '" + (Master.FindControl("Lozv") as Label).Text + "'", conn);
        conn.Open();
        SqlDataReader reader1;
        reader1 = cmd1.ExecuteReader();
        if (reader1.HasRows == true)
        {
            string Str = "";
            reader1.Read();
            Str = reader1["Manager"].ToString();
            if (Str == "No ")
            {
                conn.Close();
                Panel1.Visible = true;
                Panel2.Visible = false;
            }
            else
            {
                conn.Close();
                Panel2.Visible = true;
                Panel1.Visible = false;
                if (IsPostBack == false)
                {
                    SqlCommand cmd = new SqlCommand("Select * from Groups", conn);
                    conn.Open();
                    SqlDataReader reader;
                    reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        DropDownList1.Items.Add(reader["Group_Name"].ToString());
                        DropDownList2.Items.Add(reader["G_ID"].ToString());
                    }
                    conn.Close();
                }
            }
        }
        else
        {
            conn.Close();
            Panel1.Visible = true;
            Panel2.Visible = false;

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label3.Visible = false;
        LMsg.Text = "";
        if (DropDownList1.SelectedIndex == 0)
        {
            LMsg.Text = "ابتدا بايد قفسه مورد نظر را جهت قرار دادن كتاب انتخاب كنيد !";
            return;
        }

        if (FileUpload2.HasFile == false)
        {
            Label3.Visible = true;
            Label3.Text = "فايل كتاب مورد نظر را وارد نكرده ايد !";
            return;
        }

        DropDownList2.SelectedIndex = DropDownList1.SelectedIndex;
        string BFileName = DropDownList2.SelectedValue.ToString() + "/" + FileUpload2.FileName;
        SqlCommand cmd2 = new SqlCommand("Select * from Books where Book_Name = '" + TextBox2.Text + "'", conn);
        conn.Open();
        SqlDataReader reader2;
        reader2 = cmd2.ExecuteReader();
        if (reader2.HasRows == true)
        {
            conn.Close();
            LMsg.Text = "كتاب مورد نظر قبلا به ثبت رسيده است !";
            return;
        }
        conn.Close();
        string imgFileName = "";
        if (!FileUpload1.HasFile)
        {
            string sql_insert = "INSERT INTO Books (Book_F , Pic , Group_Name , Book_Name , Nevisande , Nasher , Motarjem , " +
            "Gimat , Tozih) values ('" + BFileName + "' , 'NoPic.jpg' , '" + DropDownList1.SelectedValue.ToString() + "' , '" + TextBox2.Text + "' , " +
            "'" + TextBox3.Text + "' , '" + TextBox5.Text + "' , '" + TextBox4.Text + "' , '" + 
            TextBox6.Text + "' , '" + TextBox7.Text + "')";
            SqlCommand command = new SqlCommand(sql_insert, conn);
            conn.Open();
            command.ExecuteNonQuery();
            conn.Close();
            FileUpload2.SaveAs(Server.MapPath("Books/") + BFileName);
            LMsg.Text = "كتاب مورد نظر با موفقيت در قفسه انتخاب شده درج گرديد !";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            return;
        }
        else
        {
            imgFileName = DropDownList2.SelectedValue.ToString()+"/"+FileUpload1.FileName;
            if ((System.IO.Path.GetExtension(imgFileName) == ".jpg") || (System.IO.Path.GetExtension(imgFileName) == ".jpeg") || (System.IO.Path.GetExtension(imgFileName) == ".bmp") || (System.IO.Path.GetExtension(imgFileName) == ".gif") || (System.IO.Path.GetExtension(imgFileName) == ".ico") || (System.IO.Path.GetExtension(imgFileName) == ".png"))
            {
                string sql_insert = "INSERT INTO Books (Book_F , Pic , Group_Name , Book_Name , Nevisande , Nasher , Motarjem , " +
                "Gimat , Tozih) values ('" + BFileName + "' , '" + imgFileName + "' , '" + DropDownList1.SelectedValue.ToString() + "' , '" + TextBox2.Text + "' , " +
                "'" + TextBox3.Text + "' , '" + TextBox5.Text + "' , '" + TextBox4.Text + "' , '" +
                TextBox6.Text + "' , '" + TextBox7.Text + "')";
                SqlCommand command = new SqlCommand(sql_insert, conn);
                conn.Open();
                command.ExecuteNonQuery();
                conn.Close();
                FileUpload1.SaveAs(Server.MapPath("Books/") + imgFileName);
                FileUpload2.SaveAs(Server.MapPath("Books/") + BFileName);
                LMsg.Text = "كتاب مورد نظر با موفقيت در قفسه انتخاب شده درج گرديد !";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "";
            }
            else
            {
                LMsg.Text = "لطفا فقط از فرمت تصوير براي عكس كتاب استفاده كنيد !";
                return;
            }
        }
    }
}
