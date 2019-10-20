using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    SqlConnection con = new SqlConnection("server=.;database=MyLMS;user=sa;password=Ak11;");
    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        if (con.State != ConnectionState.Open)
        {
            con.Open();
            SqlCommand com = new SqlCommand("Insert into addcanditype  (CandidateType,BookLimit,DayLimit,UserLifemonth,Remark,isActive) values('" + canditype.Text + "','" + bklimit.Text + "','" + dylimit.Text + "','" + userlimit.Text + "','" + rmk.Text + "','0')", con);
            com.ExecuteNonQuery();
            con.Close();
            Response.Redirect("AddCandidateType.aspx");
            
        }
    }
}