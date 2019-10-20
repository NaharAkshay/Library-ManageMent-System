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
           upsupp();
       
       }
	}


    SqlConnection con = new SqlConnection("server=.;database=MyLMS;user=sa;password=Ak11;");
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        if (BookTypeDD.SelectedIndex == 0)
        {
            Response.Write("<script>alert('please Select Book Type ')</script>");
            return;
        }


        if (con.State != ConnectionState.Open)
            con.Open();
        SqlCommand com = new SqlCommand("Insert into Add_Book(Book_Name,Book_author,Actual_Rs,ISBN,Brought_By,Condition,Book_Type,Book_Pages,MRP,No_Of_Copies,Date,Remark,isActive) values('" + Bkname.Text +
            "','" + BkAu.Text + "','" + AcRs.Text + "','" + ISBN.Text + "','" + BrBy.Text + "','" + Condition.Text +
            "','" + BookTypeDD.SelectedItem.Text + "','" + Bkpage.Text + "','" + mrp.Text + "','" + noofcopies.Text + "' ,'" + Daterec.Text + "','" + Remark.Text + "','0')", con);
        com.ExecuteNonQuery();
        con.Close();
        Response.Redirect("AddBook.aspx");
    }
    protected void BookTypeDD_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (BookTypeDD.SelectedIndex == 0)
        {

            Bkname.Text = "";
            BkAu.Text = "";
            AcRs.Text = "";
            ISBN.Text = "";
            BrBy.Text = "";
            Condition.Text = "";
          //  BookTypeDD.Text = "";
            Bkpage.Text = "";
            mrp.Text = "";
            noofcopies.Text = "";
            Daterec.Text = "";
            Remark.Text = "";
           
            return;
            
        }


        //con.Open();
        //SqlCommand com = new SqlCommand("select * from addbooktype where booktype ='" + BookTypeDD.SelectedItem.Text + "'", con);
        //SqlDataReader dr = com.ExecuteReader();

        //if (dr.Read())
      
        //    Bkname.Text = dr[2].ToString();
        //    BkAu.Text = dr[3].ToString();
        //    AcRs.Text = dr[4].ToString();
        //    ISBN.Text = dr[5].ToString();
        //    BrBy.Text = dr[6].ToString();
        //    Condition.Text = dr[7].ToString();
        //    BookTypeDD.Text = dr[8].ToString();
        //    Bkpage.Text = dr[9].ToString();
        //    mrp.Text = dr[10].ToString();
        //    noofcopies.Text = dr[9].ToString();
        //    Daterec.Text = dr[10].ToString();
        //    Remark.Text = dr[11].ToString();
        //    con.Close();
        }
    

    public void upsupp()
    {
        con.Open();
        SqlDataAdapter dr = new SqlDataAdapter("select Id=0,booktype = '--Select--' union select Id,Booktype from addbooktype", "server=.;database=MyLMS;user=sa;password=Ak11;");
        DataTable dt = new DataTable();
        dr.Fill(dt);
        BookTypeDD.DataTextField = "booktype";
        BookTypeDD.DataValueField = "Id";
        BookTypeDD.DataSource = dt;
        BookTypeDD.DataBind();
        con.Close();
    }
    
}