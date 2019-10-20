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
    private static int PageSize = 10;
    SqlConnection con = new SqlConnection("server=.;database=MyLMS;user=sa;password=Ak11;");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            con.Open();
            seacanGVBind("select * from Add_Candidate");
        }
    }

    public void seacanGVBind(string Query )
    {
        SqlDataAdapter da = new SqlDataAdapter(Query, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        SearchcandidateGV.DataSource = dt;
        SearchcandidateGV.DataBind();
    
    }
}