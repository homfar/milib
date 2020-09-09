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

public partial class List : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|datadirectory|\LDataBase.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        string strname = Cache["TF"] as string;
        if (strname != null)
        {
            (Master.FindControl("Lozv") as Label).Text = strname;
            (Master.FindControl("LinkButton1") as LinkButton).Visible = true;
            Panel2.Visible = true;
            Panel1.Visible = false;
            conn.Close();
            if (IsPostBack == false)
            {
                SqlCommand cmd = new SqlCommand("Select * from Groups", conn);
                conn.Open();
                SqlDataReader reader;
                reader = cmd.ExecuteReader();
                while (reader.Read())
                    DList1.Items.Add(reader["Group_Name"].ToString());
                conn.Close();
            }
        }
        else
        {
            (Master.FindControl("Lozv") as Label).Text = "مهمان";
            (Master.FindControl("LinkButton1") as LinkButton).Visible = false;
            Panel1.Visible = true;
            Panel2.Visible = false;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        LMsg.Text = "";
        if (DList1.SelectedIndex > 0)
        {
        string query = "select * from Books Where Group_Name = '"+DList1.SelectedItem.ToString()+"'";
        SqlCommand cmd = new SqlCommand(query, conn);
        conn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        GridView1.DataSource = dr;
        GridView1.DataBind();
        conn.Close();
        }
        else
        {
            LMsg.Text = "ابتدا قفسه مورد نظر را از ليست قفسه ها انتخاب كنيد !";
        }

    }
}
