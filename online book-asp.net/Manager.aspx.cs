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

public partial class Manager : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|datadirectory|\LDataBase.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (IsPostBack == false)
        {
            LMsg.Text = "";
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
                    SqlCommand cmd = new SqlCommand("Select User_Name from User_Pass where User_Name != 'مهمان'", conn);
                    conn.Open();
                    SqlDataReader reader;
                    reader = cmd.ExecuteReader();
                    while (reader.Read())
                        DropDownList1.Items.Add(reader["User_Name"].ToString());
                    conn.Close();
                }
            }
            else
            {
                conn.Close();
                Panel1.Visible = true;
                Panel2.Visible = false;

            }
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        LMsg.Text = "";
        Label3.Text = "";
        Label4.Text = "";
        Label5.Text = "";
        Label6.Text = "";
        Label7.Text = "";
        Label8.Text = "";
        Label9.Text = "";
        Label10.Text = "";
        CheckBox1.Checked = false;

        if (DropDownList1.SelectedIndex == 0)
        {
            LMsg.Text = "ابتدا عضو مورد نظر را از ليست انتخاب كنيد !";
            DropDownList1.Focus();
            return;
        }
        conn.Close();
        SqlCommand cmd3 = new SqlCommand("Select * from User_Pass where User_Name = '" + DropDownList1.SelectedItem.Text + "'", conn);
        conn.Open();
        SqlDataReader reader3;
        reader3 = cmd3.ExecuteReader();
        reader3.Read();
        Label3.Text = reader3["Name"].ToString();
        Label4.Text = reader3["Family"].ToString();
        Label5.Text = reader3["User_Name"].ToString();
        Label6.Text = reader3["Pass_Word"].ToString();
        Label7.Text = reader3["Tarikh"].ToString();
        Label8.Text = reader3["Manager"].ToString();
        Label9.Text = reader3["sex"].ToString();
        Label10.Text = reader3["Email"].ToString();
        conn.Close();
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        LMsg.Text = "";
        if (DropDownList1.SelectedIndex == 0)
        {
            LMsg.Text = "ابتدا عضو مورد نظر را از ليست انتخاب كنيد !";
            DropDownList1.Focus();
            return;
        }
        if (CheckBox1.Checked == false)
        {
            LMsg.Text = "ابتدا گزينه مربوط به ( تاييد حذف ) را فعال كنيد !";
            CheckBox1.Focus();
            return;
        }
        conn.Close();
        SqlCommand cmd4 = new SqlCommand("Delete from User_Pass where User_Name = '" + DropDownList1.SelectedItem.Text + "'", conn);
        conn.Open();
        SqlDataReader reader4;
        reader4 = cmd4.ExecuteReader();
        conn.Close();
        LMsg.Text = "عضو انتخاب شده از ليست اعضاء حذف شد !";
        Label3.Text = "";
        Label4.Text = "";
        Label5.Text = "";
        Label6.Text = "";
        Label7.Text = "";
        Label8.Text = "";
        Label9.Text = "";
        Label10.Text = "";
        CheckBox1.Checked = false;
        DropDownList1.Items.Remove(DropDownList1.SelectedItem);

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        LMsg.Text = "";
        if (DropDownList1.SelectedIndex == 0)
        {
            LMsg.Text = "ابتدا عضو مورد نظر را از ليست انتخاب كنيد !";
            DropDownList1.Focus();
            return;
        }
        conn.Close();
        SqlCommand cmd4 = new SqlCommand("update User_Pass set Manager = 'Yes' where User_Name = '" + DropDownList1.SelectedItem.Text + "'", conn);
        conn.Open();
        SqlDataReader reader4;
        reader4 = cmd4.ExecuteReader();
        conn.Close();
        LMsg.Text = "براي عضو انتخاب شده اجازه دسترسي به بخش مديريت فعال شد !";
        Label8.Text = "Yes";
        CheckBox1.Checked = false;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        LMsg.Text = "";
        if (DropDownList1.SelectedIndex == 0)
        {
            LMsg.Text = "ابتدا عضو مورد نظر را از ليست انتخاب كنيد !";
            DropDownList1.Focus();
            return;
        }
        if (CheckBox1.Checked == false)
        {
            LMsg.Text = "ابتدا گزينه مربوط به ( تاييد حذف ) را فعال كنيد !";
            CheckBox1.Focus();
            return;
        }
        conn.Close();
        SqlCommand cmd4 = new SqlCommand("update User_Pass set Manager = 'No' where User_Name = '" + DropDownList1.SelectedItem.Text + "'", conn);
        conn.Open();
        SqlDataReader reader4;
        reader4 = cmd4.ExecuteReader();
        conn.Close();
        LMsg.Text = "براي عضو انتخاب شده اجازه دسترسي به بخش مديريت لغو شد !";
        Label8.Text = "No";
        CheckBox1.Checked = false;
    }
}
