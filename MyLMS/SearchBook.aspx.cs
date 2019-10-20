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
            seagvbind("select * from Add_Book");
        }
    }

    private void seagvbind(string query)
    {
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        SearchBookGV.DataSource = dt;
        SearchBookGV.DataBind();
    }

    protected void TxtBookName_TextChanged(object sender, EventArgs e)
    {
        seagvbind("select * from Add_Book where Book_Name like '%" + TxtBookName.Text + "%'");
    }
    protected void TxtAuthorName_TextChanged(object sender, EventArgs e)
    {
        seagvbind("select * from Add_Book where Book_author like '%" + TxtAuthorName.Text + "%'");
    }
    protected void TxtBookId_TextChanged(object sender, EventArgs e)
    {
        seagvbind("select * from Add_Book where Id like '%" + TxtBookId.Text + "%'");
    }
}