using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Configuration;
using System.IO;
//using Excel = Microsoft.SOffice.Interop.Excel;
using System.Runtime.InteropServices;
using System.Text;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("server=.;database=MyLMS;user=sa;password=Ak11;");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            deleteLV("select * from Add_Book where isActive = 0");


        }
    }

    public void deleteLV(string query)
    {
        if(con.State!=ConnectionState.Open)
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(query, con);
       
        DataTable dt = new DataTable();
        da.Fill(dt);
        DeleteBookLV.DataSource = dt;
        DeleteBookLV.DataBind();
        con.Close();

    }

    protected void txtboknm_TextChanged(object sender, EventArgs e)
    {
        deleteLV("select * from Add_Book where Book_Name like '%" + txtboknm.Text + "%'");


    }

    protected void DeleteBookLV_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
    {
        (DeleteBookLV.FindControl("DataPager1") as DataPager).SetPageProperties(e.StartRowIndex, e.MaximumRows, false);
        deleteLV("select * from Add_Book where isActive ='0' ");
    }

    private DataTable GetDataTable()
    {
        DataTable table = new DataTable();
        table.Columns.Add("BookName"); table.Columns.Add("BookAuthor");
        table.Columns.Add("ActualRs"); table.Columns.Add("ISBN");
        table.Columns.Add("BroughtBy"); table.Columns.Add("Condition");
        table.Columns.Add("BookType"); table.Columns.Add("BookPages");
        table.Columns.Add("MRP"); table.Columns.Add("NoOfCopies");
        table.Columns.Add("Date"); table.Columns.Add("Remark");
        foreach (ListViewItem lvi in DeleteBookLV.Items)
        {
            Label Label1 = lvi.FindControl("Label1") as Label;
            Label Label2 = lvi.FindControl("Label2") as Label;
            Label Label3 = lvi.FindControl("Label3") as Label;
            Label Label4 = lvi.FindControl("Label4") as Label;
            Label Label5 = lvi.FindControl("Label5") as Label;
            Label Label6 = lvi.FindControl("Label6") as Label;
            Label Label7 = lvi.FindControl("Label7") as Label;
            Label Label8 = lvi.FindControl("Label8") as Label;
            Label Label9 = lvi.FindControl("Label9") as Label;
            Label Label10 = lvi.FindControl("Label10") as Label;
            Label Label11 = lvi.FindControl("Label11") as Label;
            Label Label12 = lvi.FindControl("Label12") as Label;

            DataRow row = table.NewRow();
            row[0] = Label1.Text;
            row[1] = Label2.Text;
            row[2] = Label3.Text;
            row[3] = Label4.Text;

            row[4] = Label12.Text; 
            row[5] = Label5.Text;
            row[6] = Label6.Text;
            row[7] = Label7.Text;
            row[8] = Label8.Text;
            row[9] = Label9.Text;
            row[10] = Label10.Text;
            row[11] = Label11.Text;
            
            

            table.Rows.Add(row);
        }

        return table;
    }
    private void DataTableToExcel(DataTable dataTable)
    {
        GridView tempGrid = new GridView();
        tempGrid.AutoGenerateColumns = true;
        tempGrid.DataSource = dataTable;
        tempGrid.DataBind();
        try
        {
            Response.Clear();
            Response.ContentType = "application/application/ms-excel";
            Response.AddHeader("content-disposition", "attachment;filename=Books.xls");
            Response.ContentEncoding = Encoding.UTF8;
            Response.BinaryWrite(Encoding.UTF8.GetPreamble());
            Response.Charset = "";

            using (StringWriter sw = new StringWriter())
            {
                // You could also write other text here
                using (HtmlTextWriter hw = new HtmlTextWriter(sw))
                {

                    tempGrid.RenderControl(hw);

                }
                Response.Write(sw.ToString());
            }
            Response.End();
        }
        catch (Exception ex)
        {
            //catching exception
        }
    }

    protected void btnexcel_Click(object sender, EventArgs e)
    {
        DataTableToExcel(GetDataTable());
    }

   
    //protected void BtnDltAdBk_Click(object sender, EventArgs e)
    //{
    //    if (con.State != ConnectionState.Open)
    //    {
    //        con.Open();
    //        SqlCommand cmd = new SqlCommand("DELETE FROM Add_Book WHERE ID = '' ;", con);
    //        cmd.ExecuteNonQuery();
    //        con.Close();
    //        Response.Redirect("DeleteBook.aspx");
    //    }
    //}
    protected void DeleteBookLV_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        con.Open();
        Label lb = e.Item.FindControl("bkid") as Label;
        //Response.Write("<script>alert('"+lb.Text+"')</script>");
        SqlCommand cmd = new SqlCommand("update Add_Book set isActive = 1 WHERE ID = "+lb.Text+" ", con);
        cmd.ExecuteNonQuery();
        deleteLV("select * from Add_Book where isActive = 0");
        
        con.Close();

    }
}