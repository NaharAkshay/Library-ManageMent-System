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
    protected void BtnUpdateRec_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("update Add_Suppliers SET Address = '" + Adres.Text + "', mobile = '" + mob.Text + "' ,Website = '" + web.Text + "' , Email = '" + eml.Text + "', AcName = '" + acnm.Text + "', AcNumber = '" + acnum.Text + "', IFSCCode = '" + ifscod.Text + "', BankName = '" + bnknm.Text + "', Remark = '" + rm.Text + "' WHERE SuppName= '" + upadtenmDD.SelectedItem.Text + "'", con);
        cmd.ExecuteNonQuery();
        con.Close();
    }

    protected void upadtenmDD_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (upadtenmDD.SelectedIndex <= 0)
        {
            
            Adres.Text = "";
            mob.Text = "";
            web.Text = "";
            eml.Text = "";
            acnm.Text = "";
            acnum.Text = "";
            ifscod .Text = "";
            bnknm.Text = "";
            rm.Text = "";
            return;
            
        }


        con.Open();
        SqlCommand com = new SqlCommand("select * from Add_suppliers where SuppName ='" + upadtenmDD.SelectedItem.Text + "'", con);
        SqlDataReader dr = com.ExecuteReader();

        if (dr.Read())
        {
            Adres.Text = dr[2].ToString();
            mob.Text = dr[3].ToString();
            web.Text = dr[4].ToString();
            eml.Text = dr[5].ToString();
            acnm.Text = dr[6].ToString();
            acnum.Text = dr[7].ToString();
            ifscod.Text = dr[8].ToString();
            bnknm.Text = dr[9].ToString();
            rm.Text = dr[10].ToString();

        }
        dr.Close();
        con.Close();
    }

    public void upsupp()
    {
        con.Open();
        SqlDataAdapter dr = new SqlDataAdapter("select Id=0,SuppName ='--Select--' union select Id,SuppName from Add_Suppliers", "server=.;database=MyLMS;user=sa;password=Ak11;");
        DataTable dt = new DataTable();
        dr.Fill(dt);
        upadtenmDD.DataTextField = "SuppName";
        upadtenmDD.DataValueField = "Id";
        upadtenmDD.DataSource = dt;
        upadtenmDD.DataBind();
        con.Close();
    }

}