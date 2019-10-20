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
        if (!IsPostBack)
        {
            deletecanLV("select * from Add_Candidate where isActive = 0"); 
        }
    }
    SqlConnection con = new SqlConnection("server=.;database=MyLMS;user=sa;password=Ak11;");
    protected void DeleteCandidateLV_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
    {
        (DeleteCandidateLV.FindControl("DataPager1") as DataPager).SetPageProperties(e.StartRowIndex, e.MaximumRows, false);
        deletecanLV("select * from Add_Candidate where isActive = 0");
    }

    public void deletecanLV(string query)
    {
        if (con.State != ConnectionState.Open)
            con.Open();
        SqlDataAdapter da = new SqlDataAdapter(query, con);

        DataTable dt = new DataTable();
        da.Fill(dt);
        DeleteCandidateLV.DataSource = dt;
        DeleteCandidateLV.DataBind();
        con.Close();

    }

    protected void TxtCanName_TextChanged(object sender, EventArgs e)
    {
        deletecanLV("select * from Add_Candidate where Candidate_Name like '%" + TxtCanName.Text + "%'");
    }


    protected void DeleteCandidateLV_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        con.Open();
        Label lb = e.Item.FindControl("labl") as Label;
        //Response.Write("<script>alert('"+lb.Text+"')</script>");
        SqlCommand cmd = new SqlCommand("update Add_Candidate set isActive = 1 WHERE ID="+ lb.Text +" ", con);
        cmd.ExecuteNonQuery();
        deletecanLV("select * from Add_Candidate where isActive = 0");

        con.Close();
    }
}