using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web;

public partial class signUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    SqlConnection con = new SqlConnection("server=.;database=MyLMS;user=sa;password=Ak11;");
    protected void button_Click(object sender, EventArgs e)
    {
        if (Textusername.Text == "")
        {
            Response.Write("<script>alert('Enter UserName')</script>");
            return;
        }
        if (Textpassrd.Text == "")
        {
            Response.Write("<script>alert('Enter Password')</script>");
            return;
        }
        if (con.State != ConnectionState.Open)
            con.Open();
        SqlCommand com = new SqlCommand("select Pasword from LOGIN where Usname ='" + Textusername.Text + "' ", con);
        SqlDataReader dr = com.ExecuteReader();
        if (dr.Read())
        {
            if (dr[0].ToString() != Textpassrd.Text)
            {
                Response.Write("<script>alert('password Doed Not Match')</script>");
                Textpassrd.Text = "";
            }
            else
            {
                Session["user"] = Textusername.Text;
                Response.Redirect("AddBook.aspx");
                Textusername.Text = "";
                Textpassrd.Text = "";
            }
        }
        else
        {
            Response.Write("<script>alert('User Does Not Exit')</script>");
            Textusername.Text = "";
            Textpassrd.Text = "";
        }
        dr.Close();
        con.Close();
    }
    protected void Page_Init(object sender, EventArgs e)
    {
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Cache.SetExpires(DateTime.Now.AddSeconds(-1));
        Response.Cache.SetNoStore();
    }
}
