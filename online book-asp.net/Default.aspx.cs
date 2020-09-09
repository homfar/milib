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

public partial class _Default : System.Web.UI.Page
{
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
}
