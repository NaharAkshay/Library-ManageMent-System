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
    SqlConnection con = new SqlConnection("server=.;database=MyLMS;user=sa;password=Ak11;");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            cndnmDDD();
            CnIdDDD();
            BooknmDDD();
            BooKIdDDD();
        }
    }
    protected void BtnSave_Click(object sender, EventArgs e)
    {
        if (con.State != ConnectionState.Open)
            con.Open();
        SqlCommand com = new SqlCommand("Insert into BookIssueForm(CandidateName,CandidateId,BookName,BookId,IssueDate,ReturnDate) values('" + cndnmDD.SelectedItem.Text + "'," + CnIdDD.SelectedItem.Text + ",'" + BookNmDD.SelectedItem.Text + "'," + BooKIdDD.SelectedItem.Text + ",'" + issueBook.Text + "', '" + ReturnDate.Text + "')", con);
        com.ExecuteNonQuery();
        con.Close();
    }
    protected void cndnmDD_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (cndnmDD.SelectedIndex == 0)
        {
            Response.Write("<script>alert('please Select Candidate Name')</script>");
            return;
        }
    }
    public void cndnmDDD()
    {
        con.Open();
        SqlDataAdapter dr = new SqlDataAdapter("select Id=0,Candidate_Name = '--Select--' union select Id,Candidate_Name from Add_Candidate", "server=.;database=MyLMS;user=sa;password=Ak11;");
        DataTable dt = new DataTable();
        dr.Fill(dt);
        cndnmDD.DataTextField = "Candidate_Name";
        cndnmDD.DataValueField = "id";
        cndnmDD.DataSource = dt;
        cndnmDD.DataBind();
        con.Close();



    }
    protected void CnIdDD_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (CnIdDD.SelectedIndex == 0)
        {
            Response.Write("<script>alert('please Select Candidate Id')</script>");
            return;
        }
    }

    public void CnIdDDD()
    {
        con.Open();
        SqlDataAdapter dr = new SqlDataAdapter("select Id from Add_Candidate", "server=.;database=MyLMS;user=sa;password=Ak11;");
        DataTable dt = new DataTable();
        dr.Fill(dt);
        CnIdDD.DataTextField = "id";
        CnIdDD.DataValueField = "id";
        CnIdDD.DataSource = dt;
        CnIdDD.DataBind();
        con.Close();


    }
    protected void BookNmDD_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (BookNmDD.SelectedIndex == 0)
        {
            Response.Write("<script>alert('please Select Book Name')</script>");
            return;
        }
    }

    public void BooknmDDD()
    {
        con.Open();
        SqlDataAdapter dr = new SqlDataAdapter("select Id=0,Book_Name = '--Select--' union select Id,Book_Name from Add_Book", "server=.;database=MyLMS;user=sa;password=Ak11;");
        DataTable dt = new DataTable();
        dr.Fill(dt);
        BookNmDD.DataTextField = "Book_Name";
        BookNmDD.DataValueField = "id";
        BookNmDD.DataSource = dt;
        BookNmDD.DataBind();
        con.Close();


    }

    protected void BooKIdDD_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (BooKIdDD.SelectedIndex == 0)
        {
            Response.Write("<script>alert('please Select Book Id')</script>");
            return;
        }
    }

    public void BooKIdDDD()
    {
        con.Open();
        SqlDataAdapter dr = new SqlDataAdapter("select Id from Add_Book", "server=.;database=MyLMS;user=sa;password=Ak11;");
        DataTable dt = new DataTable();
        dr.Fill(dt);
        BooKIdDD.DataTextField = "id";
        BooKIdDD.DataValueField = "id";
        BooKIdDD.DataSource = dt;
        BooKIdDD.DataBind();
       
        con.Close();
    }
}