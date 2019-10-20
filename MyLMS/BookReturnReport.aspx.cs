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
            bookret("select * from BookIssueForm");
        }
    }
    public void bookret(string query)
    {

        SqlDataAdapter da = new SqlDataAdapter(query, "server=.;database=MyLMS;user=sa;password=Ak11;");

        DataTable dt = new DataTable();
        da.Fill(dt);
        BookRetLV.DataSource = dt;
        BookRetLV.DataBind();
        con.Close();

    }
    protected void SearchReturnBook_TextChanged(object sender, EventArgs e)
    {
        bookret("select * from BookIssueForm where CandidateName like '%" + SearchReturnBook.Text + "%'");
    }

    protected void BookRetLV_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
    {
        (BookRetLV.FindControl("DataPager1") as DataPager).SetPageProperties(e.StartRowIndex, e.MaximumRows, false);
        bookret("select * from BookIssueForm");

    }
    protected void BtnRetRepot_Click(object sender, EventArgs e)
    {
        if (con.State != ConnectionState.Open)
            con.Open();
        SqlCommand cmd = new SqlCommand("select  issuedate,returndate  from bookissueform where id=1; ", con);
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            txtdt.Text = dr[0].ToString();
            txtdte.Text = dr[1].ToString();
            //TextBookid.Text = dr[2].ToString();
            //Textbknm.Text = dr[3].ToString();
        } 
        
        dr.Close();
        con.Close();
    }
    int x;
    protected void BookRetLV_ItemCommand(object sender, ListViewCommandEventArgs e)
    {

        if (con.State != ConnectionState.Open)
            con.Open();
        Label lb = e.Item.FindControl("bokid") as Label;
        x = Int32.Parse(lb.Text);
        string aa = lb.Text;
        //Response.Write("<script>alert('"+lb.Text+"')</script>");
        SqlCommand cmd = new SqlCommand("select issuedate,returndate from bookissueform where ID = " + x + " ", con);

        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            txtdt.Text = dr[0].ToString();
            txtdte.Text = dr[1].ToString();
            Textdely.Text = Math.Abs((Convert.ToDateTime(txtdte.Text) - Convert.ToDateTime(DateTime.Now)).Days).ToString();
            TextTamt.Text = (Convert.ToInt32(Textdely.Text) * 10).ToString();


      
        }
        dr.Close();
        con.Close();
    }

}

