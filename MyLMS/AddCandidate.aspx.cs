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
            adcndtype();
            adid();
        }
    }
    SqlConnection con = new SqlConnection("server=.;database=MyLMS;user=sa;password=Ak11;");
    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        //if (cndtyDD.SelectedIndex == 0)
        //{
        //    Response.Write("<script>alert('please Select addcanditype ')</script>");
        //    return;
        //}


        if (con.State != ConnectionState.Open)
            con.Open();
        SqlCommand com = new SqlCommand("Insert into Add_Candidate(Candidate_Name,Candidate_Gender,Candidate_Type,Check_Date,Remark,isActive) values('" + cndnm.Text +
            "','" + genderDD.SelectedItem.Text + "','" + cndtyDD.SelectedItem.Text + "','" + TxtDate.Text + "', '" + remkk.Text + "','0')", con);
        com.ExecuteNonQuery();
        con.Close();
        Response.Redirect("AddCandidate.aspx");
    }
    protected void cndtyDD_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (cndtyDD.SelectedIndex == 0)
        {

            Response.Write("<script>alert('please Select addcanditype ')</script>");
               return;

           
        }
    }
    public void adcndtype()
    {
        con.Open();
        SqlDataAdapter dr = new SqlDataAdapter("select Id=0,CandidateType = '--Select--' union select Id,CandidateType from addcanditype", "server=.;database=MyLMS;user=sa;password=Ak11;");
        DataTable dt = new DataTable();
        dr.Fill(dt);
        cndtyDD.DataTextField = "CandidateType";
        cndtyDD.DataValueField = "Id";
        cndtyDD.DataSource = dt;
        cndtyDD.DataBind();
        con.Close();
    }

    public void adid()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Select (MAX(ID)+1) from Add_Candidate;", con);
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            TextID.Text = dr[0].ToString();
        }
        dr.Close();
        con.Close();
    
    
    }
}