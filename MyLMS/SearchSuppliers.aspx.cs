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
            gvbind("select * from Add_Suppliers");
        }
    }

    private void gvbind(string query)
    {
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        searchsuppGV.DataSource = dt;
        searchsuppGV.DataBind();
    }

    protected void suppName1_TextChanged(object sender, EventArgs e)
    {
        gvbind("select * from Add_Suppliers where SuppName like '%" + suppName1.Text + "%'");
    }
}


