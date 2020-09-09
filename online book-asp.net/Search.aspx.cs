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

public partial class Search : System.Web.UI.Page
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
            string query = "select * from Books Where Book_Name Like @name and Nasher like @nasher and Nevisande Like @navisande and Motarjem Like @motarjem";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@name", "%" + TextBox1.Text + "%");
            cmd.Parameters.AddWithValue("@nasher", "%" + TextBox2.Text + "%");
            cmd.Parameters.AddWithValue("@navisande", "%" + TextBox3.Text + "%");
            cmd.Parameters.AddWithValue("@motarjem", "%" + TextBox4.Text + "%");
            conn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            if (dr.HasRows == false)
                LMsg.Text = "موردي يافت نشد !";
            else
                LMsg.Text = GridView1.Rows.Count.ToString()+" مورد يافت شد ! ";
            conn.Close();
    }
}
