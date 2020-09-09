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

public partial class AddG : System.Web.UI.Page
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
                    SqlCommand cmd = new SqlCommand("Select * from Groups", conn);
                    conn.Open();
                    SqlDataReader reader;
                    reader = cmd.ExecuteReader();
                    while (reader.Read())
                        ListBox1.Items.Add(reader["Group_Name"].ToString());
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

    protected void Button1_Click(object sender, EventArgs e)
    {
        conn.Close();
        SqlCommand cmd3 = new SqlCommand("Select * from Groups where Group_Name = '"+TextBox1.Text+"'", conn);
        conn.Open();
        SqlDataReader reader3;
        reader3 = cmd3.ExecuteReader();
        if(reader3.HasRows == false)
        {
            conn.Close();
            SqlCommand cmd4 = new SqlCommand("Select MAX(G_ID) as MAXID from Groups", conn);
            conn.Open();
            SqlDataReader reader4;
            reader4 = cmd4.ExecuteReader();
            int MaxID = 0;
            if (reader4.HasRows == true)
            {
                reader4.Read();
                MaxID = Convert.ToInt32(reader4["MAXID"].ToString());
                MaxID = MaxID + 1;
            }
            else
                MaxID = 1;

            conn.Close();
            SqlCommand sqlcom = new SqlCommand();
            string cmdtext = "Insert into Groups (G_ID , Group_Name) values ( @max , @name )";
            sqlcom.CommandText = cmdtext;
            sqlcom.Parameters.AddWithValue("@max", MaxID);
            sqlcom.Parameters.AddWithValue("@name", TextBox1.Text);
            sqlcom.Connection = conn;
            conn.Open();
            int n = sqlcom.ExecuteNonQuery();
            if (n <= 0)
                LMsg.Text = "ثبت قفسه جديد با مشكل مواجه شد ، لطفا دوباره سعي كنيد !";
            else
            {
                ListBox1.Items.Clear();
                conn.Close();
                SqlCommand cmd = new SqlCommand("Select * from Groups", conn);
                conn.Open();
                SqlDataReader reader;
                reader = cmd.ExecuteReader();
                while (reader.Read())
                    ListBox1.Items.Add(reader["Group_Name"].ToString());
                conn.Close();
                Directory.CreateDirectory(Server.MapPath("Books/"+MaxID));
                TextBox1.Text = "";
                LMsg.Text = "ثبت قفسه جديد با موفقيت به پايان رسيد .";
            }
            conn.Close();
        }
        else
        {
            conn.Close();
            LMsg.Text = "نام وارد شده براي قفسه جديد فبلا ثبت شده است !";
        }
    }

}
