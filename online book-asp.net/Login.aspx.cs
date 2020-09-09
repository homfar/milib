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
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|datadirectory|\LDataBase.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Focus();
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
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        {
            SqlCommand cmd = new SqlCommand("Select * from user_pass where user_name = '" + TextBox1.Text + "' and pass_word = '" + TextBox2.Text + "'", conn);
            conn.Open();
            SqlDataReader reader;
            reader = cmd.ExecuteReader();
            if (reader.HasRows == false)
            {
                conn.Close();
                LMsg.Text = "اطلاعات وارد شده اشتباه است !";
            }
            else
            {
                string Str = "";
                while (reader.Read())
                {
                    Str = reader["User_Name"].ToString();
                }
                Cache.Insert("TF", Str, null, DateTime.MaxValue, new TimeSpan(1, 0, 0, 0, 0));
                Response.Redirect("default.aspx");
                conn.Close();
            }
        }

    }
}
