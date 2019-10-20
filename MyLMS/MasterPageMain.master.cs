using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data;
using System.Data.SqlClient;


public partial class MasterPageMain : System.Web.UI.MasterPage
{
    //SqlConnection con = new SqlConnection("Data Source=DESKTOP-CBA6SFL\\SQLEXPRESS;Initial Catalog=MyLMS;Integrated Security=True;");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("signUp.aspx");
        }
    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session["user"] = "";
        Response.Redirect("signUp.aspx");
    }
}
