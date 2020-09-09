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

public partial class Signup : System.Web.UI.Page
{
    SqlConnection conn;
    protected void Page_Load(object sender, EventArgs e)
    {
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
        conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|datadirectory|\LDataBase.mdf;Integrated Security=True;User Instance=True");
        if (!IsPostBack)
        {
            SetVerificationText();
        }
    }
    public void SetVerificationText()
    {
        Random ran = new Random();
        int no1 = ran.Next(100, 999);
        int no2 = ran.Next(10, 99);
        int no3 = ran.Next(65, 90);
        Session["Captcha"] = no1.ToString() + Convert.ToChar(no3).ToString() + no2.ToString();
    }

    protected void CAPTCHAValidate(object source, ServerValidateEventArgs args)
    {
        if (Session["Captcha"] != null)
        {
            if (txtVerify.Text != Session["Captcha"].ToString())
            {
                SetVerificationText();
                args.IsValid = false;
                return;
            }
        }
        else
        {
            SetVerificationText();
            args.IsValid = false;
            return;
        }

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (txtVerify.Text != Session["Captcha"].ToString())
        {
            SetVerificationText();
            LMsg.Text = "عبارت وارد شده براي عبارت تصويري اشتباه است !";
            return;
        }
            SqlCommand cmd = new SqlCommand("Select * from user_pass where user_name = '" + TextBox1.Text + "'", conn);
            conn.Open();
            SqlDataReader reader;
            reader = cmd.ExecuteReader();
            if (reader.HasRows == true)
            {
                conn.Close();
                LMsg.Text = "نام كاربري وارد شده قبلا ثبت نام كرده است ، لطفا نام كاربري ديگري انتخاب كنيد";
            }
            else
            {
                conn.Close();
                SqlCommand sqlcom = new SqlCommand();
                string cmdtext = "Insert into User_Pass (User_Name,Pass_Word,Name,Family,sex,Email,Manager,Tarikh) values ( @id , @pass , @name , @family , @sex , @email , @manager, @tarikh)";
                sqlcom.CommandText = cmdtext;
                sqlcom.Parameters.AddWithValue("@id", TextBox1.Text);
                sqlcom.Parameters.AddWithValue("@pass", TextBox2.Text);
                sqlcom.Parameters.AddWithValue("@name", TextBox3.Text);
                sqlcom.Parameters.AddWithValue("@family", TextBox4.Text);
                sqlcom.Parameters.AddWithValue("@sex", RadioButtonList1.SelectedValue.ToString());
                sqlcom.Parameters.AddWithValue("@email", TextBox5.Text);
                sqlcom.Parameters.AddWithValue("@manager", "No");
                sqlcom.Parameters.AddWithValue("@tarikh", DateTime.Now);
                sqlcom.Connection = conn;
                conn.Open();
                int n = sqlcom.ExecuteNonQuery();
                if (n <= 0)
                    LMsg.Text = "ثبت نام شما با مشكل مواجه شد ، دوباره سعي كنيد !";
                else
                {
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";
                    TextBox5.Text = "";
                    TextBox6.Text = "";
                    RadioButtonList1.SelectedIndex = -1;
                    LMsg.Text = "ثبت نام شما با موفقيت به پايان رسيد ، لطفا از قسمت ورود اعضاء اقدام كنيد .";
                    SetVerificationText();
                    txtVerify.Text = "";
                }
                conn.Close();

            }
    }
}


